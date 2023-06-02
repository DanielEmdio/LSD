library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity PulseGeneratorLed is
	generic(NUMBER_STEPS : positive := 25_000_000);
	port ( clk : in STD_LOGIC;
			 blink: out STD_LOGIC);
end PulseGeneratorLed;

architecture Behavioral of PulseGeneratorLed is
	signal s_counter : natural range 0 to NUMBER_STEPS-1;
begin

	count_proc: process(clk)
		begin
			if rising_edge(clk) then
				if (s_counter >= NUMBER_STEPS-1) then
					s_counter <= 0;
				else
					s_counter <= s_counter + 1;
				end if;
				if (s_counter >= (NUMBER_STEPS/2)) then
					blink <= '1';  
				else 
					blink <= '0'; -- VHDL-2008 !
				end if;
			end if;
		end process;
		
end Behavioral;
