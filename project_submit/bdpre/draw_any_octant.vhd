LIBRARY IEEE;

USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;


PACKAGE dao IS
  
  TYPE xy IS (xcoord,ycoord);
  
  TYPE control IS
  RECORD
    swapxy, negx, negy: std_logic;
  END RECORD;
  
END PACKAGE dao;




LIBRARY IEEE;

USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;
USE WORK.dao.ALL;



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

  -- xbias always give nias in x axis direction, 
  -- so swapxy must invert xbias
  
  GENERIC(
	vsize1: INTEGER := 6
	);
	
  PORT(
    clk, resetx, draw, xbias, disable : IN  std_logic;
    xin, yin                : IN  std_logic_vector(vsize1-1 DOWNTO 0);
    done                    : OUT std_logic;
    x, y                    : OUT std_logic_vector(vsize1-1 DOWNTO 0);
    swapxy,negx,negy        : IN std_logic
    );
END ENTITY draw_any_octant;

ARCHITECTURE comb OF draw_any_octant IS

  SUBTYPE vvec IS std_logic_vector(vsize1-1 DOWNTO 0);

  TYPE xycoord IS ARRAY (xy) OF vvec;


  FUNCTION swap(z:xycoord; c: control) RETURN xycoord IS
  BEGIN
    IF c.swapxy = '1' THEN
      RETURN (z(ycoord), z(xcoord));
    ELSE
      RETURN z;
    END IF;
  END FUNCTION swap;

  FUNCTION inv(z: xycoord; c: control) RETURN xycoord IS
  BEGIN
    RETURN (z(xcoord) XOR vvec'(OTHERS=>c.negx), z(ycoord) XOR vvec'(OTHERS=>c.negy));
  END FUNCTION inv;
    

  SIGNAL xyin_i, xy_i: xycoord;
  SIGNAL xbias_i: std_logic;
  SIGNAL c, c_delayed: control;

BEGIN





  D_O: ENTITY  WORK.draw_octant
    GENERIC MAP(
      vsize => vsize1
    )
    PORT MAP (
      disable => disable,
      clk   => clk,
      init => resetx,
      draw  => draw,
      xbias => xbias_i,
      xin   => xyin_i(xcoord),
      yin   => xyin_i(ycoord),
      done  => done,
      x     => xy_i(xcoord),
      y     => xy_i(ycoord)
      );
  
  R1: PROCESS
  BEGIN
    WAIT UNTIL clk'EVENT and clk='1';
    c_delayed <= c;
  END PROCESS R1;
  
  xyin_i <= swap( inv((xin, yin), c), c);
  (x,y) <= inv( swap(xy_i, c_delayed), c_delayed);
  
  xbias_i <= xbias XOR swapxy;
  c <= (swapxy, negx, negy);

END ARCHITECTURE comb;
