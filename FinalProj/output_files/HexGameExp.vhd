library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity HexGameExp is
	port(binInput : in  std_logic_vector(2 downto 0);
		  tb       : in  std_logic;
		  win1     : in  std_logic;
		  win2     : in  std_logic;
		  decOut_0 : out std_logic_vector(6 downto 0);
		  decOut_1 : out std_logic_vector(6 downto 0));
end HexGameExp;

architecture Behavioral of HexGameExp is
begin
	process(tb,binInput)
	begin
		if(win1 = '1') then
			decOut <= "1111001";
		elsif(win2 = '1') then
			decOut <= "0100100";
		elsif(tb = '1') then
			decOut_1 <= "1111111";
			case binInput is
					when "001" => decOut_0 <= "1111001"; --1
					when "010" => decOut_0 <= "0100100"; --2
					when "011" => decOut_0 <= "0110000"; --3
					when "100" => decOut_0 <= "0011001"; --4
					when "101" => decOut_0 <= "0010010";
					when "110" => decOut_0 <= "0000010";
					when "111" => decOut_0 <= "0000000";
					when others => decOut_0 <= "1000000";
			end case;
		else
			case binInput is
					when "001" => 
						decOut_1 <= "1111001";
						decOut_0 <= "0010010"; --15
					when "010" => 
						decOut_1 <= "0110000";
						decOut_0 <= "1000000"; --30
					when "011" => 
						decOut_1 <= "0011001";
						decOut_0 <= "1000000"; --40
					when "101" => 
						decOut_1 <= "1111111";
						decOut_0 <= "0100001"; --d
					when "110" => 
						decOut_1 <= "1111111";
						decOut_0 <= "0001000"; --A
					when others => 
						decOut_1 <= "1000000";
						decOut_0 <= "1000000";
				end case;
		end if;
	end process;
	
end Behavioral;
