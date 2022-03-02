library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity motorcontrol is
		port (	clk			: in	std_logic;
			reset			: in	std_logic;
			direction		: in	std_logic;
			count_in		: in	std_logic_vector (19 downto 0);
			pwm			: out	std_logic
		);
end entity motorcontrol;

architecture behavioural of motorcontrol is
begin
	process(direction, reset, count_in)
	begin
		pwm <= '1';
		if ((direction = '0') AND (unsigned(count_in) > to_unsigned(50000,20))) then
			pwm <= '0';
		end if;

		if ((direction = '1') AND (unsigned(count_in) > to_unsigned(100000,20))) then
			pwm <= '0';
		end if;
	end process;

	

	

	
end architecture behavioural;



	