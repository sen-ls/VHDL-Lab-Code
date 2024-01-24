----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:31:12 11/16/2023 
-- Design Name: 
-- Module Name:    trafo - Behavioral 
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

entity trafo is
    Port ( 
			  X1 : in std_logic_vector(15 downto 0);
           X2 : in std_logic_vector(15 downto 0);
           X3 : in std_logic_vector(15 downto 0);
           X4 : in std_logic_vector(15 downto 0);
           Z1 : in std_logic_vector(15 downto 0);
           Z2 : in std_logic_vector(15 downto 0);
           Z3 : in std_logic_vector(15 downto 0);
           Z4 : in std_logic_vector(15 downto 0);
           Y1 : out std_logic_vector(15 downto 0);
           Y2 : out std_logic_vector(15 downto 0);
           Y3 : out std_logic_vector(15 downto 0);
           Y4 : out std_logic_vector(15 downto 0));
end trafo;

architecture Behavioral of trafo is

	component addop
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
begin
	
	y_1: mulop port map (
		I1 => X1,
		I2 => Z1,
		O => Y1
		);
		
	y_2: addop port map (
		I1 => X3,
		I2 => Z2,
		O => Y2
		);
		
	y_3: addop port map (
		I1 => X2,
		I2 => Z3,
		O => Y3
		);

	y_4: mulop port map (
		I1 => X4,
		I2 => Z4,
		O => Y4
		);

end Behavioral;

