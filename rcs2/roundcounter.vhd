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
use IEEE.NUMERIC_STD.ALL;

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
           ROUND : out  STD_LOGIC_VECTOR (3 downto 0);
			  sl : out  STD_LOGIC;
			  se : out  STD_LOGIC;
			  ca : out  STD_LOGIC);
end roundcounter;

architecture Behavioral of roundcounter is

type STATE_TYPE is (Sleep, Setup, Calc);
signal CURRENT_STATE : STATE_TYPE := Sleep;
signal NEXT_STATE : STATE_TYPE := Sleep;
signal s1,s2,c1 : std_logic := '0';

signal round_counter : std_logic_vector(3 downto 0) := "1000";

begin
--process changing round counter
process(CLK)
begin
    if rising_edge(CLK) then
        case round_counter is
            when "1000" =>
                if START = '1' then
                    round_counter <= "0000";
                end if;
                
            when others =>
                if RESULT = '1' then
                    round_counter <= std_logic_vector(unsigned(round_counter) + 1);
                end if;
        end case;
    end if;
end process;
--process state 
process(CLK)
begin
    if rising_edge(CLK) then

        CURRENT_STATE <= NEXT_STATE;
		  
		  case CURRENT_STATE is
				when Sleep =>
                INIT <= '0';
                READY <= '1';
					if START = '1' then
						NEXT_STATE <= Setup;
					else
						NEXT_STATE <= Sleep;
					end if;
					s1 <= '1';
					s2 <= '0';
					c1 <= '0';

				when Setup =>
                INIT <= '1';
                READY <= '0';
					 NEXT_STATE <= Calc;
					s1 <= '0';
					s2 <= '1';
					c1 <= '0';
					
				when Calc =>
                INIT <= '0';
                READY <= '0';
                if RESULT = '1' then
                    if round_counter = "1000" then
                        NEXT_STATE <= Sleep;
                    else
                        NEXT_STATE <= Setup;
                    end if;
                else
                    NEXT_STATE <= Calc;
                end if;
					s1 <= '0';
					s2 <= '0';
					c1 <= '1';					 
        end case;		
	end if;
end process;

process(round_counter)
begin

    TRAFO <= round_counter(3); 
    S_i <= '0';
    if round_counter = "0000" then
        S_i <= '1';
    end if;
end process;
		  
		  sl <= s1;
		  se <= s2;
    	  ca <= c1;
		  ROUND <= round_counter;
	
--	 process(CLK)
--		begin
--    if rising_edge(CLK) then
--	 	  
--        case CURRENT_STATE is
--            when Sleep =>
--                if START = '1' then
--                    INIT <= '1'; 
--                    NEXT_STATE <= Setup;
--                else
--                    INIT <= '0';
--                end if;		
--                READY <= '1'; 
--                round_counter <= "1000";
--					s1 <= '1';
--					s2 <= '0';
--					c1 <= '0';
--
--            when Setup =>
--                INIT <= '1'; 
--                NEXT_STATE <= Calc;
--                READY <= '0';
--					s1 <= '0';
--					s2 <= '1';
--					c1 <= '0';
--
--            when Calc =>
--                INIT <= '0'; 
--                if RESULT = '1' then
--                    if round_counter = "1000" then
--                        NEXT_STATE <= Sleep;
--                    else
--                        NEXT_STATE <= Setup;
--                    end if;
--                else
--                    NEXT_STATE <= Calc;
--                end if;
--                READY <= '0';
--					s1 <= '0';
--					s2 <= '0';
--					c1 <= '1';					 
--        end case;
--
--        if RESULT = '1' then
--            if round_counter = "1000" then
--                round_counter <= "0000";
--            else
--                round_counter <= std_logic_vector(unsigned(round_counter) + 1);
--            end if;
--        end if;
--		  
--		  CURRENT_STATE <= NEXT_STATE;
--		  
--		  sl <= s1;
--		  se <= s2;
--		  ca <= c1;
--
--		  ROUND <= round_counter;
--        TRAFO <= round_counter(3);
--        S_i <= '0';
--        if round_counter = "0000" then
--            S_i <= '1';
--        end if;
--    end if;		  
--  end process;
end Behavioral;

