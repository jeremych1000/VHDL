--Last edited by Dominic Kwok at 6/3/2016


library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.hdb_pak.all;
use work.all;


entity hdb is
port(
clk: in std_logic;
instruction: in std_logic_vector(15 downto 0);
dav: in std_logic;
delaycmd:in std_logic;
x_out: out std_logic_vector(5 downto 0);
y_out: out std_logic_vector(5 downto 0);
rcbcmd: out std_logic_vector(2 downto 0);
startcmd: out std_logic;
hdb_busy_out: out std_logic
);
end entity hdb;

architecture main of hdb is
alias lv is std_logic_vector;

--wire 
signal x_new: lv(5 downto 0);
signal y_new: lv(5 downto 0);
signal x_old: lv(5 downto 0);
signal y_old: lv(5 downto 0);
signal FSM_en:std_logic;

--draw_any_octant signal
signal swap:std_logic;
signal xbias:std_logic;
signal negx:std_logic;
signal negy:std_logic;
signal disable:std_logic;
signal diff_x: lv(6 downto 0);
signal diff_y: lv(6 downto 0);
signal x_in_draw:lv(5 downto 0);
signal y_in_draw:lv(5 downto 0);
signal x_out_draw:lv(5 downto 0);
signal y_out_draw:lv(5 downto 0);

--Register 
signal xynewReg: lv(11 downto 0);
signal xyoldReg: lv(11 downto 0);
signal penReg: hostpen_t;
signal opReg: hostop_t;
signal regEn: std_logic;

--FSM IO 
signal hdb_busy: std_logic;
signal draw_done: std_logic;
signal resetx: std_logic;
signal draw:std_logic;
signal SelDrawMux:std_logic;
signal SelOutMux:lv(1 downto 0);
signal draw_en:std_logic;

--FSM state
--state need to be expanded to include clear screen command
type state_t is (IDLE,DECODE,MOVE,DRAWDOT,DRAWLINE_startpt,DRAWLINE_endpt,DRAWLINE_wait,CLEAR);
signal state: state_t;
signal n_state: state_t;

begin

--wire 
hdb_busy_out <= hdb_busy;
regEn <= dav and (not hdb_busy) and (not delaycmd); 
x_new<=xynewReg(11 downto 6);
y_new <= xynewReg(5 downto 0);
x_old<=xyoldReg(11 downto 6);
y_old <= xyoldReg(5 downto 0);
FSM_en<= dav and (not delaycmd);

--rcbcmd combinational
HostCmd2RcbCmd: process(penReg,opReg)begin
case penReg is

when NotUsed => 
rcbcmd<="100";


when White => 
case opReg is
when MovePen=>
rcbcmd<="100";
when Drawline=>
rcbcmd<="001";
when ClearScreen=>
rcbcmd<="001";
when Unused=>
rcbcmd<="100";
when others=>
NULL;
end case;
when Black =>
case opReg is
when MovePen=>
rcbcmd<="100";
when Drawline=>
rcbcmd<="010";
when ClearScreen=>
rcbcmd<="010";
when Unused=>
rcbcmd<="100";
when others=>
NULL;
end case;
when Invert=>
case opReg is
when MovePen=>
rcbcmd<="100";
when Drawline=>
rcbcmd<="011";
when ClearScreen=>
rcbcmd<="011";
when Unused=>
rcbcmd<="100";
when others=>
NULL;
end case;
when others=>
NULL;
end case;
end process HostCmd2RcbCmd;

--register 
Reg: process begin
wait until clk'event and clk='1';
state<=n_state;
if regEn = '1'  then
xynewReg<=instruction(13 downto 2);
xyoldReg<=xynewReg;
penReg<=instruction(1 downto 0);
opReg<=instruction(15 downto 14);
end if;
end process Reg;


--draw_any_octant
DAO: entity draw_any_octant generic map(x_new'length)
port map(clk,resetx,draw,xbias,disable,x_in_draw,y_in_draw,draw_done,x_out_draw,y_out_draw,swap,negx,negy);

--draw_any_octant Input Mux
InMux: process(SelDrawMux,x_new,y_new,x_old,y_old)begin
if SelDrawMux ='0' then
x_in_draw<=x_old;
y_in_draw<=y_old;
else
x_in_draw<=x_new;
y_in_draw<=y_new;
end if;
end process InMux;

--Output Mux
OutMux: process(x_new,y_new,x_old,y_old,x_out_draw,y_out_draw,SelOutMux)begin
case SelOutMux is
when "00"|"11" =>
x_out<=x_old;
y_out<=y_old;
when "01"=>
x_out<=x_new;
y_out<=y_new;
when "10"=>
x_out<=x_out_draw;
y_out<=y_out_draw;
when others=>NULL;
end case;
end process OutMux;

--FSM combinational
FSMcomb:process(state,regEn,dav,delaycmd,draw_done,diff_x,diff_y)begin
--default FSM output
draw_en<='0';
draw<='0';
resetx<='0';
SelOutMux<="00";
SelDrawMux<='0';
hdb_busy<='1';
startcmd<='0';

case state is

when IDLE =>
hdb_busy<='0';
if FSM_en='1' then
n_state<=DECODE;
else
n_state<=IDLE;
end if;

when DECODE =>
	case opReg is
	when MovePen=>
		n_state<=MOVE;
	when DrawLine=>
		if (unsigned(x_new)=unsigned(x_old)) and (unsigned(y_new)=unsigned(y_old)) then
			n_state<=DRAWDOT;
		else
			n_state<=DRAWLINE_startpt;
		end if;
	when ClearScreen=>
		n_state<=CLEAR;
	when Unused=> NULL;
	when Others=>NULL;
	end case;

when MOVE =>
	SelOutMux<="01";
	startcmd<='0';
	if delaycmd='0' then
		n_state<= IDLE;
	else
		n_state<=MOVE;
	end if;

when DRAWDOT =>
	SelOutMux<="01";
	startcmd<='1';
	if delaycmd='0' then
		n_state<= IDLE;
	else
		n_state<=DRAWDOT;
	end if;


when DRAWLINE_startpt =>
	draw_en<='1';
	resetx<='1';
	SelOutMux<="10";
	startcmd<='1';
	if delaycmd='0' then
		n_state<= DRAWLINE_endpt;
	else
		n_state<=DRAWLINE_startpt;
	end if;	

when DRAWLINE_endpt =>
	draw_en<='1';
	draw<='1';
	SelOutMux<="10";
	SelDrawMux<='1';
	startcmd<='1';
	if delaycmd='0' then
		n_state<= DRAWLINE_wait;
	else
		n_state<=DRAWLINE_endpt;
	end if;	

when DRAWLINE_wait =>
	draw_en<='1';
	SelOutMux<="10";
	startcmd<='1';
	n_state<=IDLE;
	if (delaycmd ='1') or (draw_done ='0') then 
		n_state<= DRAWLINE_wait;
	end if;

when CLEAR=> 
startcmd<='1';
SelOutMux<="00";
if delaycmd='0' then

else
n_state<=CLEAR;
end if;

end case; 
end process FSMcomb;

--Octant_CMB
octantcomb:process(delaycmd,x_new,y_new,x_old,y_old,draw_en)begin
diff_x<=lv(signed(resize(unsigned(x_new),diff_x'length))-signed(resize(unsigned(x_old),diff_x'length)));
diff_y<=lv(signed(resize(unsigned(y_new),diff_y'length))-signed(resize(unsigned(y_old),diff_y'length)));

if delaycmd ='1' or draw_en='0' then
disable <= '1';
swap<='0';
negx<='0';
negy<='0';
xbias<='0';
else
disable<='0';
if diff_x(6) ='1' then
--dx<0
	if diff_y(6) ='1' then 
--dy<0
		if abs(signed(diff_y))>abs(signed(diff_x)) then
		--SSW
		negx<='1';
		negy<='1';
		swap<='1';
		xbias<='0';
		else
		--WSW
		negx<='1';
		negy<='1';
		swap<='0';
		xbias<='0';
		end if;
	else
--dy>0
		if abs(signed(diff_y))>abs(signed(diff_x)) then
		--NNW
		negx<='0';
		negy<='1';
		swap<='1';
		xbias<='0';
		else
		--WNW
		negx<='1';
		negy<='0';
		swap<='0';
		xbias<='0';
		end if;
	end if;
else
--dx>0
	if diff_y(6) ='1' then 
--dy<0
		if abs(signed(diff_y))>abs(signed(diff_x)) then
		--SSE
		negx<='1';
		negy<='0';
		swap<='1';
		xbias<='0';
		else
		--ESE
		negx<='0';
		negy<='1';
		swap<='0';
		xbias<='0';
		end if;
	else
--dy>0
		if abs(signed(diff_y))>abs(signed(diff_x)) then
		--NNE
		negx<='0';
		negy<='0';
		swap<='1';
		xbias<='0';
		else
		--ENE
		negx<='0';
		negy<='0';
		swap<='0';
		xbias<='0';
		end if;
	end if;
end if;
end if;
end process octantcomb;

end architecture main;