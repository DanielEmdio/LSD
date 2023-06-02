library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity HexSet1 is
	port(clk      : in std_logic;
		  binInput : in  std_logic_vector(2 downto 0);
		  win      : in  std_logic;
		  enable   : in  std_logic;
		  pulse    : in  std_logic;
		  decOut   : out std_logic_vector(6 downto 0));
end HexSet1;

architecture Behavioral of HexSet1 is
	signal counter : unsigned(1 downto 0);
begin
	counte : process(win,pulse)
	begin
		if(win = '1')then
			if(falling_edge(pulse))then
				counter <= counter + 1;
			end if;
		end if;
	end process;


	Hex : process(win,binInput,counter)
	begin
		if(win = '1') then
			if(enable = '1')then
				if(falling_edge(clk))then
					case counter is
						when "00" => decOut <= "1001000"; --M
						when "01" => decOut <= "0000111"; --T
						when "10" => decOut <= "1000110"; --C
						when "11" => decOut <= "1000110"; --C
						when others => decOut <= "1111111";
					end case;
				end if;
			else
				decOut <= "1111111";
			end if;
		else
			case binInput is
					when "001" => decOut <= "1111001"; --1
					when "010" => decOut <= "0100100"; --2
					when "011" => decOut <= "0110000"; --3
					when "100" => decOut <= "0011001"; --4
					when "101" => decOut <= "0010010";
					when "110" => decOut <= "0000010";
					when "111" => decOut <= "0000000";
					when others => decOut <= "1000000";
				end case;
		end if;
	end process;
end Behavioral;