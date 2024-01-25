----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:     
-- Design Name: 
-- Module Name:    control - Behavioral 
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
use IEEE.NUMERIC_STD.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity control is
    Port ( CLK : in  STD_LOGIC;
           INIT : in  STD_LOGIC;
           TRAFO : in STD_LOGIC;
           EN125 : out  STD_LOGIC;
           EN346 : out  STD_LOGIC;
           EN78 : out  STD_LOGIC;
           RESULT : out  STD_LOGIC;
           S : out  STD_LOGIC_VECTOR(1 downto 0);
           S_T: out STD_LOGIC_VECTOR(1 downto 0));	
end control;

architecture Behavioral of control is

signal cin : STD_LOGIC_VECTOR(2 downto 0) :="111";

begin

	counter: process(CLK,TRAFO)
		begin
			if(rising_edge(CLK)) then
				if TRAFO = '0' then
					if(cin < "111") then
						cin <= cin + 1;
					else
						if(INIT = '1') then
							cin <= "000";
						else
							cin <= "111";
						end if;
					end if;
				else
				case cin is
					 when "000" | "001" | "010"  => -- all cases except "011" and "111"
						  cin <= cin + 1; -- increment cin
					 when "011" =>
					    cin <= "110"; -- Set to "110" directly, skipping "100" and "101"
                    when "110" =>
                        cin <= "111"; -- Following the progression, we set to "111" next					 
					 when "111" => 
						  if INIT = '1' then
								cin <= "000"; -- reset cin if INIT is high
						  else
								cin <= "111"; -- keep cin as "111" otherwise
						  end if;
					 when others => 
						  null; -- default case, no operation
				end case;
			end if;
		end if;
	end process;
												
		
	comb_logic: process(cin,TRAFO)
	begin
    if TRAFO = '0' then
        S_T <= "00";  -- ST is "00" for all cases when TRAFO is '0'
        case cin is
            when "000" =>
                EN125 <= '1';
                EN346 <= '0';
                EN78 <= '0';
                RESULT <= '0';
                S <= "00";
            when "001" =>
                EN125 <= '0';
                EN346 <= '0';
                EN78 <= '0';
                RESULT <= '0';                
                S <= "00";
            when "010" =>
                EN125 <= '0';
                EN346 <= '1';
                EN78 <= '0';
                RESULT <= '0';                
                S <= "01";
            when "011" =>
                EN125 <= '0';
                EN346 <= '0';
                EN78 <= '0';
                RESULT <= '0';                
                S <= "01";
            when "100" =>
                EN125 <= '0';
                EN346 <= '0';
                EN78 <= '1';
                RESULT <= '0';            
                S <= "10";
           when "101" =>
                EN125 <= '0';
                EN346 <= '0';
                EN78 <= '0';
                RESULT <= '0';                
                S <= "10";
            when "110" =>
                EN125 <= '0';
                EN346 <= '0';
                EN78 <= '0';            
                RESULT <= '1';
                S <= "11";
            when "111" =>
                EN125 <= '0';
                EN346 <= '0';
                EN78 <= '0';            
                RESULT <= '0';
                S <= "11"; -- Assuming RESULT and EN signals stay low for state "111"
            when others =>
                null;  -- No operation for other cases
        end case;
  -- Logic when TRAFO is '1'
    else
        case cin is
            when "000" =>
                S_T <= "01";
                S <= "00";
                EN125 <= '1';
                EN346 <= '0';
                EN78 <= '0';            
                RESULT <= '0';	
          when "001" =>
                S_T <= "01";
                S <= "00";
                EN125 <= '0';
                EN346 <= '0';
                EN78 <= '0';            
                RESULT <= '0';                
            when "010" =>
                S_T <= "00";
                S <= "01";
                EN125 <= '0';
                EN346 <= '1';
                EN78 <= '0';            
                RESULT <= '0';	
            when "011" =>
                S_T <= "00";
                S <= "01";
                EN125 <= '0';
                EN346 <= '0';
                EN78 <= '0';            
                RESULT <= '0';                
            when "110" =>
                S_T <= "10";
                S <= "11";
                EN125 <= '0';
                EN346 <= '0';
                EN78 <= '0';            
                RESULT <= '1';
            when "111" =>
                S_T <= "10";
                S <= "11"; 
                EN125 <= '0';
                EN346 <= '0';
                EN78 <= '0';            
                RESULT <= '0';                
            when others =>
                null;  -- No operation for other cases
        end case;
    end if;					 

		 
			 							
	end process;
end Behavioral;

