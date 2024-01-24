----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:24:15 12/07/2023 
-- Design Name: 
-- Module Name:    register - Behavioral 
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

entity register is
		port(
			clk: in STD_LOGIC;
			ENABLE: in STD_LOGIC;
			D: in STD_LOGIC;
			Q: out STD_LOGIC;
		);
end register;

architecture Behavioral of register is

begin
	reg: process (clk, D, ENABLE)
		begin
			if (clk='1' and clk'EVENT) then
				if (ENABLE='1') then
					Q <= D;
				end if;
			end if;
	end process;


end Behavioral;

