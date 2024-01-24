--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   20:04:53 11/15/2023
-- Design Name:   
-- Module Name:   /home/ise/Xilinx/submission_template/submit/direct/tb_mulop.vhd
-- Project Name:  idea
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: mulop
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
 
ENTITY tb_mulop IS
END tb_mulop;
 
ARCHITECTURE behavior OF tb_mulop IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT mulop
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
	signal I: std_logic := '0';
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   constant period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: mulop PORT MAP (
          I1 => I1,
          I2 => I2,
          O => O
        );

   -- Clock process definitions
   mulprocess :process
   begin
	
		I1<= x"0000";
		I2<= x"0000";
		if (O=x"0001") then
			I <= '1';
		else
			I <= '0';
		end if;		
		wait for period/2;
		I1<= x"0001";
		I2<= x"0000";
		if (O=x"0000") then
			I <= '1';
		else
			I <= '0';
		end if;		
		
		wait for period/2;
		I1<= x"0001";
		I2<= x"0001";
		if (O=x"0001") then
			I <= '1';
		else
			I <= '0';
		end if;		
		wait for period/2;
		I1<= x"0003";
		I2<= x"0001";
		if (O=x"0003") then
			I <= '1';
		else
			I <= '0';
		end if;		
		wait for period/2;
		I1<= x"0003";
		I2<= x"0003";
		if (O=x"0009") then
			I <= '1';
		else
			I <= '0';
		end if;		
		wait for period/2;
	
   end process;
 



END;
