LIBRARY IEEE;

USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY SWAP IS
	GENERIC(
		vsize : INTEGER := 12
	);

	PORT(
		xin, yin   : IN  std_logic_vector(vsize - 1 DOWNTO 0);
		xout, yout : OUT std_logic_vector(vsize - 1 DOWNTO 0);
		swapxy     : IN  std_logic
	);
end ENTITY SWAP;

ARCHITECTURE comb of SWAP IS
	signal x_tmp, y_tmp : std_logic_vector(vsize - 1 DOWNTO 0);
BEGIN
	p1 : process(swapxy, xin, yin)
	BEGIN
		case swapxy is
			when '0' =>
				x_tmp <= xin;
				y_tmp <= yin;
			when '1' =>
				x_tmp <= yin;
				y_tmp <= xin;
			when others =>
				x_tmp <= xin;
				y_tmp <= yin;
		end case;
	end process p1;
	yout <= y_tmp;
	xout <= x_tmp;
end ARCHITECTURE comb;

LIBRARY IEEE;

USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY INV IS
	GENERIC(
		vsize : INTEGER := 12
	);

	PORT(
		s_in  : IN  std_logic_vector(vsize - 1 DOWNTO 0);
		s_out : OUT std_logic_vector(vsize - 1 DOWNTO 0);
		neg   : IN  std_logic
	);
end ENTITY INV;

ARCHITECTURE comb of INV IS
	signal s_tmp : std_logic_vector(vsize - 1 DOWNTO 0);
BEGIN
	c1 : process(neg, s_in)
	BEGIN
		case neg is
			when '0' =>
				s_tmp <= std_logic_vector(s_in);
			when '1' =>
				s_tmp <= std_logic_vector(not (s_in));
			when others =>
				s_tmp <= std_logic_vector(s_in);
		end case;
	end process c1;
	s_out <= s_tmp;

end ARCHITECTURE comb;

LIBRARY IEEE;

USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;
USE work.ALL;

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
	signal x_swap1, y_swap1, x_inv1, y_inv1, x_swap2, y_swap2, x_inv2, y_inv2 : std_logic_vector(vsize - 1 DOWNTO 0);
	signal negx_lag, negy_lag, swap_lag, xbias_in                             : std_logic;

	component swap
		GENERIC(
			vsize : INTEGER := 12
		);
		PORT(
			xin, yin   : IN  std_logic_vector(vsize - 1 DOWNTO 0);
			xout, yout : OUT std_logic_vector(vsize - 1 DOWNTO 0);
			swapxy     : IN  std_logic
		);
	end component;

	component inv
		GENERIC(
			vsize : INTEGER := 12
		);

		PORT(
			s_in  : IN  std_logic_vector(vsize - 1 DOWNTO 0);
			s_out : OUT std_logic_vector(vsize - 1 DOWNTO 0);
			neg   : IN  std_logic
		);
	end component;

	component draw_octant
		GENERIC(
			vsize : INTEGER := 12
		);

		PORT(
			clk, init, draw, xbias, disable : IN  std_logic;
			xin, yin                        : IN  std_logic_vector(vsize - 1 DOWNTO 0);
			done                            : OUT std_logic;
			x, y                            : OUT std_logic_vector(vsize - 1 DOWNTO 0)
		);
	end component;
BEGIN
	xbias_in <= xbias xor swapxy;
	RD : process
	begin
		wait until clk'event and clk = '1';
		if disable = '0' then
			negx_lag <= std_logic(negx);
			negy_lag <= std_logic(negy);
			swap_lag <= std_logic(swapxy);
		else
			negx_lag <= '0';
			negy_lag <= '0';
			swap_lag <= '0';
		end if;
	end process RD;
	S1 : SWAP
		GENERIC map(vsize)
		port map(
			xin    => xin,
			yin    => yin,
			xout   => x_swap1,
			yout   => y_swap1,
			swapxy => swapxy
		);
	INV1 : INV
		GENERIC map(vsize)
		port map(
			s_in  => x_swap1,
			s_out => x_inv1,
			neg   => negx
		);
	INV2 : INV
		GENERIC map(vsize)
		port map(
			s_in  => y_swap1,
			s_out => y_inv1,
			neg   => negy
		);
	D1 : draw_octant
		GENERIC map(vsize)
		PORT map(
			clk     => clk,
			init    => init,
			draw    => draw,
			xbias   => xbias_in,
			disable => disable,
			xin     => x_inv1,
			yin     => y_inv1,
			done    => done,
			x       => x_inv2,
			y       => y_inv2
		);

	INV3 : INV
		GENERIC map(vsize)
		port map(
			s_in  => x_inv2,
			s_out => x_swap2,
			neg   => negx_lag
		);
	INV4 : INV
		GENERIC map(vsize)
		port map(
			s_in  => y_inv2,
			s_out => y_swap2,
			neg   => negy_lag
		);
	S2 : SWAP
		GENERIC map(vsize)
		port map(
			xin    => x_swap2,
			yin    => y_swap2,
			xout   => x,
			yout   => y,
			swapxy => swap_lag
		);

END ARCHITECTURE comb;

