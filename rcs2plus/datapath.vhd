----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    07:07:46 01/03/2024 
-- Design Name: 
-- Module Name:    datapath - Behavioral 
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

entity datapath is
    Port ( 
			  CLK : in  STD_LOGIC;
           EN125 : in  STD_LOGIC;
           EN346 : in  STD_LOGIC;
           EN78 : in  STD_LOGIC;
           S : in  STD_LOGIC_VECTOR (1 downto 0);
           S_T : in  STD_LOGIC_VECTOR (1 downto 0);
           X1 : in  STD_LOGIC_VECTOR (15 downto 0);
           X2 : in  STD_LOGIC_VECTOR (15 downto 0);
           X3 : in  STD_LOGIC_VECTOR (15 downto 0);
           X4 : in  STD_LOGIC_VECTOR (15 downto 0);
           Z1 : in  STD_LOGIC_VECTOR (15 downto 0);
           Z2 : in  STD_LOGIC_VECTOR (15 downto 0);
           Z3 : in  STD_LOGIC_VECTOR (15 downto 0);
           Z4 : in  STD_LOGIC_VECTOR (15 downto 0);
           Z5 : in  STD_LOGIC_VECTOR (15 downto 0);
           Z6 : in  STD_LOGIC_VECTOR (15 downto 0);
           Y1 : out  STD_LOGIC_VECTOR (15 downto 0);
           Y2 : out  STD_LOGIC_VECTOR (15 downto 0);
           Y3 : out  STD_LOGIC_VECTOR (15 downto 0);
           Y4 : out  STD_LOGIC_VECTOR (15 downto 0);
           Y1_T : out  STD_LOGIC_VECTOR (15 downto 0);
           Y2_T : out  STD_LOGIC_VECTOR (15 downto 0);
           Y3_T : out  STD_LOGIC_VECTOR (15 downto 0);
           Y4_T : out  STD_LOGIC_VECTOR (15 downto 0));
end datapath;

architecture Behavioral of datapath is

    COMPONENT addop
    PORT(
         I1 : IN  std_logic_vector(15 downto 0);
         I2 : IN  std_logic_vector(15 downto 0);
         O : OUT  std_logic_vector(15 downto 0)
        );
    END COMPONENT;
	 
    COMPONENT mulop
    PORT(
         I1 : IN  std_logic_vector(15 downto 0);
         I2 : IN  std_logic_vector(15 downto 0);
         O : OUT  std_logic_vector(15 downto 0)
        );
    END COMPONENT;
	 
   COMPONENT xorop
    PORT(
         I1	 : in  std_logic_vector(15 downto 0);
         I2 : in  std_logic_vector(15 downto 0);
         O : out  std_logic_vector(15 downto 0)
        );
    END COMPONENT;
	 
   COMPONENT mux4x1
    PORT(
         D0 : IN  std_logic_vector(15 downto 0);
         D1 : IN  std_logic_vector(15 downto 0);
         D2 : IN  std_logic_vector(15 downto 0);
         D3 : IN  std_logic_vector(15 downto 0);
         S : IN  std_logic_vector(1 downto 0);
         O : OUT  std_logic_vector(15 downto 0)
        );		  
	 END COMPONENT;
	 
    COMPONENT register16
    PORT(
         CLK : IN  std_logic;
         EN : IN  std_logic;
         D : IN  std_logic_vector(15 downto 0);
         Q : OUT  std_logic_vector(15 downto 0)
        );
    END COMPONENT;
	 
-- Define signal that need to use
-- Four Mu4
signal Mu1: STD_LOGIC_VECTOR (15 downto 0);
signal Mu2: STD_LOGIC_VECTOR (15 downto 0);
signal Mu3: STD_LOGIC_VECTOR (15 downto 0);
signal Mu4: STD_LOGIC_VECTOR (15 downto 0);
-- Eight Registers
signal R1: STD_LOGIC_VECTOR (15 downto 0);
signal R2: STD_LOGIC_VECTOR (15 downto 0);
signal R3: STD_LOGIC_VECTOR (15 downto 0);
signal R4: STD_LOGIC_VECTOR (15 downto 0);
signal R5: STD_LOGIC_VECTOR (15 downto 0);
signal R6: STD_LOGIC_VECTOR (15 downto 0);
signal R7: STD_LOGIC_VECTOR (15 downto 0);
signal R8: STD_LOGIC_VECTOR (15 downto 0);
-- Three with calculation
signal mul: STD_LOGIC_VECTOR (15 downto 0);
signal add: STD_LOGIC_VECTOR (15 downto 0);
signal xo: STD_LOGIC_VECTOR (15 downto 0);

begin

	mu4_1: mux4x1 PORT MAP(
		D0 => X1,
		D1 => X4,
		D2 => Z5,
		D3 => Z6,
		S => S,
		O => Mu1);
		
	mu4_2: mux4x1 PORT MAP(
		D0 => Z1,
		D1 => Z4,
		D2 => R5,
		D3 => R8,
		S => S,
		O => Mu2);
		
	mul0: mulop PORT MAP(
		I1 => Mu1,
		I2 => Mu2,
		O => mul);		

	mu4_3: mux4x1 PORT MAP(
		D0 => X3,
		D1 => X2,
		D2 => R6,
		D3 => R7,
		S => S,
		O => Mu3);

	mu4_4: mux4x1 PORT MAP(
		D0 => Z3,
		D1 => Z2,
		D2 => mul,
		D3 => mul,
		S => S_T,
		O => Mu4);

	r_1: register16 PORT MAP(
		CLK => CLK,
		EN => EN125,
		D => mul,
		Q => R1);
		
	r_2: register16 PORT MAP(
		CLK => CLK,
		EN => EN125,
		D => add,
		Q => R2);
		
	r_3: register16 PORT MAP(
		CLK => CLK,
		EN => EN346,
		D => add,
		Q => R3);

	r_4: register16 PORT MAP(
		CLK => CLK,
		EN => EN346,
		D => mul,
		Q => R4);

	r_5: register16 PORT MAP(
		CLK => CLK,
		EN => EN125,
		D => xo,
		Q => R5);

	r_6: register16 PORT MAP(
		CLK => CLK,
		EN => EN346,
		D => xo,
		Q => R6);

	r_7: register16 PORT MAP(
		CLK => CLK,
		EN => EN78,
		D => mul,
		Q => R7);

	r_8: register16 PORT MAP(
		CLK => CLK,
		EN => EN78,
		D => add,
		Q => R8);

	xo0: xorop PORT MAP (
		I1 => mul,
		I2 => add,
		O => xo);
		
	xo1: xorop PORT MAP (
		I1 => R3,
		I2 => add,
		O => Y3);

	xo2: xorop PORT MAP (
		I1 => R2,
		I2 => mul,
		O => Y2);

	xo3: xorop PORT MAP (
		I1 => R4,
		I2 => add,
		O => Y4);

	xo4: xorop PORT MAP (
		I1 => R1,
		I2 => mul,
		O => Y1);

		
	add0: addop PORT MAP (
		I1 => Mu3,
		I2 => Mu4,
		O => add);
		
	Y1_T<=R1;
	Y2_T<=R2;
	Y3_T<=R3;
	Y4_T<=R4;


end Behavioral;

