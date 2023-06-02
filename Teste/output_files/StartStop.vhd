library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity StartStop is
	port(Start : in std_logic;
		  Stop  : out std_logic);
end StartStop;

architecture Behavioral of StartStop is
	signal s_start  : std_logic;
begin
	process(Start)
	begin
		if(falling_edge(Start)) then
			if(s_start = '1') then
				Stop <= '0';
				s_start <= '0';
			else
				Stop <= '1';
				s_start <= '1';
			end if;
		end if;
	end process;
end Behavioral;