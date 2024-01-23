----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:     
-- Design Name: 
-- Module Name:    idea_rcs2 - Structural 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity idea_rcs2 is
    Port ( CLOCK : in  STD_LOGIC;
           START : in  STD_LOGIC;
           KEY : in  STD_LOGIC_VECTOR (127 downto 0);
           X_1 : in  STD_LOGIC_VECTOR (15 downto 0);
           X_2 : in  STD_LOGIC_VECTOR (15 downto 0);
           X_3 : in  STD_LOGIC_VECTOR (15 downto 0);
           X_4 : in  STD_LOGIC_VECTOR (15 downto 0);
           Y_1 : out  STD_LOGIC_VECTOR (15 downto 0);
           Y_2 : out  STD_LOGIC_VECTOR (15 downto 0);
           Y_3 : out  STD_LOGIC_VECTOR (15 downto 0);
           Y_4 : out  STD_LOGIC_VECTOR (15 downto 0);
           READY : out  STD_LOGIC);
end idea_rcs2;

architecture Structural of idea_rcs2 is

    COMPONENT register16
    PORT(
         CLK : IN  std_logic;
         EN : IN  std_logic;
         D : IN  std_logic_vector(15 downto 0);
         Q : OUT  std_logic_vector(15 downto 0)
        );
    END COMPONENT;
	 
    COMPONENT mux2x1
    PORT(
         D0 : IN  std_logic_vector(15 downto 0);
         D1 : IN  std_logic_vector(15 downto 0);
         S : IN  std_logic;
         O : OUT  std_logic_vector(15 downto 0)
        );
    END COMPONENT;
	 
	 COMPONENT clockedround
    PORT(
         CLK : IN  std_logic;
         INIT : IN  std_logic;
         TRAFO : IN  std_logic;
         X1 : IN  std_logic_vector(15 downto 0);
         X2 : IN  std_logic_vector(15 downto 0);
         X3 : IN  std_logic_vector(15 downto 0);
         X4 : IN  std_logic_vector(15 downto 0);
         Z1 : IN  std_logic_vector(15 downto 0);
         Z2 : IN  std_logic_vector(15 downto 0);
         Z3 : IN  std_logic_vector(15 downto 0);
         Z4 : IN  std_logic_vector(15 downto 0);
         Z5 : IN  std_logic_vector(15 downto 0);
         Z6 : IN  std_logic_vector(15 downto 0);
         Y1 : OUT  std_logic_vector(15 downto 0);
         Y2 : OUT  std_logic_vector(15 downto 0);
         Y3 : OUT  std_logic_vector(15 downto 0);
         Y4 : OUT  std_logic_vector(15 downto 0);
         RESULT : OUT  std_logic;
         Y1_TRAFO : OUT  std_logic_vector(15 downto 0);
         Y2_TRAFO : OUT  std_logic_vector(15 downto 0);
         Y3_TRAFO : OUT  std_logic_vector(15 downto 0);
         Y4_TRAFO : OUT  std_logic_vector(15 downto 0)
        );
    END COMPONENT;

	COMPONENT keygenerator
	PORT(
			  KEY : in  STD_LOGIC_VECTOR(127 downto 0);
			  ROUND : in STD_LOGIC_VECTOR(3 downto 0);
			  k1 : out STD_LOGIC_VECTOR(15 downto 0);
			  k2 : out STD_LOGIC_VECTOR(15 downto 0);
			  k3 : out STD_LOGIC_VECTOR(15 downto 0);
			  k4 : out STD_LOGIC_VECTOR(15 downto 0);
			  k5 : out STD_LOGIC_VECTOR(15 downto 0);
			  k6 : out STD_LOGIC_VECTOR(15 downto 0)
				);
	END COMPONENT;
	
	 COMPONENT roundcounter
    PORT(
         CLK : IN  std_logic;
         START : IN  std_logic;
         RESULT : IN  std_logic;
         READY : OUT  std_logic;
         S_i : OUT  std_logic;
         INIT : OUT  std_logic;
         TRAFO : OUT  std_logic;
         ROUND : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
-- All the 2 Multi
signal Mux1, Mux2, Mux3, Mux4 : STD_LOGIC_VECTOR (15 downto 0);
-- For the register
signal Ro1, Ro2, Ro3, Ro4 : STD_LOGIC_VECTOR (15 downto 0);
signal Ry1, Ry2, Ry3, Ry4 : STD_LOGIC_VECTOR (15 downto 0);
-- For the key generator
signal ke1, ke2, ke3, ke4, ke5, ke6: STD_LOGIC_VECTOR (15 downto 0);
-- Others
signal Rou: STD_LOGIC_VECTOR (3 downto 0);
signal S1: STD_LOGIC;
Signal Tra: STD_LOGIC;
Signal Ini: STD_LOGIC;
Signal Res: STD_LOGIC;


begin

	mu1: mux2x1 PORT MAP(
		D0 => Ro1,
		D1 => X_1,
		S => S1,
		O => Mux1);
		
	mu2: mux2x1 PORT MAP(
		D0 => Ro2,
		D1 => X_2,
		S => S1,
		O => Mux2);

	mu3: mux2x1 PORT MAP(
		D0 => Ro3,
		D1 => X_3,
		S => S1,
		O => Mux3);

	mu4: mux2x1 PORT MAP(
		D0 => Ro4,
		D1 => X_4,
		S => S1,
		O => Mux4);

	Re1: register16 PORT MAP(
		CLK => CLOCK,
		EN => Res,
		D => Ry1,
		Q => Ro1);
		
	Re2: register16 PORT MAP(
		CLK => CLOCK,
		EN => Res,
		D => Ry2,
		Q => Ro2);
		
	Re3: register16 PORT MAP(
		CLK => CLOCK,
		EN => Res,
		D => Ry3,
		Q => Ro3);
		
	Re4: register16 PORT MAP(
		CLK => CLOCK,
		EN => Res,
		D => Ry4,
		Q => Ro4);
		
	keyge: keygenerator PORT MAP(
		ROUND => Rou,
		KEY => KEY,
		k1 => ke1,
		k2 => ke2,
		k3 => ke3,
		k4 => ke4,
		k5 => ke5,
		k6 => ke6);
		
	clockrou: clockedround PORT MAP(
		CLK => CLOCK,
		TRAFO => Tra,
		INIT => Ini,
		X1 => Mux1,
		X2 => Mux2,
		X3 => Mux3,
		X4 => Mux4,
		Z1 => ke1,
		Z2 => ke2,
		Z3 => ke3,
		Z4 => ke4,
		Z5 => ke5,
		Z6 => ke6,
		Y1 => Ry1,
		Y2 => Ry2,
		Y3 => Ry3,
		Y4 => Ry4,
		RESULT => Res,
		Y1_TRAFO => Y_1,
		Y2_TRAFO => Y_2,
		Y3_TRAFO => Y_3,
		Y4_TRAFO => Y_4);
		
	roucou: roundcounter PORT MAP(
		CLK => CLOCK,
		START => START,
		RESULT => Res,
		READY => READY,
		S_i => S1,
		INIT => Ini,
		TRAFO => Tra,
		ROUND => Rou);


end Structural;

