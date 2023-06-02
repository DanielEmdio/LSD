library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity Game is
	port(reset   : in  std_logic;
		  clk     : in  std_logic;
		  dIn1    : in  std_logic; -- +1 ponto jogador 1
		  dIn2    : in  std_logic; -- +1 ponto jogador 2
		  tb      : in  std_logic; -- Tiebreak
		  dOut1   : out std_logic_vector(2 downto 0); -- display points jogador1
		  dOut2   : out std_logic_vector(2 downto 0); -- display points jogador2
		  tOut1   : out std_logic_vector(6 downto 0); -- display tiebreak points jogador1
		  tOut2   : out std_logic_vector(6 downto 0); -- display tiebreak points jogador2
		  set1    : out std_logic; -- +1 game jogador 1
		  set2    : out std_logic; -- +1 game jogador 2
		  player1 : out std_logic; -- serviço jogador 1
		  player2 : out std_logic; -- serviço jogador 2
		  game_Pt1: out std_logic; -- gamepoint jogador 1
		  game_Pt2: out std_logic);-- gamepoint jogador 2
end Game;

architecture Behav of Game is
	type state is (S, D, A1, A2);
	signal PS : state;
	signal NS : state;
	signal j1,j2,odd : std_logic;
	signal s_set1,s_set2: std_logic;
	signal s_c1, s_c2,counter1,counter2: unsigned(2 downto 0);
	signal Tcounter1,Tcounter2 : unsigned(6 downto 0);
begin
	counter: process(clk,reset)
	begin
		if (reset = '1') then
			counter1 <="000";
			counter2 <= "000";
			Tcounter1 <= "0000000";
			Tcounter2 <= "0000000";
		elsif(falling_edge(clk)) then
			if(tb = '1')then
				if (dIn1 = '1') then
					Tcounter1 <= Tcounter1 + 1;
				elsif (dIn2 = '1') then
					Tcounter2 <= Tcounter2 + 1;
				elsif(Tcounter1 = 70 or Tcounter2 = 70 or ((Tcounter1 >= 7) and (Tcounter1 > Tcounter2) and Tcounter1 - Tcounter2 > 1) or ((Tcounter2 >= 7) and (Tcounter2 > Tcounter1) and Tcounter2 - Tcounter1 > 1))then
					Tcounter1 <= "0000000";
					Tcounter2 <= "0000000";
				end if;
			else
				if (dIn1 = '1') then
					counter1 <= counter1 + 1;
				elsif (dIn2 = '1') then
					counter2 <= counter2 + 1;
				elsif(counter1 = "100" or counter2 = "100" or counter1 = "111" or counter2 = "111") then
					counter1 <= "000";
					counter2 <= "000";
				elsif((counter1 ="011" and counter2 = "011") or (counter1 = "110" and counter2 = "110")) then 
					counter1 <= "101";
					counter2 <= "101";
				end if;
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
	
	comb_proc: process(PS, dIn1, dIn2,counter1,counter2)
	begin
		game_Pt1 <= '0';
		game_Pt2 <= '0';
		s_set1 <= '0';
		s_set2 <= '0';
		case PS is
		when S =>
			if(tb = '1') then
				if (Tcounter1 = 70) then --max points 10
					NS <= S;
					s_set1 <= '1';
				elsif((Tcounter1 >= 7) and (Tcounter1 - Tcounter2 > 1) and (Tcounter1 > Tcounter2))then --7 points +1 adventage
					NS <= S;
					s_set1 <= '1';
				elsif (Tcounter2 = 70) then
					NS <= S;
					s_set2 <= '1';
				elsif((Tcounter2 >= 7) and (Tcounter2 > Tcounter1) and Tcounter2 - Tcounter1 > 1)then
					NS <= S;
					s_set2 <= '1';
				end if;
			else
				if (counter1 = "100") then
					s_set1 <= '1';
				elsif (counter2 = "100") then
					s_set2 <= '1';
				elsif(counter1 ="011" and counter2 = "011") then -- deuce
					NS <= D;
					game_Pt1 <= '0';
					game_Pt2 <= '0';
				elsif (counter1 ="011") then
					game_Pt1 <= '1';
					NS <= S;
				elsif (counter2 = "011") then
					game_Pt2 <= '1';
					NS <= S;
				else
					NS <= S;
				end if;
			end if;
			
		when D =>
			if(counter1 = "110")then -- adventage j1
				NS <= A1;
				game_Pt1 <= '1';
			elsif(counter2 = "110") then -- adventage j2
				NS <= A2;
				game_Pt2 <= '1';
			else
				NS <= D;
				game_Pt1 <= '0';
				game_Pt2 <= '0';
			end if;
			
		when A1 =>
			if (counter1 = "111") then
				game_Pt1 <= '0';
				NS <= S;
				s_set1 <= '1';
			elsif (counter2 = "110") then
				NS <= D;
				game_Pt1 <= '0';
			else
				NS <= A1;
				game_Pt1 <= '1';
			end if;
			
		when A2 =>
			if (counter2 = "111") then
				NS <= S;
				game_Pt2 <= '0';
				s_set2 <= '1'; 
			elsif (counter1 = "110") then
				NS <= D;
				game_Pt2 <= '0';
			else 
				NS <= A2;
				game_Pt2 <= '1';
			end if;
		end case;
	end process;
	
	hex_proc: process(counter1,counter2)
	begin
		s_c1 <= counter1;
		s_c2 <= counter2;
		if(counter1 = "110")then --Ad 40
			s_c2 <= "011";
		elsif(counter2 = "110")then
			s_c1 <= "011";
		end if;
	end process;
	
	serve: process(reset,counter1,counter2)
	begin
		if(reset = '1')then
			j1 <= '1';
			j2 <= '0';
		elsif(falling_edge(clk))then
			if(tb = '0')then
				if(s_set1 = '1' or s_set2 = '1')then
					if(j1 = '1')then
						j1<= '0';
						j2<= '1';
					else
						j1<= '1';
						j2<= '0';
					end if;
				end if;
			else
				if((((Tcounter1 + Tcounter2) rem 2) /= 0) and odd = '1')then
					odd <= '0';
					if(j1 = '1')then
						j1<= '0';
						j2<= '1';
					else
						j1<= '1';
						j2<= '0';
					end if;
				elsif(((Tcounter1 + Tcounter2) rem 2) = 0)then 
					odd <= '1';
				end if;
			end if;
		end if;
	end process;
	
	player1 <= j1;
	player2 <= j2;
	dOut1 <= std_logic_vector(s_c1);
	dOut2 <= std_logic_vector(s_c2);
	tOut1 <= std_logic_vector(Tcounter1);
	TOut2 <= std_logic_vector(Tcounter2);
	set1 <= s_set1;
	set2 <= s_set2;
	
end Behav;