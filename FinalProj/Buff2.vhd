library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Buff2 is -- this block is used to make the leds used in the serves blink at the end
	port ( input : in STD_LOGIC;
			 win   : in std_logic; 
			 enable: in STD_Logic;
		    output: out STD_LOGIC);
end Buff2;

architecture Behavioral of Buff2 is
begin
	process(enable)
	begin
		if (win = '0') then
			output <= input;
		else
			if(enable = '1') then
				output <= '1';
			else
				output <= '0';
			end if;
		end if;
	end process;
end Behavioral;