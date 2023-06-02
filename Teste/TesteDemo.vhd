library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity TesteDemo is
	port(CLOCK_50 : in std_logic;
		  KEY      : in std_logic_vector(1 downto 0);
		  HEX0 : out std_logic_vector(6 downto 0);
		  HEX1 : out std_logic_vector(6 downto 0));
end TesteDemo;

architecture Behavioral of TesteDemo is
	signal s_count : std_logic_vector(6 downto 0);
	signal s_pulse : std_logic;
	signal s_start : std_logic;
	signal s_dig0  : std_logic_vector(3 downto 0);
	signal s_dig1  : std_logic_vector(3 downto 0);
begin
	Pulse:   entity work.PulseGeneratorCounter(Behavioral)
				generic map(MAX => 25_000_000)
				port map(clk => CLOCK_50,
							pulse => s_pulse);
							
	Stop:    entity work.StartStop(Behavioral)
				port map(Start => KEY(0),
							Stop  => s_start);						
							
	Counter: entity work.Counter(Behavioral)
				port map(clk => CLOCK_50,
							enable => s_pulse and s_start,
							reset => KEY(1),
							count => s_count);
							
	BCD :    entity work.bin2bcd(Behavioral)
				port map(dataIn => s_count,
							digy0  => s_dig0,
							digy1  => s_dig1);
							
	BIN0 :   entity work.Bin7SegDecoder(Behavioral)
		      port map(binInput => s_dig0,
					      enable=> '1',
					      decOut_n=>HEX0);
					
	BIN1 :   entity work.Bin7SegDecoder(Behavioral)
		      port map(binInput => s_dig1,
					      enable=> '1',
					      decOut_n=>HEX1);
end Behavioral;