library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Buff1bit is -- this block is used to make the unused green leds blink at the end
	port ( input : in STD_LOGIC;
			 enable: in STD_Logic;
		    output0 : out STD_LOGIC;
			 output1 : out std_LOGIC);
end Buff1bit;

architecture Behavioral of Buff1bit is
begin
	process(enable)
	begin
		if(enable = '1') then
			output0 <= input;
			output1 <= input;
		else
			output0 <= '0';
			output1 <= '0';
		end if;
	end process;
end Behavioral;