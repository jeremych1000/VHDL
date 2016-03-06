library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.fixed_float_types.all;
use work.fixed_pkg.all;
use work.float_pkg.all;

entity cosine is
	port(
		clk    : in  std_logic;
		radian : in  std_logic_vector(31 downto 0);
		result : out std_logic_vector(31 downto 0)
	);

end entity;

architecture main of cosine is
	type pipe is array (0 to 30) of float32;
	type D_type is array (0 to 30) of std_logic;
	type int_array is array (1 to 31) of natural;
	constant PI    : float32 := to_float(3.141592587);
	constant PIx2  : float32 := to_float(6.28318530718);
	constant K     : float32 := to_float(1.646760258121);
	constant pow2  : int_array := (
			1
			,2
			,4
			,8
			,16
			,32
			,64
			,128
			,256
			,512
			,1024
			,2048
			,4096
			,8192
			,16384
			,32768
			,65536
			,131072
			,262144
			,524288
			,1048576
			,2097152
			,4194304
			,8388608
			,16777216
			,33554432
			,67108864
			,134217728
			,268435456
			,536870912
			,1073741824
	);
	constant table : pipe    := (
		to_float(45),
		to_float(26.5650511770780),
		to_float(14.0362434679265),
		to_float(7.12501634890180),
		to_float(3.57633437499735),
		to_float(1.78991060824607),
		to_float(0.895173710211074),
		to_float(0.447614170860553),
		to_float(0.223810500368538),
		to_float(0.111905677066207),
		to_float(0.0559528918938037),
		to_float(0.0279764526170037),
		to_float(0.0139882271422650),
		to_float(0.00699411367535292),
		to_float(0.00349705685070401),
		to_float(0.00174852842698045),
		to_float(0.000874264213693780),
		to_float(0.000437132106872335),
		to_float(0.000218566053439348),
		to_float(0.000109283026720072),
		to_float(0.0000546415133600854),
		to_float(0.0000273207566800489),
		to_float(0.0000136603783400252),
		to_float(0.00000683018917001272),
		to_float(0.00000341509458500637),
		to_float(0.00000170754729250319),
		to_float(0.000000853773646251594),
		to_float(0.000000426886823125797),
		to_float(0.000000213443411562898),
		to_float(0.000000106721705781449),
		to_float(0.0000000533608528907246)
	);

	signal x, y, z : pipe;
	signal degree  : float32;
	signal d       : D_type;

	signal tmp : float32;
begin
	tmp <= (to_float(signed(radian)) mod PIx2) * to_float(180) / PI;
	absolute : process(tmp)
	begin
		if to_integer(tmp) > 180 then
			degree <= tmp - to_float(180);
		elsif to_integer(tmp) < -180 then
			degree <= tmp + to_float(180);
		else
			degree <= tmp;
		end if;
	end process absolute;

	iteration : process
	begin
		wait until rising_edge(clk);
		if ((to_integer(degree) > 90) AND (to_integer(degree) < 180)) then
			x(0) <= to_float(0);
			y(0) <= to_float(1);
			z(0) <= degree - to_float(90);
		elsif ((to_integer(degree) < -90) and (to_integer(degree) > -180)) then
			x(0) <= to_float(0);
			y(0) <= to_float(-1);
			z(0) <= degree + to_float(90);
		else
			x(0) <= to_float(1);
			y(0) <= to_float(0);
			z(0) <= degree;
		end if;
		for index in 1 to 30 loop
			d(index - 1) <= z(index - 1)(8);
			if d(index - 1) = '1' then
				z(index) <= z(index - 1) + table(index-1);
				x(index) <= x(index - 1) + dividebyp2(y(index - 1), to_float(pow2(index)));
				y(index) <= y(index - 1) - dividebyp2(x(index - 1), to_float(pow2(index)));
			else
				z(index) <= z(index - 1) - table(index-1);
				x(index) <= x(index - 1) - dividebyp2(y(index - 1), to_float(pow2(index)));
				y(index) <= y(index - 1) + dividebyp2(x(index - 1), to_float(pow2(index)));
			end if;
		end loop;
	end process iteration;

	result <= to_slv(x(30) / K);
end architecture main;