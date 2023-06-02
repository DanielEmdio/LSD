library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity GameSetTest is
	port(CLOCK_50 : in  std_logic;
		  KEY      : in  std_logic_vector(3 downto 0);
		  SetPt    : out std_logic;
		  Match    : out std_logic_vector(1 downto 0);
		  HEX0     : out std_logic_vector(6 downto 0);
		  HEX1     : out std_logic_vector(6 downto 0);
		  HEX4     : out std_logic_vector(6 downto 0);
		  HEX5     : out std_logic_vector(6 downto 0);
		  HEX6     : out std_logic_vector(6 downto 0);
		  HEX7     : out std_logic_vector(6 downto 0));
end GameSetTest;

architecture Teste of GameSetTest is
	signal s_dOutGame1, s_dOutGame2, s_dOutSet1, s_dOutSet2 : std_logic_vector(2 downto 0);
	signal s_game_Pt, s_game1, s_game2: std_logic;
	signal s_key: std_logic_vector(3 downto 0);
begin
	Game: entity work.Game(Behav)
			port map(reset  => s_key(1),
					   clk    => CLOCK_50,
					   dIn1   => s_key(0),
					   dIn2   => s_key(3),
					   game_Pt=> s_game_pt,
					   dOut1  => s_dOutGame1,
					   dOut2  => s_dOutGame2,
					   set1   => s_game1,
					   set2   => s_game2);
						
	Set: entity work.Set(Behav)
		  port map(clk     => CLOCK_50,
					  reset   => s_key(1),
					  Game1   => s_game1,
					  Game2   => s_game2,
					  game_Pt => s_game_Pt,
					  Match1  => Match(0), 
					  Match2  => Match(1),
					  set_Pt  => SetPt,
					  dOut1   => s_dOutSet1,
					  dOut2   => s_dOutSet2);
	
	Debouncer1: entity work.DebounceUnit(Behavioral)
					port map(refClk    => ClOCK_50,
							   dirtyIn   => KEY(0),
								pulsedOut => s_key(0));
								
	Debouncer2: entity work.DebounceUnit(Behavioral)
					port map(refClk    => ClOCK_50,
							   dirtyIn   => KEY(1),
								pulsedOut => s_key(1));
	
	Debouncer3: entity work.DebounceUnit(Behavioral)
					port map(refClk    => ClOCK_50,
							   dirtyIn   => KEY(3),
								pulsedOut => s_key(3));
								
	HexGammes1: entity work.HexGame(Behavioral)
					port map(binInput => s_dOutGame1,
								decOut_0 => HEX4(6 downto 0),
								decOut_1 => HEX5(6 downto 0));
								
	HexGammes2: entity work.HexGame(Behavioral)
					port map(binInput => s_dOutGame2,
								decOut_0 => HEX6(6 downto 0),
								decOut_1 => HEX7(6 downto 0));
	
	HexSet1: entity work.HexSet(Behavioral)
				port map(binInput => s_dOutSet1,
							decOut_n => HEX0(6 downto 0));
							
	HexSet2: entity work.HexSet(Behavioral)
				port map(binInput => s_dOutSet2,
							decOut_n => HEX1(6 downto 0));
end Teste;