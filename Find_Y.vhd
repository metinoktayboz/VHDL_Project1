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

entity Find_Y is
port(
 wide:in std_logic_vector(3 downto 0);
 Y:out std_logic
 );
end Find_Y;

architecture Behavioral of Find_Y is

begin

Y<= '1'when (wide="0001") else
    '1'when (wide="0100") else 
    '1'when (wide="0101") else
    '1'when (wide="1001") else	 
    '1'when (wide="1011") else 
    '1'when (wide="1111") else
    '0';  
end Behavioral;

