----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:     
-- Design Name: 
-- Module Name:    mulop - Behavioral 
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
use IEEE.std_logic_unsigned.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity mulop is
    Port ( I1 : in  STD_LOGIC_VECTOR (15 downto 0);
           I2 : in  STD_LOGIC_VECTOR (15 downto 0);
           O : out  STD_LOGIC_VECTOR (15 downto 0));
end mulop;

architecture Behavioral of mulop is

signal num : STD_LOGIC_VECTOR (33 downto 0);
signal num1,num2 : STD_LOGIC_VECTOR (16 downto 0);
signal di: STD_LOGIC_VECTOR (16 downto 0);
signal mo: STD_LOGIC_VECTOR (15 downto 0);
signal ou :  STD_LOGIC_VECTOR (16 downto 0);

begin
	mulop: process(I1,I2,num1,num2,num) is
		begin
			num1 <= "0"& I1;
			num2 <= "0"& I2;
			If I1=x"0000" then
				num1 <= "10000000000000000";
			end if;
			If I2=x"0000" then
				num2 <= "10000000000000000";
			end if;
			num <= num1*num2;
			
			mo <= num(15 downto 0);
			di <= num(32 downto 16);
					
		end process;
		
	com: process(mo,di,ou) is
		begin
			if mo >= di then
				ou <= ("0"&mo)-di;
			else
				ou <= ("0"&mo)-di+"10000000000000001";
			end if;
			
		end process;
		
		
		
		O <= ou(15 downto 0);



end Behavioral;

