library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity Match_Tb is
end Match_Tb;

architecture Simulation of Match_Tb is
	signal s_set1, s_set2, s_reset, s_clk, s_set_Pt1, s_set_Pt2 : std_logic;
	
	signal s_match_Pt, s_win1, s_win2 : std_logic;
	signal s_dOut1, s_dOut2: std_logic_vector(2 downto 0);	
begin
	uut: entity work.Match(Set)
		  port map(reset   => s_reset,
					  clk     => s_clk,
				     set1    => s_set1,
				     set2    => s_set2,
					  set_Pt1 => s_set_Pt1,
					  set_Pt2 => s_set_Pt2,
					  win1    => s_win1,
					  win2    => s_win2,
				     dOut1   => s_dOut1,
				     dOut2   => s_dOut2);
	 
	stim_proc: process
	begin
		s_reset  <= '1';
		s_set1   <= '0';
		s_set2   <= '0';
		wait for 50 ns;
		
		s_reset <= '0';
		s_set1  <= '1';
		wait for 50 ns;		--100 ns
		
		s_set1 <= '0';
		s_set2 <= '1';
		wait for 50 ns;
		
		s_set1 <= '1';
		s_set2 <= '0';
		wait for 50 ns;		-- 200 ns
		
		s_set1 <= '0';
		s_set2 <= '0';
		wait for 50 ns;
		
		s_set1 <= '1';
		s_set2 <= '0';
		wait for 50 ns;		-- 300 ns
		
		
		
		
	end process;
end Simulation;