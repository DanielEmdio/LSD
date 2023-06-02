library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity Game_Tb is
end Game_Tb;

architecture Simulation of Game_Tb is
	signal s_reset, s_clk, s_tb, s_dIn1, s_dIn2 : std_logic; 
	
	signal s_set1, s_set2, s_game_Pt1, s_game_Pt2: std_logic;
	signal s_dOut1, s_dOut2: std_logic_vector(2 downto 0);
begin 

	uut: entity work.Game(Behav)
		  port map(clk      => s_clk,
					  reset    => s_reset,
					  tb       => s_tb,
					  dIn1     => s_dIn1,
					  dIn2     => s_dIn2,
					  set1     => s_set1,
					  set2     => s_set2,
					  game_Pt1 => s_game_Pt1,
					  game_Pt2 => s_game_Pt2,
					  dOut1    => s_dOut1,
					  dOut2    => s_dOut2);
	
	clk_proc: process
	begin
		s_clk <= '0'; wait for 100 ns;
		s_clk <= '1'; wait for 100 ns;		--falling_edge_edge nos 200 ns, 400 ns, 600 ns...
	end process;
	
	stim_proc: process
	begin
		s_reset  <= '1';
		s_dIn1   <= '0';
		s_dIn2   <= '0';
		s_tb     <= '0';
		wait for 225 ns;
		
		s_reset  <= '0';
		wait for 25 ns;		--250ns
		
		s_dIn1 <= '1';
		wait for 825 ns;		-- 1075 ns
		
		s_dIn1 <= '0';
		wait for 200 ns;		--1275 ns
		
		s_dIn2 <= '1';
		wait for 850 ns;		-- 2125 ns
		
		s_dIn2 <= '0';
		wait for 200 ns;		-- 2325 ns
		
		s_dIn1 <= '1';
		s_dIn2 <= '0';
		wait for 525 ns;		-- 2850 ns
		
		s_dIn1 <= '0';
		s_dIn2 <= '1';
		wait for 1025 ns;  --3875 ns
		
		s_dIn2 <= '0';
		wait for 200 ns;		-- 4075 ns;
		
		s_dIn2 <= '1';
		wait for 200 ns;		-- 4275 ns
		
		s_dIn1 <= '0';
		s_dIn2 <= '0';
		wait for 200 ns;		--4475
	
		
	end process;
end Simulation;