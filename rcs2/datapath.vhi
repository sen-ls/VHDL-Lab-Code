
-- VHDL Instantiation Created from source file datapath.vhd -- 10:46:53 01/03/2024
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT datapath
	PORT(
		CLK : IN std_logic;
		EN125 : IN std_logic;
		EN346 : IN std_logic;
		EN78 : IN std_logic;
		S : IN std_logic_vector(1 downto 0);
		S_T : IN std_logic_vector(1 downto 0);
		X1 : IN std_logic_vector(15 downto 0);
		X2 : IN std_logic_vector(15 downto 0);
		X3 : IN std_logic_vector(15 downto 0);
		X4 : IN std_logic_vector(15 downto 0);
		Z1 : IN std_logic_vector(15 downto 0);
		Z2 : IN std_logic_vector(15 downto 0);
		Z3 : IN std_logic_vector(15 downto 0);
		Z4 : IN std_logic_vector(15 downto 0);
		Z5 : IN std_logic_vector(15 downto 0);
		Z6 : IN std_logic_vector(15 downto 0);          
		Y1 : OUT std_logic_vector(15 downto 0);
		Y2 : OUT std_logic_vector(15 downto 0);
		Y3 : OUT std_logic_vector(15 downto 0);
		Y4 : OUT std_logic_vector(15 downto 0);
		Y1_T : OUT std_logic_vector(15 downto 0);
		Y2_T : OUT std_logic_vector(15 downto 0);
		Y3_T : OUT std_logic_vector(15 downto 0);
		Y4_T : OUT std_logic_vector(15 downto 0)
		);
	END COMPONENT;

	Inst_datapath: datapath PORT MAP(
		CLK => ,
		EN125 => ,
		EN346 => ,
		EN78 => ,
		S => ,
		S_T => ,
		X1 => ,
		X2 => ,
		X3 => ,
		X4 => ,
		Z1 => ,
		Z2 => ,
		Z3 => ,
		Z4 => ,
		Z5 => ,
		Z6 => ,
		Y1 => ,
		Y2 => ,
		Y3 => ,
		Y4 => ,
		Y1_T => ,
		Y2_T => ,
		Y3_T => ,
		Y4_T => 
	);


