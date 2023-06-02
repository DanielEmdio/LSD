library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Buff3lebTo11 is -- make all the unused red leds blink at the end
	port ( input : in STD_LOGIC_vector(11 downto 0);
			 win   : in std_logic; 
			 enable: in STD_Logic;
		    output: out STD_LOGIC_vector(11 downto 0));
end Buff3lebTo11;

architecture Behavioral of Buff3lebTo11 is
begin
	process(enable)
	begin
		if (win = '0') then
			output <= input;
		else
			if(enable = '1') then
				output(0) <= '0';
				output(1) <= '1';
				output(2) <= '0';
				output(3) <= '1';
				output(4) <= '0';
				output(5) <= '1';
				output(6) <= '0';
				output(7) <= '1';
				output(8) <= '0';
				output(9) <= '1';
				output(10) <= '0';
				output(11) <= '1';
			else
				output(0) <= '1';
				output(1) <= '0';
				output(2) <= '1';
				output(3) <= '0';
				output(4) <= '1';
				output(5) <= '0';
				output(6) <= '1';
				output(7) <= '0';
				output(8) <= '1';
				output(9) <= '0';
				output(10) <='1';
				output(11) <='0';
			end if;
		end if;
	end process;
end Behavioral;