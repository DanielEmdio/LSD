library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity Set is
	port(clk     : in  std_logic;
		  reset   : in  std_logic;
		  Game1   : in  std_logic; -- +1 game jogador 1 
		  Game2   : in  std_logic; -- +1 game jogador 2
		  game_Pt1: in  std_logic; 
		  game_Pt2: in  std_logic;
		  Match1  : out std_logic; -- +1 set jogador1
		  Match2  : out std_logic; -- +1 set jogador2
		  set_Pt1 : out std_logic; -- set point jogador1
		  set_Pt2 : out std_logic; -- set point jogador2
		  TieBreak: out std_logic; -- TieBreak detected
		  dOut1   : out std_logic_vector(2 downto 0); -- display games jogador1
		  dOut2   : out std_logic_vector(2 downto 0));-- display games jogador2
end Set;

architecture Behav of Set is
	type state is (S,TB);
	signal PS, NS : state;
	signal s_match1,s_match2: std_logic;
	signal counter1,counter2 : unsigned(2 downto 0);
begin

	counter: process(clk,reset)
	begin 
		if (reset = '1') then
			counter1 <="000";
			counter2 <= "000";
		elsif(falling_edge(clk)) then
			if (Game1 = '1') then
				counter1 <= counter1 + 1;
			elsif (Game2 = '1') then
				counter2 <= counter2 + 1;
			end if;
			if((counter1 = "110" and (counter1-counter2 > 1)) or counter1 = "111") then
				counter1 <= "000";
				counter2 <= "000";
			elsif((counter2 = "110" and (counter2-counter1 > 1)) or counter2 = "111") then
				counter1 <= "000";
				counter2 <= "000";
			end if;
		end if;
	end process;

	sync_proc: process(clk)
	begin
		if (falling_edge(clk)) then
			if (reset = '1') then
				PS <= S;
			else
				PS <= NS;
			end if;
		end if;
	end process;
	
	comb_proc: process(PS, counter1, counter2,game_Pt1,game_Pt2)
	begin
		s_match1 <= '0';
		s_match2 <= '0';
		case PS is
		when S => 
			set_Pt1<= '0';
			set_Pt2<= '0';
			TieBreak <= '0';
			if((counter1 = "110" and counter1-counter2 > 1) or counter1 = "111") then -- 6 games +1 adventage
				s_match1 <= '1';
			elsif((counter2 = "110" and counter2-counter1 > 1) or counter2 = "111") then
				s_match2 <= '1';
			elsif((counter1 = "101" or counter1 = "110") and (counter1-counter2 > 0) and counter1 > counter2 and game_Pt1 = '1') then			-- set point
				set_Pt1 <= '1';	
			elsif((counter2 = "101" or counter2 = "110") and (counter2-counter1 > 0) and counter2 > counter1 and game_Pt2 = '1') then			-- set point
				set_Pt2 <= '1';	
			end if;
			
			if(counter1 ="110" and counter2 = "110") then --- 6-6 Tiebreak
				NS <= TB;
			else
				NS <= S;
			end if;
			
		when TB =>
			if (counter1 = "111") then
				NS <= S;
				s_match1 <= '1';
				TieBreak <= '0';
			elsif(counter2 = "111") then
				NS <= S;
				s_match2 <= '1';
				TieBreak <= '0';
			else
				TieBreak <= '1';
				NS <= TB;
			end if;
		end case;
	end process;
	dOut1 <= std_logic_vector(counter1);
	dOut2 <= std_logic_vector(counter2);
	Match1 <= s_match1;
	Match2 <= s_match2;
	
end Behav;