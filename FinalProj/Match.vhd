library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity Match is
	port(clk     : in  std_logic;
		  set1    : in  std_logic; -- +1 set jogador1
		  set2    : in  std_logic; -- +1 set jogador2
		  reset   : in  std_logic;
		  set_Pt1 : in  std_logic;
		  set_Pt2 : in  std_logic;
		  match_Pt: out std_logic; -- match point
		  win1    : out std_logic; -- player1 wins
		  win2    : out std_logic; -- player2 wins
		  dOut1   : out std_logic_vector(2 downto 0); -- set leds jogador1
		  dOut2   : out std_logic_vector(2 downto 0));-- set leds jogador2
end Match;

architecture Set of Match is
	signal s_set1 : unsigned(2 downto 0);
	signal s_set2 : unsigned(2 downto 0);
begin
	process(clk,set1, set2,reset,s_set1,s_set2)
	begin
		if (reset = '1') then
			s_set1 <= "000";
			s_set2 <= "000";
			win1 <= '0';
			win2 <= '0';
		elsif(falling_edge(clk)) then
			if (set1 = '1') then
				if (s_set1 = "011") then
					s_set1 <= "111"; --aux to win animation
					s_set2 <= "111";
					win1 <= '1'; 
				elsif(s_set1 = "001") then
					s_set1 <= "011";
				else
					s_set1 <= "001";
				end if;
			elsif (set2 = '1') then
				if (s_set2 = "011") then
					s_set1 <= "111";
					s_set2 <= "111";
					win2 <= '1';
				elsif(s_set2 = "001") then
					s_set2 <= "011";
				else
					s_set2 <= "001";
				end if;
			end if;
		end if;
		if ((s_set1 = "011") and set_Pt1 = '1') then
			match_Pt <= '1';
		elsif((s_set2 = "011") and set_Pt2 = '1') then
			match_Pt <= '1';
		else
			match_Pt <= '0';
		end if;
	end process;
	dOut1 <= std_logic_vector(s_set1);
	dOut2 <= std_logic_vector(s_set2);	
end Set;