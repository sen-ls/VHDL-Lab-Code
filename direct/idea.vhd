----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:     
-- Design Name: 
-- Module Name:    idea - Structural 
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

entity idea is
    Port ( KEY : in  STD_LOGIC_VECTOR (127 downto 0);
           X_1 : in  STD_LOGIC_VECTOR (15 downto 0);
           X_2 : in  STD_LOGIC_VECTOR (15 downto 0);
           X_3 : in  STD_LOGIC_VECTOR (15 downto 0);
           X_4 : in  STD_LOGIC_VECTOR (15 downto 0);
           Y_1 : out  STD_LOGIC_VECTOR (15 downto 0);
           Y_2 : out  STD_LOGIC_VECTOR (15 downto 0);
           Y_3 : out  STD_LOGIC_VECTOR (15 downto 0);
           Y_4 : out  STD_LOGIC_VECTOR (15 downto 0));
end idea;

architecture Structural of idea is

	component round
    port(
			x1: in STD_LOGIC_VECTOR(15 downto 0);
			x2: in STD_LOGIC_VECTOR(15 downto 0);
			x3: in STD_LOGIC_VECTOR(15 downto 0);
			x4: in STD_LOGIC_VECTOR(15 downto 0);
			z1: in STD_LOGIC_VECTOR(15 downto 0);
			z2: in STD_LOGIC_VECTOR(15 downto 0);
			z3: in STD_LOGIC_VECTOR(15 downto 0);
			z4: in STD_LOGIC_VECTOR(15 downto 0);
			z5: in STD_LOGIC_VECTOR(15 downto 0);
			z6: in STD_LOGIC_VECTOR(15 downto 0);
			y1: out STD_LOGIC_VECTOR(15 downto 0);
			y2: out STD_LOGIC_VECTOR(15 downto 0);
			y3: out STD_LOGIC_VECTOR(15 downto 0);
			y4: out STD_LOGIC_VECTOR(15 downto 0)
        );
    end component;
	 
	component trafo
    port(
			  X1 : in std_logic_vector(15 downto 0);
           X2 : in std_logic_vector(15 downto 0);
           X3 : in std_logic_vector(15 downto 0);
           X4 : in std_logic_vector(15 downto 0);
           Z1 : in std_logic_vector(15 downto 0);
           Z2 : in std_logic_vector(15 downto 0);
           Z3 : in std_logic_vector(15 downto 0);
           Z4 : in std_logic_vector(15 downto 0);
           Y1 : out std_logic_vector(15 downto 0);
           Y2 : out std_logic_vector(15 downto 0);
           Y3 : out std_logic_vector(15 downto 0);
           Y4 : out std_logic_vector(15 downto 0)
        );
    end component;
	 
	 signal Y11, Y12, Y13, Y14, Y21, Y22, Y23, Y24, Y31, Y32, Y33, Y34, Y41, Y42, Y43, Y44, Y51, Y52, Y53, Y54, Y61, Y62, Y63, Y64, Y71, Y72, Y73, Y74, Y81, Y82, Y83, Y84: std_logic_vector(15 downto 0);
	 signal key1: std_logic_vector(127 downto 0);
	 type key11 is array(1 to 5) of std_logic_vector(127 downto 0);
	 type key22 is array(0 to 47) of std_logic_vector(15 downto 0);
	 type key33 is array(0 to 3) of std_logic_vector(15 downto 0);
	 signal keyin: key11;
	 signal keys: key22;
	 signal keys1: key33;
	 
begin


 
 --- First 8 times are from KEY
 --- Then 40 times with this function
	keygenerate: process(KEY,keyin,keys,key1)
		variable keynum: integer range 8 to 48;
		variable num1: integer range 0 to 8;
		variable num2: integer range 1 to 6;
		begin
		keynum := 8;
		num1 := 0;
		num2 := 1;
			for z in 0 to 7 loop
				keys(num1) <= KEY(127-(z*16)downto 127-((z+1)*16-1));
				num1 := num1+1;
			end loop;
			for i in 1 to 5 loop
				keyin(num2) <= KEY(127-(i*25) downto 0)&KEY(127 downto 127-(i*25)+1);
				for j in 0 to 7 loop
					keys(keynum) <= keyin(num2)(127-(j*16) downto 127-((j+1)*16-1));
					keynum := keynum+1;			
				end loop;
				num2 := num2+1;
			end loop;
		end process;
		
	Lastkey: process(keyin,keys,key1)
		variable lastkey: integer range 0 to 4;
		begin
		lastkey := 0;
		key1 <= keyin(5)(102 downto 0)&keyin(5)(127 downto 103);
		for i in 0 to 3 loop
			keys1(lastkey) <= key1(127-(i*16) downto 127-((i+1)*16-1));
			lastkey :=lastkey+1;
		end loop;
	end process;
		
		
 
	

 
	r1: round port map(
		x1 => X_1,
		x2 => X_2,
		x3 => X_3,
		x4 => X_4,
		z1 => keys(0),
		z2 => keys(1),
		z3 => keys(2),
		z4 => keys(3),
		z5 => keys(4),
		z6 => keys(5),
		y1 => Y11,
		y2 => Y12,
		y3 => Y13,
		y4 => Y14
		);
		
	r2: round port map(
		x1 => Y11,
		x2 => Y12,
		x3 => Y13,
		x4 => Y14,
		z1 => keys(6),
		z2 => keys(7),
		z3 => keys(8),
		z4 => keys(9),
		z5 => keys(10),
		z6 => keys(11),
		y1 => Y21,
		y2 => Y22,
		y3 => Y23,
		y4 => Y24
		);	

	r3: round port map(
		x1 => Y21,
		x2 => Y22,
		x3 => Y23,
		x4 => Y24,
		z1 => keys(12),
		z2 => keys(13),
		z3 => keys(14),
		z4 => keys(15),
		z5 => keys(16),
		z6 => keys(17),
		y1 => Y31,
		y2 => Y32,
		y3 => Y33,
		y4 => Y34
		);	

	r4: round port map(
		x1 => Y31,
		x2 => Y32,
		x3 => Y33,
		x4 => Y34,
		z1 => keys(18),
		z2 => keys(19),
		z3 => keys(20),
		z4 => keys(21),
		z5 => keys(22),
		z6 => keys(23),
		y1 => Y41,
		y2 => Y42,
		y3 => Y43,
		y4 => Y44
		);

	r5: round port map(
		x1 => Y41,
		x2 => Y42,
		x3 => Y43,
		x4 => Y44,
		z1 => keys(24),
		z2 => keys(25),
		z3 => keys(26),
		z4 => keys(27),
		z5 => keys(28),
		z6 => keys(29),
		y1 => Y51,
		y2 => Y52,
		y3 => Y53,
		y4 => Y54
		);			

	r6: round port map(
		x1 => Y51,
		x2 => Y52,
		x3 => Y53,
		x4 => Y54,
		z1 => keys(30),
		z2 => keys(31),
		z3 => keys(32),
		z4 => keys(33),
		z5 => keys(34),
		z6 => keys(35),
		y1 => Y61,
		y2 => Y62,
		y3 => Y63,
		y4 => Y64
		);
		
	r7: round port map(
		x1 => Y61,
		x2 => Y62,
		x3 => Y63,
		x4 => Y64,
		z1 => keys(36),
		z2 => keys(37),
		z3 => keys(38),
		z4 => keys(39),
		z5 => keys(40),
		z6 => keys(41),
		y1 => Y71,
		y2 => Y72,
		y3 => Y73,
		y4 => Y74
		);
		
	r8: round port map(
		x1 => Y71,
		x2 => Y72,
		x3 => Y73,
		x4 => Y74,
		z1 => keys(42),
		z2 => keys(43),
		z3 => keys(44),
		z4 => keys(45),
		z5 => keys(46),
		z6 => keys(47),
		y1 => Y81,
		y2 => Y82,
		y3 => Y83,
		y4 => Y84
		);
		
	r9: trafo port map(
		X1 => Y81,
		X2 => Y82,
		X3 => Y83,
		X4 => Y84,
		Z1 => keys1(0),
		Z2 => keys1(1),
		Z3 => keys1(2),
		Z4 => keys1(3),
		Y1 => Y_1,
		Y2 => Y_2,
		Y3 => Y_3,
		Y4 => Y_4
		); 
end Structural;

