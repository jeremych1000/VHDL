library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity draw_rect is 
port(
clk: in std_logic;
resetx: in std_logic;
draw: in std_logic;
disable:in std_logic;
x_in: in std_logic_vector(5 downto 0);
y_in :in std_logic_vector(5 downto 0);
x_out: out std_logic_vector(5 downto 0);
y_out :out std_logic_vector(5 downto 0);
done:out std_logic

);
end entity draw_rect;

architecture main of draw_rect is
signal start_x:std_logic_vector(5 downto 0);
signal start_y:std_logic_vector(5 downto 0);
signal end_x:std_logic_vector(5 downto 0);
signal end_y:std_logic_vector(5 downto 0);
signal tmp_x :std_logic_vector(5 downto 0);
signal tmp_y :std_logic_vector(5 downto 0);
signal count_dy:std_logic_vector(6 downto 0);
signal count_dx:std_logic_vector(6 downto 0);
type state_t is (idle,get_end,loop_y,loop_x);
signal state :state_t;
begin
diff: process (tmp_x,tmp_y)begin
count_dx<=std_logic_vector(signed(resize(unsigned(end_x),7))-signed(resize(unsigned(tmp_x),7)));
count_dy<=std_logic_vector(signed(resize(unsigned(end_y),7))-signed(resize(unsigned(tmp_y),7)));
end process diff;
looping:process begin
wait until clk'event and clk='1';
if disable ='0' then
case state is
when idle=>
if resetx= '1' then
state<=get_end;
start_x<=x_in;
start_y<=y_in;
end if;
when get_end=>
if(draw='1')then
end_x<=x_in;
end_y<=y_in;
tmp_x<=start_x;
tmp_y<=start_y;
state<=loop_x;
end if;
when loop_x=>
if to_integer(signed(count_dx)) /= 0 then
state<=loop_x;
tmp_x<=std_logic_vector(unsigned(tmp_x)+1);
else
tmp_y<=std_logic_vector(unsigned(tmp_y)+1);
tmp_x<=start_x;
state<=loop_y;
end if;
when loop_y=>
if  to_integer(signed(count_dy))<0 then
state<=idle;
else
state<=loop_x;
tmp_x<=std_logic_vector(unsigned(tmp_x)+1);
end if;
end case;
end if;

end process looping;

FSMcomb: process(count_dx,count_dy)begin
if to_integer(signed(count_dy)) = 0 and to_integer(signed(count_dx))=0 then
done<='1';
else
done<='0';
end if;
end process FSMcomb;
x_out<=tmp_x;
y_out<=tmp_y;
end architecture main;