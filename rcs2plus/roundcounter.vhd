----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:     
-- Design Name: 
-- Module Name:    roundcounter - Behavioral 
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
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity roundcounter is
    Port ( CLK : in  STD_LOGIC;
           START : in  STD_LOGIC;
           RESULT : in  STD_LOGIC;
           READY : out  STD_LOGIC;
           S_i : out  STD_LOGIC;
           INIT : out  STD_LOGIC;
           TRAFO : out  STD_LOGIC;
           ROUND : out  STD_LOGIC_VECTOR (3 downto 0));
end roundcounter;

architecture Behavioral of roundcounter is

type STATE_TYPE is (sleep, setup, calc);
signal CURRENT_STATE, NEXT_STATE:STATE_TYPE:=sleep;
signal cin : std_logic_vector(3 downto 0) :="1000"; 

begin

round_internal_state: process(CLK)
	begin
			if(rising_edge(CLK)) then
				case cin is
					when "0000"|"0001"|"0010"|"0011"|"0100"|"0101"|"0110"|"0111" =>
						if(RESULT = '1') then
							cin <= cin + 1;
						else
							cin <= cin;
						end if;
						
					when "1000" =>
						if(START = '1') then
							cin <= "0000";
						else
							cin <= "1000";
						end if;
					when others =>
					end case;
				CURRENT_STATE <= NEXT_STATE;
			end if;		
	end process;
	
	

comb_logic: process(CURRENT_STATE, START, RESULT, cin)
	begin
		case CURRENT_STATE is
			when sleep =>
				INIT <='0';
				READY <= '1';
				if (START = '1') then
					NEXT_STATE <= setup;
				else
					NEXT_STATE <= sleep;
				end if;
				
			when setup =>
				INIT <= '1';
				READY <= '0';	
				NEXT_STATE <= calc;
				
			when calc =>
				INIT <= '0';
				READY <= '0';
				case cin is
					when "1000" =>
						if (RESULT = '1') then
							NEXT_STATE <= sleep;
						else
							NEXT_STATE <= calc;
						end if;
					when others =>
						if (RESULT = '1') then
							NEXT_STATE <= setup;
						else
							NEXT_STATE <= calc;
						end if;
				end case;						
		end case;
		
		S_i <= '0';
		if (cin = "0000") then
			S_I <= '1';
		end if;
				
	end process;
	
	TRAFO <= cin(3);
	ROUND <= cin;	
	
	
end Behavioral;