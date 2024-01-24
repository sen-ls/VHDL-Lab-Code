----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    03:31:46 11/19/2023 
-- Design Name: 
-- Module Name:    keygenerator - Behavioral 
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

entity keygenerator is
    Port ( KEY : in  STD_LOGIC_VECTOR(127 downto 0);
			  ROUND : in STD_LOGIC_VECTOR(3 downto 0);
			  k1 : out STD_LOGIC_VECTOR(15 downto 0);
			  k2 : out STD_LOGIC_VECTOR(15 downto 0);
			  k3 : out STD_LOGIC_VECTOR(15 downto 0);
			  k4 : out STD_LOGIC_VECTOR(15 downto 0);
			  k5 : out STD_LOGIC_VECTOR(15 downto 0);
			  k6 : out STD_LOGIC_VECTOR(15 downto 0));
end keygenerator;

architecture Behavioral of keygenerator is

signal new_key: STD_LOGIC_VECTOR(95 downto 0);

type key_s is array(0 to 5) of std_logic_vector(15 downto 0);
signal keys: key_s;

begin

		keygeneration: process(KEY, ROUND)
		variable num: integer range 0 to 5; 
			begin
					if ROUND = "0000" then
						new_key <= KEY(127 downto 32);
						for i in 0 to 5 loop
							keys(num) <= new_key((95 - i*16) downto (95-((i+1)*16-1)));
						end loop;
					elsif ROUND = "0001" then
						new_key <= KEY(31 downto 0) & KEY(102 downto 39);
						for i in 0 to 5 loop
							keys(num) <= new_key((95 - i*16) downto (95-((i+1)*16-1)));
						end loop;						
					elsif ROUND = "0010" then
						new_key <= KEY(38 downto 0) & KEY(127 downto 103) & KEY(77 downto 46);
						for i in 0 to 5 loop
							keys(num) <= new_key((95 - i*16) downto (95-((i+1)*16-1)));
						end loop;						
					elsif ROUND = "0011" then
						new_key <= KEY(45 downto 0) & KEY(127 downto 78);
						for i in 0 to 5 loop
							keys(num) <= new_key((95 - i*16) downto (95-((i+1)*16-1)));
						end loop;						
					elsif ROUND = "0100" then
						new_key <= KEY(52 downto 0) & KEY(127 downto 85);
						for i in 0 to 5 loop
							keys(num) <= new_key((95 - i*16) downto (95-((i+1)*16-1)));
						end loop;						
					elsif ROUND = "0101" then
						new_key <= KEY(84 downto 53) & KEY(27 downto 0) & KEY(127 downto 92);
						for i in 0 to 5 loop
							keys(num) <= new_key((95 - i*16) downto (95-((i+1)*16-1)));
						end loop;						
					elsif ROUND = "0110" then
						new_key <= KEY(91 downto 28) & KEY(2 downto 0) & KEY(127 downto 99);
						for i in 0 to 5 loop
							keys(num) <= new_key((95 - i*16) downto (95-((i+1)*16-1)));
						end loop;						
					elsif ROUND = "0111" then
						new_key <= KEY(98 downto 3);
						for i in 0 to 5 loop
							keys(num) <= new_key((95 - i*16) downto (95-((i+1)*16-1)));
						end loop;						
					elsif ROUND = "1000" then
						new_key <= KEY(105 downto 42) & x"00000000";
						for i in 0 to 5 loop
							keys(num) <= new_key((95 - i*16) downto (95-((i+1)*16-1)));
						end loop;						
					else	
						new_key <= x"000000000000000000000000";
				end if;
				

		end process;
		
		
		k1 <= new_key(95 downto 80); 
		k2 <= new_key(79 downto 64);
		k3 <= new_key(63 downto 48);
		k4 <= new_key(47 downto 32);
		k5 <= new_key(31 downto 16);
		k6 <= new_key(15 downto 0);


end Behavioral;

