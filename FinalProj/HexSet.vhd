library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity HexSet is
	port(binInput : in  std_logic_vector(2 downto 0);
		  win1     : in  std_logic;
		  win2     : in  std_logic;
		  decOut   : out std_logic_vector(6 downto 0));
end HexSet;

architecture Behavioral of HexSet is
begin
	process(win1,win2,binInput)
	begin
		if(win1 = '1' or win2 = '1') then
			decOut <= "1100000"; --J
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