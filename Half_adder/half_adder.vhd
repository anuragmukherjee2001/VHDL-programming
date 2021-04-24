-- Code your design here
library IEEE;
use IEEE.std_logic_1164.all;

entity half_adder is
port(
  A: in std_logic;
  B: in std_logic;
  S: out std_logic;
  C: out std_logic
);
end half_adder;

architecture abc of half_adder is
begin
  S <= A xor B;
  C <= A and B;
end abc;
