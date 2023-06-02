library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity Counter is
	port(clk : in std_logic;
		enable: in std_logic;
		reset : in std_logic;
		count : out std_logic_vector(6 downto 0));
end Counter;

architecture Behavioral of Counter is
	signal s_count : unsigned(6 downto 0);
begin
	process(clk)
	begin
		if (rising_edge(clk)) then
			if(reset = '1' or s_count = "1100100") then
				s_count <= (others => '0');
			else
				if (enable = '1') then
					s_count <= s_count + 1;
				end if;
			end if;
		end if;
	end process;
	count <= std_logic_vector(s_count);
end Behavioral;