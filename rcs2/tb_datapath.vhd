-- TestBench Template 

  LIBRARY ieee;
  USE ieee.std_logic_1164.ALL;


  ENTITY tb_datapath IS
  END tb_datapath;

  ARCHITECTURE behavior OF tb_datapath IS 

  -- Component Declaration
          COMPONENT datapath
          PORT(
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
           Y4_T : out  STD_LOGIC_VECTOR (15 downto 0)		
                  );
          END COMPONENT;
			 
   signal CLK : std_logic := '0';
   signal EN125 : std_logic := '0';
   signal EN346 : std_logic := '0';
   signal EN78 : std_logic := '0';
   signal S : std_logic_vector(1 downto 0) := (others => '0');
	signal S_T : std_logic_vector(1 downto 0) := (others => '0');
   signal X1 : std_logic_vector(15 downto 0) := (others => '0');
   signal X2 : std_logic_vector(15 downto 0) := (others => '0');
   signal X3 : std_logic_vector(15 downto 0) := (others => '0');
   signal X4 : std_logic_vector(15 downto 0) := (others => '0');
   signal Z1 : std_logic_vector(15 downto 0) := (others => '0');
   signal Z2 : std_logic_vector(15 downto 0) := (others => '0');
   signal Z3 : std_logic_vector(15 downto 0) := (others => '0');	
   signal Z4 : std_logic_vector(15 downto 0) := (others => '0');
   signal Z5 : std_logic_vector(15 downto 0) := (others => '0');
   signal Z6 : std_logic_vector(15 downto 0) := (others => '0');

  	--Outputs
   signal Y1 : std_logic_vector(15 downto 0);
   signal Y2 : std_logic_vector(15 downto 0);
   signal Y3 : std_logic_vector(15 downto 0);
   signal Y4 : std_logic_vector(15 downto 0);
	
	signal Y1_T : std_logic_vector(15 downto 0);
   signal Y2_T : std_logic_vector(15 downto 0);
   signal Y3_T : std_logic_vector(15 downto 0);
   signal Y4_T : std_logic_vector(15 downto 0);

     -- Clock period definitions
   constant CLK_period : time := 10 ns;       

  BEGIN

  	-- Instantiate the Unit Under Test (UUT)
   uut: datapath PORT MAP (
          CLK => CLK,
          EN125 => EN125,
          EN346 => EN346,
          EN78 => EN78,
          S => S,
			 S_T => S_T,
          X1 => X1,
          X2 => X2,
          X3 => X3,
          X4 => X4,
          Z1 => Z1,
          Z2 => Z2,
          Z3 => Z3,
          Z4 => Z4,
          Z5 => Z5,
          Z6 => Z6,
          Y1 => Y1,
          Y2 => Y2,
          Y3 => Y3,
          Y4 => Y4,
			 Y1_T => Y1_T,
			 Y2_T => Y2_T,
			 Y3_T => Y3_T,
			 Y4_T => Y4_T
        );

   CLK_process :process
   begin
		CLK <= '0';
		wait for CLK_period/2;
		CLK <= '1';
		wait for CLK_period/2;
   end process;

    -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;
		X1 <= x"0000";
		X2 <= x"0000";
		X3 <= x"0000";
		X4 <= x"0000";
		EN125 <= '1';
		EN346 <= '1';
		EN78 <= '1';
		Z1 <= x"0000";
		Z2 <= x"0000";
		Z3 <= x"0000";
		Z4 <= x"0000";
		Z5 <= x"0000";
		Z6 <= x"0000";
      wait for CLK_period*10;

      -- insert stimulus here 

      wait for  5 ns;
		
		X1 <= x"0100";
		X2 <= x"0010";
		X3 <= x"0001";
		X4 <= x"1000";
		EN125 <= '1';
		EN346 <= '0';
		EN78 <= '0';
		Z1 <= x"1010";
		Z2 <= x"0120";
		Z3 <= x"3521";
		Z4 <= x"5555";
		Z5 <= x"6457";
		Z6 <= x"1231";
      wait for CLK_period*10;
		
      wait for  5 ns;
		
		X1 <= x"0100";
		X2 <= x"0010";
		X3 <= x"0001";
		X4 <= x"1000";
		EN125 <= '0';
		EN346 <= '0';
		EN78 <= '1';
		Z1 <= x"1010";
		Z2 <= x"0120";
		Z3 <= x"3521";
		Z4 <= x"5555";
		Z5 <= x"6457";
		Z6 <= x"1231";
      wait for CLK_period*10;
   end process;


  END;
