--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   21:02:23 11/16/2023
-- Design Name:   
-- Module Name:   /home/ise/Xilinx/submission_template/submit/direct/tb_trafo.vhd
-- Project Name:  idea
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: trafo
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
 
ENTITY tb_trafo IS
END tb_trafo;
 
ARCHITECTURE behavior OF tb_trafo IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT trafo
    PORT(
         X1 : IN  std_logic_vector(15 downto 0):= (others => '0');
         X2 : IN  std_logic_vector(15 downto 0):= (others => '0');
         X3 : IN  std_logic_vector(15 downto 0):= (others => '0');
         X4 : IN  std_logic_vector(15 downto 0):= (others => '0');
         Z1 : IN  std_logic_vector(15 downto 0):= (others => '0');
         Z2 : IN  std_logic_vector(15 downto 0):= (others => '0');
         Z3 : IN  std_logic_vector(15 downto 0):= (others => '0');
         Z4 : IN  std_logic_vector(15 downto 0):= (others => '0');
         Y1 : out  std_logic_vector(15 downto 0);
         Y2 : out  std_logic_vector(15 downto 0);
         Y3 : out  std_logic_vector(15 downto 0);
         Y4 : out  std_logic_vector(15 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal X1 : std_logic_vector(15 downto 0) := (others => '0');
   signal X2 : std_logic_vector(15 downto 0) := (others => '0');
   signal X3 : std_logic_vector(15 downto 0) := (others => '0');
   signal X4 : std_logic_vector(15 downto 0) := (others => '0');
   signal Z1 : std_logic_vector(15 downto 0) := (others => '0');
   signal Z2 : std_logic_vector(15 downto 0) := (others => '0');
   signal Z3 : std_logic_vector(15 downto 0) := (others => '0');
   signal Z4 : std_logic_vector(15 downto 0) := (others => '0');
   signal Y1 : std_logic_vector(15 downto 0);
   signal Y2 : std_logic_vector(15 downto 0);
   signal Y3 : std_logic_vector(15 downto 0);
   signal Y4 : std_logic_vector(15 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   constant period : time := 10 us;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: trafo PORT MAP (
          X1 => X1,
          X2 => X2,
          X3 => X3,
          X4 => X4,
          Z1 => Z1,
          Z2 => Z2,
          Z3 => Z3,
          Z4 => Z4,
          Y1 => Y1,
          Y2 => Y2,
          Y3 => Y3,
          Y4 => Y4
        );

   -- Clock process definitions
   trafoprocess :process
   begin
		x1 <= x"0000";
		x2 <= x"0000";
		x3 <= x"0000";
		x4 <= x"0000";
		z1 <= x"0000";
		z2 <= x"0000";
		z3 <= x"0000";
		z4 <= x"0000";
		wait for period/2;
		x1 <= x"ffff";
		x2 <= x"0000";
		x3 <= x"0000";
		x4 <= x"0000";
		z1 <= x"0000";
		z2 <= x"0000";
		z3 <= x"0000";
		z4 <= x"0000";
		wait for period/2;
		x1 <= x"ffff";
		x2 <= x"aaaa";
		x3 <= x"0000";
		x4 <= x"0000";
		z1 <= x"0000";
		z2 <= x"0000";
		z3 <= x"0000";
		z4 <= x"0000";
		wait for period/2;
		x1 <= x"ffff";
		x2 <= x"aaaa";
		x3 <= x"5555";
		x4 <= x"0000";
		z1 <= x"0000";
		z2 <= x"0000";
		z3 <= x"0000";
		z4 <= x"0000";
		wait for period/2;
		x1 <= x"ffff";
		x2 <= x"aaaa";
		x3 <= x"5555";
		x4 <= x"2492";
		z1 <= x"0000";
		z2 <= x"0000";
		z3 <= x"0000";
		z4 <= x"0000";
		wait for period/2;
		x1 <= x"ffff";
		x2 <= x"aaaa";
		x3 <= x"5555";
		x4 <= x"2492";
		z1 <= x"db6d";
		z2 <= x"0000";
		z3 <= x"0000";
		z4 <= x"0000";
		wait for period/2;
		x1 <= x"ffff";
		x2 <= x"aaaa";
		x3 <= x"5555";
		x4 <= x"2492";
		z1 <= x"db6d";
		z2 <= x"1c71";
		z3 <= x"0000";
		z4 <= x"0000";
		wait for period/2;
		x1 <= x"ffff";
		x2 <= x"aaaa";
		x3 <= x"5555";
		x4 <= x"2492";
		z1 <= x"db6d";
		z2 <= x"1c71";
		z3 <= x"cccc";
		z4 <= x"0000";
		wait for period/2;
		x1 <= x"ffff";
		x2 <= x"aaaa";
		x3 <= x"5555";
		x4 <= x"2492";
		z1 <= x"db6d";
		z2 <= x"1c71";
		z3 <= x"cccc";
		z4 <= x"0002";
		wait;		
   end process;
 



END;
