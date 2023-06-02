library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.all;

entity bin2bcd is
	port(dataIn : in std_logic_vector(6 downto 0);
		  digy0  : out std_logic_vector(3 downto 0);
		  digy1  : out std_logic_vector(3 downto 0));
end bin2bcd;

architecture Behavioral of bin2bcd is
	signal bcd   : unsigned(7 downto 0);
begin
	bcd   <= unsigned('0' & dataIn(6 downto 0));
	digy0 <= std_logic_vector(bcd rem 10)(3 downto 0);
	digy1 <= std_logic_vector(bcd/10)(3 downto 0);
end Behavioral;