-- Code your testbench here
library IEEE;
use IEEE.std_logic_1164.all;

-- Code your testbench here
library IEEE;
use IEEE.std_logic_1164.all;

entity testbench is

end testbench;

architecture tb of testbench is

component full_adder is
port(
  A: in std_logic;
  B: in std_logic;
  Cin: in std_logic;
  S: out std_logic;
  Cout: out std_logic
);
end component;

signal a_in, b_in, c_in, s_out, c_out: std_logic;

begin

	DUT: full_adder port map(a_in, b_in, c_in, s_out, c_out);
    
    process
    begin
    	a_in <= '0';
        b_in <= '0';
        c_in <= '0';
        wait for 1 ns;
        
        a_in <= '0';
        b_in <= '0';
        c_in <= '1';
        wait for 1 ns;
        
        a_in <= '0';
        b_in <= '1';
        c_in <= '0';
        wait for 1 ns;
        
        a_in <= '0';
        b_in <= '1';
        c_in <= '1';
        wait for 1 ns;
        
        a_in <= '1';
        b_in <= '0';
        c_in <= '0';
        wait for 1 ns;
        
        a_in <= '1';
        b_in <= '0';
        c_in <= '1';
        wait for 1 ns;
        
        a_in <= '1';
        b_in <= '1';
        c_in <= '0';
        wait for 1 ns;
        
        a_in <= '1';
        b_in <= '1';
        c_in <= '1';
        wait for 1 ns;
        
        wait;
    end process;
end tb;    