-- Code your testbench here
library IEEE;
use IEEE.std_logic_1164.all;

-- Code your testbench here
library IEEE;
use IEEE.std_logic_1164.all;

entity testbench is

end testbench;

architecture tb of testbench is

component multiplexer_TwoOne is
port(
  A: in std_logic;
  B: in std_logic;
  S: out std_logic;
  C: out std_logic
);
end component;

signal a_in, b_in, s_in, y_out: std_logic;

begin

	DUT: multiplexer_TwoOne port map(a_in, b_in, s_in, y_out);
    
    process
    begin
    	a_in <= '0';
        b_in <= '0';
        s_in <= '0';
        wait for 1 ns;
        
        a_in <= '0';
        b_in <= '0';
        s_in <= '1';
        wait for 1 ns;
        
        a_in <= '0';
        b_in <= '1';
        s_in <= '0';
        wait for 1 ns;
        
        a_in <= '0';
        b_in <= '1';
        s_in <= '1';
        wait for 1 ns;
        
        a_in <= '1';
        b_in <= '0';
        s_in <= '0';
        wait for 1 ns;
        
        a_in <= '1';
        b_in <= '0';
        s_in <= '1';
        wait for 1 ns;
        
        a_in <= '1';
        b_in <= '1';
        s_in <= '0';
        wait for 1 ns;
        
        a_in <= '1';
        b_in <= '1';
        s_in <= '1';
        wait for 1 ns;
        
        wait;
    end process;
end tb;    