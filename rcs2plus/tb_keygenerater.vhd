--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   20:39:43 12/12/2023
-- Design Name:   
-- Module Name:   /home/ise/Xilinx/submission_template/submit/selected_files_2023128_16849/rcs1/tb_keygenerater.vhd
-- Project Name:  idea_rcs1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: keygenerator
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
 
ENTITY tb_keygenerater IS
END tb_keygenerater;
 
ARCHITECTURE behavior OF tb_keygenerater IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT keygenerator
    PORT(
         KEY : IN  std_logic_vector(127 downto 0);
         ROUND : IN  std_logic_vector(3 downto 0);
         k1 : OUT  std_logic_vector(15 downto 0);
         k2 : OUT  std_logic_vector(15 downto 0);
         k3 : OUT  std_logic_vector(15 downto 0);
         k4 : OUT  std_logic_vector(15 downto 0);
         k5 : OUT  std_logic_vector(15 downto 0);
         k6 : OUT  std_logic_vector(15 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal KEY : std_logic_vector(127 downto 0) := (others => '0');
   signal ROUND : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal k1 : std_logic_vector(15 downto 0);
   signal k2 : std_logic_vector(15 downto 0);
   signal k3 : std_logic_vector(15 downto 0);
   signal k4 : std_logic_vector(15 downto 0);
   signal k5 : std_logic_vector(15 downto 0);
   signal k6 : std_logic_vector(15 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   constant c_period : time := 10 ns;
	signal c: std_logic;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: keygenerator PORT MAP (
          KEY => KEY,
          ROUND => ROUND,
          k1 => k1,
          k2 => k2,
          k3 => k3,
          k4 => k4,
          k5 => k5,
          k6 => k6
        );

   -- Clock process definitions
   process
   begin
		c <= '0';
		wait for c_period/2;
		c <= '1';
		wait for c_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
		ROUND <= "0000";
		KEY <= x"00010002000300040005000600070008";	
      wait for c_period;
		ROUND <= "0001";
      wait for 100 ns;	
		
		ROUND <= "0010";
      wait for 100 ns;	
		
		ROUND <= "0011";
      wait for 100 ns;	

		ROUND <= "0100";
      wait for 100 ns;			
		
		ROUND <= "0101";
      wait for 100 ns;
		
		ROUND <= "0110";
      wait for 100 ns;
		
		ROUND <= "0111";
      wait for 100 ns;

		ROUND <= "1000";
      wait for 100 ns;
      -- insert stimulus here 

   end process;

END;
