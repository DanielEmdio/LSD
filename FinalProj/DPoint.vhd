library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity DPoint is
	port(clk     : in std_logic;
		  setPt   : in  std_logic;
		  matchPt : in  std_logic;
		  win     : in  std_logic;
		  enable  : in  std_logic;
		  pulse   : in  std_logic;
		  decOut_n : out std_logic_vector(6 downto 0));
end DPoint;

architecture Behavioral of DPoint is
	signal counter : unsigned(1 downto 0);
begin
	counte : process(win,pulse) -- shift leters 
	begin
		if(win = '1')then
			if(falling_edge(pulse))then
				counter <= counter + 1;
			end if;
		end if;
	end process;
	
	process(matchPt, setPt,counter,win)
	begin
		if(win = '1')then
			if(enable = '1')then
				if(falling_edge(clk))then
					case counter is
						when "00" => decOut_n <= "0001000"; --A
						when "01" => decOut_n <= "0000110"; --E
						when "10" => decOut_n <= "0001000"; --A
						when "11" => decOut_n <= "0001000"; --A
						when others => decOut_n <= "1111111";
					end case;
				end if;
			else
				decOut_n <= "1111111";
			end if;
		else
			if(enable = '1')then
				if(matchPt = '1')then
					decOut_n <= "1001000";
				elsif(setPt = '1')then
					decOut_n <= "0010010";
				else
					decOut_n <= "1111111";
				end if;
			else
				decOut_n <= "1111111";
			end if;
		end if;
	end process;
end Behavioral;