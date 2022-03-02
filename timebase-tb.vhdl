library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
-- Please add necessary libraries:

entity timebase_tb is
end entity timebase_tb;


architecture behaviour of timebase_tb is
	component timebase
		port (	clk	: in	std_logic;
		reset		: in	std_logic;
		count_out	: out	std_logic_vector (19 downto 0)); 
	end component;

	signal clk: std_logic := '1';
	signal reset: std_logic := '0';
	signal count_out: std_logic_vector (19 downto 0);
begin

	lbll: timebase port map(clk, reset, count_out);
	
	clk <=  not clk after 10 ns;
	reset <= '0' after 10 ns when reset /= '0' else '1' after 20 ms;

	
end architecture behaviour;
