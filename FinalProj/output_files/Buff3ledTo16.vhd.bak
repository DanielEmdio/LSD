library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Buff3lebTo16 is
	port ( input : in STD_LOGIC_vector(3 downto 0);
			 win   : in std_logic; 
			 enable: in STD_Logic;
		    output: out STD_LOGIC_vector(3 downto 0));
end Buff3lebTo16;

architecture Behavioral of Buff3lebTo16 is
begin
	process(enable)
	begin
		if (win = '0') then
			output <= input;
		else
			if(enable = '0') then
				output(0) <= '0';
				output(1) <= '1';
				output(2) <= '0';
				output(3) <= '1';
			else
				output(0) <= '1';
				output(1) <= '0';
				output(2) <= '1';
				output(3) <= '0';
			end if;
		end if;
	end process;
end Behavioral;