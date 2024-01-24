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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity control is
    Port ( CLK : in  STD_LOGIC;
           START : in  STD_LOGIC;
           ROUND : out  STD_LOGIC_VECTOR (3 downto 0);
           READY : out  STD_LOGIC;
           EN : out  STD_LOGIC;
           S : out  STD_LOGIC);
end control;

architecture Behavioral of control is
type STATE_TYPE is range 0 to 9; 
signal next_state, current_state : STATE_TYPE;

function calculate_outputs(state: STATE_TYPE) return std_logic_vector is
	variable output_vector: std_logic_vector(6 downto 0);
begin
	case state is 
		when 0 => --init
			output_vector := "1000101";
		when 1 => --r1
			output_vector := "0000010";
		when 2 => --r2
			output_vector := "0001011";
		when 3 => --r3
			output_vector := "0010011";
		when 4 => --r4
			output_vector := "0011011";
		when 5 => --r5
			output_vector := "0100011";
		when 6 => --r6
			output_vector := "0101011";
		when 7 => --r7
			output_vector := "0110011";
		when 8 => --r8
			output_vector := "0111011";
		when 9 => --traf
			output_vector := "1000101";
		when others => --others
			output_vector := "XXXXXXX";			
	end case;
	return output_vector;
end function;
begin

	statechange: process(CLK)
		begin
			if rising_edge(CLK) then
				current_state <= next_state;
			end if;
	end process;

	allcase: process(current_state, START)
		variable output_vector : std_logic_vector(6 downto 0);
	begin
		output_vector := calculate_outputs(current_state);
		
		ROUND <= output_vector(6 downto 3);
		READY <= output_vector(2);
		EN <= output_vector(1);
		S <= output_vector(0);
		
		case current_state is
			when 0 =>
				if START = '1' then
					next_state <= 1;
				else
					next_state <= 0;
				end if;
			when 1 =>
				next_state <= 2;
			when 2 =>
				next_state <= 3;		
			when 3 =>
				next_state <= 4;
			when 4 =>
				next_state <= 5;				
			when 5 =>
				next_state <= 6;				
			when 6 =>
				next_state <= 7;
			when 7 =>
				next_state <= 8;
			when 8 =>
				next_state <= 9;
			when 9 =>
				next_state <= 0;
			when others =>
				next_state <= 0;
		end case;
	end process;	
end Behavioral;

