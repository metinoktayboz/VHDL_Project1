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

entity Find_Z is
port(
 wide:in std_logic_vector(3 downto 0);
 z:out std_logic
 );
 
end Find_Z; 

architecture Behavioral of Find_Z is
signal tmp: std_logic_vector(3 downto 0);
begin

with wide select
z<= '1'when "0000",
    '1'when "0010",
	 '1'when "0011",
	 '1'when "0111",
	 '1'when "1100",
	 '1'when "1110",
    '0'when others;
end Behavioral;

