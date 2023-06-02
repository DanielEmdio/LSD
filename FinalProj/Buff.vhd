library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Buff is
	port ( input : in STD_LOGIC_vector(2 downto 0);
			 win   : in std_logic; 
			 enable: in STD_Logic;
		    output: out STD_LOGIC_vector(2 downto 0));
end Buff;

architecture Behavioral of Buff is
begin
	process(enable) -- blinking leds
	begin
		if (win = '0') then
			output <= input;
		else
			if(enable = '1') then -- blinking leds
				output(0) <= '0';
				output(1) <= '1';
				output(2) <= '0';
			else
				output(0) <= '1';
				output(1) <= '0';
				output(2) <= '1';
			end if;
		end if;
	end process;
end Behavioral;