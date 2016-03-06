LIBRARY IEEE;

USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY draw_octant IS
  PORT(
    clk, init, draw, xbias,disable : IN   std_logic;
    xin, yin                 		 : IN   std_logic_vector(11 DOWNTO 0);
    done                       	     : OUT  std_logic;
    x, y                  		     : OUT  std_logic_vector(11 DOWNTO 0)
    );
END ENTITY draw_octant;

ARCHITECTURE comb OF draw_octant IS 

  SIGNAL done1                    :  std_logic;
  SIGNAL x1, y1                   :  std_logic_vector(11 DOWNTO 0);
  SIGNAL xincr, yincr, xnew, ynew :  std_logic_vector(11 DOWNTO 0);
  SIGNAL error                    :  std_logic_vector(12 DOWNTO 0);
  SIGNAL err1, err2               :  std_logic_vector(12 DOWNTO 0);

  ALIAS slv IS std_logic_vector;

BEGIN

C1 : PROCESS(error, xincr, yincr, x1, y1, xnew, ynew, init, draw)

VARIABLE err1_v, err2_v:std_logic_vector(12 DOWNTO 0);
BEGIN
		err1_v := slv(signed(error) + signed(resize(unsigned(yincr), 13))); --resize to bigger 13 bit number
		err2_v := slv(signed(error) + signed(resize(unsigned(yincr), 13)) - signed(resize(unsigned(xincr), 13)));
		
		IF (err1_v(err1_v'left)) = '1' THEN --check MSB, if negative, subtract from 0
			err1 <= slv(0-signed(err1_v));
		ELSE
			err1 <= slv(signed(err1_v));
		END IF;
			
		IF (err2_v(err2_v'left)) = '1' THEN --check MSB, if negative, subtract from 0
			err2 <= slv(0-signed(err2_v));
		ELSE
			err2 <= slv(signed(err2_v));
		END IF;
		
		IF (signed(x1)=signed(xnew) AND signed(y1)=signed(ynew) AND (init = '0') AND (draw = '0')) THEN
			done1 <= '1';
		ELSE 
			done1 <= '0';
		END IF;
		
END PROCESS C1;

R1 : PROCESS
BEGIN
		WAIT UNTIL clk'event AND clk = '1'; --registered process
		
		IF disable = '0' THEN
			IF init = '1' THEN
				error <= (OTHERS => '0');
				xincr <= (OTHERS => '0');
				yincr <= (OTHERS => '0');
				x1 <= xin;
				y1 <= yin;
				xnew <= xin;
				ynew <= yin;
			ELSIF (init = '0' AND draw = '1' ) THEN
				error <= (OTHERS => '0');
				xincr <= slv(unsigned(xin)-unsigned(x1));
				yincr <= slv(unsigned(yin)-unsigned(y1));
				xnew <= xin;
				ynew <= yin;
			ELSIF (init = '0' AND draw = '0' AND done1 = '0') THEN
				IF (unsigned(err1) = unsigned(err2)) THEN
					IF (xbias = '1') THEN
						error <= slv(signed(error) + signed(resize(unsigned(yincr), 13)));
						x1 <= slv(signed(x1)+1);
					ELSE --xbias = 0
						error <= slv(signed(error) + signed(resize(unsigned(yincr), 13)) - signed(resize(unsigned(xincr), 13)));
						x1 <= slv(signed(x1)+1);
						y1 <= slv(signed(y1)+1);
					END IF;
				ELSIF (unsigned(err1) < unsigned(err2)) THEN
					error <= slv(signed(error) + signed(resize(unsigned(yincr), 13)));
					x1 <= slv(signed(x1)+1);
				ELSE -- err1>err2
					error <= slv(signed(error) + signed(resize(unsigned(yincr), 13)) - signed(resize(unsigned(xincr), 13)));
					x1 <= slv(signed(x1)+1);
					y1 <= slv(signed(y1)+1);
				END IF;
			ELSE --handle all other cases where nothing changes
			END IF;
		END IF;
		
	END PROCESS R1;
	
	--set registered outputs
	done <= done1;
	x <= slv(unsigned(x1));
	y <= slv(unsigned(y1));
	
END ARCHITECTURE comb;

