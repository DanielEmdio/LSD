library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity Set_Tb is
end Set_Tb;

architecture Simulation of Set_Tb is
	signal s_clk, s_reset, s_Game1, s_Game2, s_game_Pt1, s_game_Pt2: std_logic;
	
	signal s_Match1, s_Match2, s_set_Pt1, s_set_Pt2, s_TieBreak: std_logic;
	signal s_dOut1, s_dOut2 : std_logic_vector(2 downto 0);
begin
	uut: entity work.Set(Behav)
		  port map(clk      => s_clk,
					  reset    => s_reset,
				     Game1    => s_Game1,
				     Game2    => s_Game2,
				     game_Pt1 => s_game_Pt1,
					  game_Pt2 => s_game_Pt2, 
				     Match1   => s_Match1,
				     Match2   => s_Match2,
					  set_Pt1  => s_set_Pt1,
					  set_Pt2  => s_set_Pt2,
					  TieBreak => s_TieBreak,
				     dOut1    => s_dOut1,
				     dOut2    => s_dOut2);

	clk_proc: process
	begin
		s_clk <= '0'; wait for 100 ns;
		s_clk <= '1'; wait for 100 ns;		--rising_edge nos 100 ns, 300 ns, 500 ns...
	end process;
	
	stim_proc: process
	begin
		s_reset    <= '1';
		s_Game1    <= '0';
		s_Game2    <= '0';
		s_game_Pt1 <= '0';
		s_game_Pt2 <= '0';
		wait for 210 ns;		
		
		s_reset <= '0';
		wait for 15 ns;		--225ns
		
		
		s_Game1 <= '1';
		wait for 1025 ns;		-- 1250 ns
		
		s_game_Pt1 <= '1';
		wait for 400 ns;		-- 1650 ns
		
		s_game_Pt1 <= '0';
		s_Game1 <= '0';
		s_Game2 <= '1';
		wait for 1025 ns;		-- 2675 ns
		
		s_game_Pt1 <= '1';
		wait for 400 ns;		-- 2875 ns
		
		s_game_Pt2 <= '0';
		s_Game1 <= '1';
		s_Game2 <= '0';
		wait for 950 ns;		-- 4025 ns
		
		s_game_pt2 <= '1';
		s_game_pt1 <= '0';
		s_Game1 <= '0';
		s_Game2 <= '1';
		wait for 1025 ns;
		
		s_Game1 <= '1';
		s_Game2 <= '0';
		wait for 225 ns;		--5275 ns;
	
		s_Game1 <= '0';
		s_Game2 <= '1';		
		wait for 350 ns;		--5625 ns;
		
		
		
	end process;
end Simulation;