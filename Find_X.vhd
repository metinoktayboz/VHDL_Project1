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

entity Find_X is
port(
 a,b,c,d:in std_logic;
 x:out std_logic
 );
end Find_X; 
 
architecture Behavioral of Find_X is


begin


x<=(b and (not c)and d)or(a and b and (not c));

end Behavioral;
