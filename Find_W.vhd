----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:46:15 10/21/2019 
-- Design Name: 
-- Module Name:    Find_W - Behavioral 
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

entity Find_W is
port(
c,d :in std_logic;
cmp :in std_logic_vector(1 downto 0);
w :out std_logic
);
end Find_W;

architecture Behavioral of Find_W is
signal atakan:std_logic_vector(1 downto 0);
begin

with cmp select
w<=  c  when "00",
	  d  when "01",
	 '0' when "10",
	 '1' when others;


end Behavioral;

