library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity Sum is
	port(clk      : in std_logic;
		  binInput1: in  std_logic_vector(2 downto 0);
		  binInput2: in  std_logic_vector(2 downto 0);
		  win     : in  std_logic;
		  enable  : in  std_logic;
		  pulse   : in  std_logic;
		  decOut   : out std_logic_vector(6 downto 0));
end Sum;

architecture Behavioral of Sum is
	signal binInput : std_logic_vector(3 downto 0);
	signal s_s1,s_s2: unsigned(3 downto 0);
	signal counter : unsigned(1 downto 0);
begin
	s_s1 <= unsigned( '0' & unsigned(binInput1));
	s_s2 <= unsigned( '0' & unsigned(binInput2));
	binInput <= std_logic_vector(s_s1 + s_s2); -- add to calculate total games
	
	counte : process(win,pulse)
	begin
		if(win = '1')then
			if(falling_edge(pulse))then
				counter <= counter + 1;
			end if;
		end if;
	end process;
	
	process(binInput,counter,win)
	begin
		if(win = '1')then -- shift leters 
			if(enable = '1')then
				if(falling_edge(clk))then
					case counter is
						when "00" => decOut <= "0010000"; --G
						when "01" => decOut <= "0010010"; --S
						when "10" => decOut <= "1001000"; --M
						when "11" => decOut <= "1001000"; --M
						when others => decOut <= "1111111";
					end case;
				end if;
			else
				decOut <= "1111111";
			end if;
		else
			case binInput is
				when "0001" => decOut <= "1111001"; --1
				when "0010" => decOut <= "0100100"; --2
				when "0011" => decOut <= "0110000"; --3
				when "0100" => decOut <= "0011001"; --4
				when "0101" => decOut <= "0010010"; --5
				when "0110" => decOut <= "0000010"; --6
				when "0111" => decOut <= "1111000"; --7
				when "1000" => decOut <= "0000000"; --8
				when "1001" => decOut <= "0010000"; --9
				when "1010" => decOut <= "0001000"; --10
				when "1011" => decOut <= "0000011"; --11
				when "1100" => decOut <= "1000110"; --12
				when "1101" => decOut <= "0100001"; --13
				when others => decOut <= "1000000"; --0
			end case;
		end if;
	end process;
end Behavioral;