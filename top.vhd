----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    00:40:30 10/19/2019 
-- Design Name: 
-- Module Name:    top - Behavioral 
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

entity top is
port(
A,B,C,D,S0,S1:in std_logic;
 
 
F:out std_logic

);
end top;

architecture Behavioral of top is
signal s:std_logic_vector(1 downto 0);
signal w1,w2,w3,w4:std_logic;
signal temp : std_logic_vector(3 downto 0);
signal atakan : std_logic_vector(1 downto 0);
component Find_X 
port(
 a,b,c,d:in std_logic;
 x:out std_logic
 );
 end component;
 component Find_Y
 port( 
 
 wide:in std_logic_vector(3 downto 0);
 Y:out std_logic
 );
 end component;
 component Find_Z
port(
 wide:in std_logic_vector(3 downto 0);
 z:out std_logic
 );
 
end component;
 component Find_W
 port(
c,d :in std_logic;
cmp :in std_logic_vector(1 downto 0);
w :out std_logic
);
end component;
begin
atakan <= A & B;
temp <= A & B & C & D;
ad:Find_X
port map(
A => a,
B => b,
C => c,
D => d,
x=>w1
);
ade:Find_Y
port map(
wide=>temp,
Y=>w2
);
adem:Find_Z
port map( 
wide(3)=>A, 
wide(2)=>B,
wide(1)=>C,
wide(0)=>D,
z=>w3
);
atak:Find_W
port map(
cmp(1) => a,
cmp(0) => b,
C => c,
D => d,
w => w4
);

s<=S1&S0;

with s select 
F<= w1 when "00",
    w2 when "01",
	 w3 when "10",
	 w4 when others;

end Behavioral; 

