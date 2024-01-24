----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:     
-- Design Name: 
-- Module Name:    idea_single - Structural 
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

--round, trafo, addop, xorop

entity idea_single is
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
end idea_single;

architecture Structural of idea_single is
	component round
	port(
			x1: in STD_LOGIC_VECTOR(15 downto 0);
			x2: in STD_LOGIC_VECTOR(15 downto 0);
			x3: in STD_LOGIC_VECTOR(15 downto 0);
			x4: in STD_LOGIC_VECTOR(15 downto 0);
			z1: in STD_LOGIC_VECTOR(15 downto 0);
			z2: in STD_LOGIC_VECTOR(15 downto 0);
			z3: in STD_LOGIC_VECTOR(15 downto 0);
			z4: in STD_LOGIC_VECTOR(15 downto 0);
			z5: in STD_LOGIC_VECTOR(15 downto 0);
			z6: in STD_LOGIC_VECTOR(15 downto 0);
			y1: out STD_LOGIC_VECTOR(15 downto 0);
			y2: out STD_LOGIC_VECTOR(15 downto 0);
			y3: out STD_LOGIC_VECTOR(15 downto 0);
			y4: out STD_LOGIC_VECTOR(15 downto 0));
	end component;	
	component trafo
	port(
			X1: in STD_LOGIC_VECTOR(15 downto 0);
			X2: in STD_LOGIC_VECTOR(15 downto 0);
			X3: in STD_LOGIC_VECTOR(15 downto 0);
			X4: in STD_LOGIC_VECTOR(15 downto 0);
			Z1: in STD_LOGIC_VECTOR(15 downto 0);
			Z2: in STD_LOGIC_VECTOR(15 downto 0);
			Z3: in STD_LOGIC_VECTOR(15 downto 0);
			Z4: in STD_LOGIC_VECTOR(15 downto 0);
			Y1: out STD_LOGIC_VECTOR(15 downto 0);
			Y2: out STD_LOGIC_VECTOR(15 downto 0);
			Y3: out STD_LOGIC_VECTOR(15 downto 0);
			Y4: out STD_LOGIC_VECTOR(15 downto 0));
	 end component;		
	 COMPONENT register16
    PORT(
         CLK : IN  std_logic;
         ENABLE : IN  std_logic;
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
	 COMPONENT keygenerator
    PORT(
         KEY : IN  std_logic_vector(127 downto 0);
         ROUND : IN  std_logic_vector(3 downto 0);
         k1 : OUT  std_logic_vector(15 downto 0);
         k2 : OUT  std_logic_vector(15 downto 0);
         k3 : OUT  std_logic_vector(15 downto 0);
         k4 : OUT  std_logic_vector(15 downto 0);
         k5 : OUT  std_logic_vector(15 downto 0);
         k6 : OUT  std_logic_vector(15 downto 0)
        );
    END COMPONENT;
	 COMPONENT control
    PORT(
         CLK : IN  std_logic;
         START : IN  std_logic;
         ROUND : OUT  std_logic_vector(3 downto 0);
         READY : OUT  std_logic;
         EN : OUT  std_logic;
         S : OUT  std_logic
        );
    END COMPONENT;

		signal reg1, reg2, reg3, reg4: std_logic_vector(15 downto 0);
		signal re1, re2, re3, re4: std_logic_vector(15 downto 0);
		signal ke1, ke2, ke3, ke4, ke5, ke6: std_logic_vector(15 downto 0);
		signal rey1, rey2, rey3, rey4: std_logic_vector(15 downto 0);
		signal en, S: std_logic;
		signal rou: std_logic_vector(3 downto 0);
begin
		mux1: mux2x1 port map (
			D0 => X_1,
			D1 => reg1,
			S => S,
			O => re1
			);
			
		mux2: mux2x1 port map (
			D0 => X_2,
			D1 => reg2,
			S => S,
			O => re2
			);

		mux3: mux2x1 port map (
			D0 => X_3,
			D1 => reg3,
			S => S,
			O => re3
			);
			
		mux4: mux2x1 port map (
			D0 => X_4,
			D1 => reg4,
			S => S,
			O => re4
			);
			
		oneround: round port map (
			x1 => re1,
			x2 => re2,
			x3 => re3,
			x4 => re4,
			z1 => ke1,
			z2 => ke2,
			z3 => ke3,
			z4 => ke4,
			z5 => ke5,
			z6 => ke6,
			y1 => rey1,
			y2 => rey2,
			y3 => rey3,
			y4 => rey4);
		
		regist1: register16 port map(
			CLK => CLOCK,
			ENABLE => en,
			D => rey1,
			Q => reg1);
			
		regist2: register16 port map(
			CLK => CLOCK,
			ENABLE => en,
			D => rey2,
			Q => reg2);
			
		regist3: register16 port map(
			CLK => CLOCK,
			ENABLE => en,
			D => rey3,
			Q => reg3);
			
		regist4: register16 port map(
			CLK => CLOCK,
			ENABLE => en,
			D => rey4,
			Q => reg4);
			
		traf: trafo port map(
			X1 => reg1,
			X2 => reg2,
			X3 => reg3,
			X4 => reg4,
			Z1 => ke1,
			Z2 => ke2,
			Z3 => ke3,
			Z4 => ke4,
			Y1 => Y_1,
			Y2 => Y_2,
			Y3 => Y_3,
			Y4 => Y_4);
			
	 contr: control port map(
		CLK => CLOCK,
		START => START,
		ROUND => rou,
		READY => READY,
		EN => en,
		S => S);
		
	keygen: keygenerator port map(
		KEY => KEY,
		ROUND => rou,
		k1 => ke1,
		k2 => ke2,
		k3 => ke3,
		k4 => ke4,
		k5 => ke5,
		k6 => ke6);
			
		
			
end Structural;

