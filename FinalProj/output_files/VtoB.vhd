library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity VtoB is
	port ( input : in STD_LOGIC_vector(0 downto 0);
		    output : out STD_LOGIC);
end VtoB;

architecture Behavioral of VtoB is
begin
	process(input)
	begin
		if(input = "1") then
			output <= '1';
		else
			output <= '0';
		end if;
	end process;
end Behavioral;