library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity PulseGenerator is
	port ( clk : in STD_LOGIC;
			 pulseCount: out STD_Logic;
		    pulseLed : out STD_LOGIC);
end PulseGenerator;

architecture Behavioral of PulseGenerator is
begin					 
	Counter: entity work.PulseGeneratorCounter(Behavioral)
					generic map(MAX => 50_000_000)
					port map(clk => clk,
								pulse => pulseCount);

end Behavioral; 
			 