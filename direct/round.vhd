----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:14:36 11/15/2023 
-- Design Name: 
-- Module Name:    round - Behavioral 
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

entity round is
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
end round;

architecture Behavioral of round is

	component addop
    port(
         I1 : IN  std_logic_vector(15 downto 0);
         I2 : IN  std_logic_vector(15 downto 0);
         O : OUT  std_logic_vector(15 downto 0)
        );
    end component;
	 
	component xorop
    port(
         I1 : IN  std_logic_vector(15 downto 0);
         I2 : IN  std_logic_vector(15 downto 0);
         O : OUT  std_logic_vector(15 downto 0)
        );
    end component;
	 
	component mulop
    port(
         I1 : IN  std_logic_vector(15 downto 0);
         I2 : IN  std_logic_vector(15 downto 0);
         O : OUT  std_logic_vector(15 downto 0)
        );
    end component;
	 
	signal p1, p2, p3, p4, p5, p6, p7, p8, p9, p10 : std_logic_vector(15 downto 0);		 	 
begin
	n1: mulop port map (
		--1
		I1 => x1,
		I2 => z1,
		O => p1
		);
		
	n2: addop port map (
		--1
		I1 => x2,
		I2 => z2,
		O => p2
		);	
		
	n3: addop port map (
	--1
		I1 => x3,
		I2 => z3,
		O => p3
		);	
		
	n4: mulop port map (
	--1
		I1 => x4,
		I2 => z4,
		O => p4
		);	
		
	n5: xorop port map (
	--1
		I1 => p1,
		I2 => p3,
		O => p5
		);

	n6: xorop port map (
	--1
		I1 => p2,
		I2 => p4,
		O => p6
		);	

	n7: mulop port map (
	--1
		I1 => p5,
		I2 => z5,
		O => p7
		);

	n8: addop port map (
	--1
		I1 => p6,
		I2 => p7,
		O => p8
		);

	n9: mulop port map (
	--1
		I1 => p8,
		I2 => z6,
		O => p9
		);
		
	n10: addop port map (
	--1
		I1 => p7,
		I2 => p9,
		O => p10
		);

	o1: xorop port map (
	--1
		I1 => p1,
		I2 => p9,
		O => y1
		);

	o2: xorop port map (
	--1
		I1 => p3,
		I2 => p9,
		O => y2
		);

	o3: xorop port map (
	--1
		I1 => p2,
		I2 => p10,
		O => y3
		);

	o4: xorop port map (
	--1
		I1 => p4,
		I2 => p10,
		O => y4
		);			
		

end Behavioral;

