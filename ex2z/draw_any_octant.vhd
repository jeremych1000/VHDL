LIBRARY IEEE;

USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY my_swap IS
	GENERIC(
		vsize : INTEGER := 12
	);
	PORT(
		xin, yin   : IN  std_logic_vector(vsize - 1 DOWNTO 0);
		c          : IN  std_logic;
		xout, yout : OUT std_logic_vector(vsize - 1 DOWNTO 0)
	);
END ENTITY my_swap;

ARCHITECTURE behav OF my_swap IS
	SIGNAL xin_temp, yin_temp : std_logic_vector(vsize - 1 DOWNTO 0);
BEGIN
	PROCESS(xin, yin, c)
	BEGIN
		IF c = '1' THEN
			xin_temp <= yin;
			yin_temp <= xin;

		ELSE
			xin_temp <= xin;
			yin_temp <= yin;
		END IF;
	END PROCESS;
	xout <= xin_temp;
	yout <= yin_temp;
END ARCHITECTURE behav;
------------------------------
LIBRARY IEEE;

USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY my_inv IS
	GENERIC(
		vsize : INTEGER := 12
	);
	PORT(
		data_in  : IN  std_logic_vector(vsize - 1 DOWNTO 0);
		c        : IN  std_logic;
		data_out : OUT std_logic_vector(vsize - 1 DOWNTO 0)
	);
END ENTITY my_inv;

ARCHITECTURE behav OF my_inv IS
	signal data_out_temp : std_logic_vector(vsize - 1 DOWNTO 0);
BEGIN
	PROCESS(data_in, c)
	BEGIN
		IF c = '1' THEN
			data_out_temp <= NOT data_in;
		ELSE
			data_out_temp <= data_in;
		END IF;
	END PROCESS;
	data_out <= data_out_temp;
END ARCHITECTURE behav;
-------------------------------

LIBRARY IEEE;

USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY my_rd IS
	PORT(
		clk, disable, negx, negy, swapxy : IN  std_logic;
		negx_out, negy_out, swapxy_out   : OUT std_logic
	);
END my_rd;

ARCHITECTURE func of my_rd IS
	SIGNAL negx_out_temp, negy_out_temp, swapxy_out_temp : std_logic;
BEGIN
	PROCESS
	BEGIN
		WAIT UNTIL rising_edge(clk);
		IF disable = '0' THEN
			negx_out_temp   <= negx;
			negy_out_temp   <= negy;
			swapxy_out_temp <= swapxy;
		ELSE
			negx_out_temp   <= '0';
			negy_out_temp   <= '0';
			swapxy_out_temp <= '0';
		END IF;
	END PROCESS;
	negx_out   <= negx_out_temp;
	negy_out   <= negy_out_temp;
	swapxy_out <= swapxy_out_temp;
END ARCHITECTURE func;
-------------------------------

LIBRARY IEEE;

USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;
USE WORK.ALL;

-- changes 2016
-- resetx port renamed init for consistency with d-o port
-- disable port added

ENTITY draw_any_octant IS

	-- swapxy negx  negy  octant
	--  0      0      0     ENE
	--  1      0      0     NNE
	--  1      1      0     NNW
	--  0      1      0     WNW
	--  0      1      1     WSW
	--  1      1      1     SSW
	--  1      0      1     SSE
	--  0      0      1     ESE

	-- swapxy: x & y swap round on inputs & outputs
	-- negx:   invert bits of x on inputs & outputs
	-- negy:   invert bits of y on inputs & outputs

	-- xbias always give bias in x axis direction, so swapxy must invert xbias
	GENERIC(
		vsize : INTEGER := 12
	);

	PORT(
		clk, init, draw, xbias, disable : IN  std_logic;
		xin, yin                        : IN  std_logic_vector(vsize - 1 DOWNTO 0);
		done                            : OUT std_logic;
		x, y                            : OUT std_logic_vector(vsize - 1 DOWNTO 0);
		swapxy, negx, negy              : IN  std_logic
	);
END ENTITY draw_any_octant;

ARCHITECTURE comb OF draw_any_octant IS
	SIGNAL x_s1, y_s1, x_i1, y_i1, x_s2, y_s2, x_i2, y_i2 : std_logic_vector(vsize - 1 DOWNTO 0);
	SIGNAL xbias_in, negx_rd, negy_rd, swapxy_rd          : std_logic;

	COMPONENT my_swap
		GENERIC(
			vsize : INTEGER := 12
		);
		PORT(
			xin, yin   : IN  std_logic_vector(vsize - 1 DOWNTO 0);
			xout, yout : OUT std_logic_vector(vsize - 1 DOWNTO 0);
			c          : IN  std_logic
		);
	END COMPONENT;

	COMPONENT my_inv
		GENERIC(
			vsize : INTEGER := 12
		);
		PORT(
			data_in  : IN  std_logic_vector(vsize - 1 DOWNTO 0);
			data_out : OUT std_logic_vector(vsize - 1 DOWNTO 0);
			c        : IN  std_logic
		);
	END COMPONENT;

	COMPONENT my_rd
		PORT(
			clk, disable, negx, negy, swapxy : IN  std_logic;
			negx_out, negy_out, swapxy_out   : OUT std_logic
		);
	END COMPONENT;

	COMPONENT draw_octant
		GENERIC(
			vsize : INTEGER := 12
		);
		PORT(
			clk, init, draw, xbias, disable : IN  std_logic;
			xin, yin                        : IN  std_logic_vector(vsize - 1 DOWNTO 0);
			done                            : OUT std_logic;
			x, y                            : OUT std_logic_vector(vsize - 1 DOWNTO 0)
		);
	END COMPONENT;

BEGIN
	s1 : my_swap
		GENERIC MAP(vsize)
		PORT MAP(
			xin  => xin,
			yin  => yin,
			xout => x_s1,
			yout => y_s1,
			c    => swapxy
		);

	s2 : my_swap
		GENERIC MAP(vsize)
		PORT MAP(
			xin  => x_s2,
			yin  => y_s2,
			xout => x,
			yout => y,
			c    => swapxy_rd
		);

	i1 : my_inv
		GENERIC MAP(vsize)
		PORT MAP(
			data_in  => x_s1,
			data_out => x_i1,
			c        => negx
		);

	i2 : my_inv
		GENERIC MAP(vsize)
		PORT MAP(
			data_in  => y_s1,
			data_out => y_i1,
			c        => negy
		);

	i3 : my_inv
		GENERIC MAP(vsize)
		PORT MAP(
			data_in  => x_i2,
			data_out => x_s2,
			c        => negx_rd
		);

	i4 : my_inv
		GENERIC MAP(vsize)
		PORT MAP(
			data_in  => y_i2,
			data_out => y_s2,
			c        => negy_rd
		);

	rd1 : my_rd
		PORT MAP(
			clk        => clk,
			disable    => disable,
			negx       => negx,
			negy       => negy,
			swapxy     => swapxy,
			negx_out   => negx_rd,
			negy_out   => negy_rd,
			swapxy_out => swapxy_rd
		);

	xbias_in <= xbias XOR swapxy;
	d1 : draw_octant
		GENERIC MAP(vsize)
		PORT MAP(
			clk     => clk,
			init    => init,
			draw    => draw,
			xbias   => xbias_in,
			disable => disable,
			done    => done,
			xin     => x_i1,
			yin     => y_i1,
			x       => x_i2,
			y       => y_i2
		);

END ARCHITECTURE comb;