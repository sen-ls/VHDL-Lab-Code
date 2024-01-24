--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   14:47:30 11/15/2023
-- Design Name:   
-- Module Name:   /home/ise/Xilinx/submission_template/submit/direct/td_addop.vhd
-- Project Name:  idea
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: addop
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY td_addop IS
END td_addop;
 
ARCHITECTURE behavior OF td_addop IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT addop
    PORT(
         I1 : IN  std_logic_vector(15 downto 0);
         I2 : IN  std_logic_vector(15 downto 0);
         O : OUT  std_logic_vector(15 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal I1 : std_logic_vector(15 downto 0) := (others => '0');
   signal I2 : std_logic_vector(15 downto 0) := (others => '0');

 	--Outputs
   signal O : std_logic_vector(15 downto 0);
	
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   constant period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: addop PORT MAP (
          I1 => I1,
          I2 => I2,
          O => O
        );

   -- Clock process definitions
   addprocess :process
   begin
		I1 <= x"0000";
		I2 <= x"0000";
		wait for period/2;
		I1 <= x"7ce3";
		I2 <= x"0000";
		wait for period/2;
		I1 <= x"7ce3";
		I2 <= x"2db6";
		wait for period/2;
		I1 <= x"fce3";
		I2 <= x"2db6";
		wait for period/2;
		I1 <= x"fce3";
		I2 <= x"2db6";
		wait for period/2;
		I1 <= x"fce3";
		I2 <= x"edb6";
		wait for period/2;
		I1 <= x"7ce3";
		I2 <= x"edb6";
		wait;
   end process;
 


END;
