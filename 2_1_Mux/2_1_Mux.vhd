-- Code your design here
library IEEE;
use IEEE.std_logic_1164.all;

entity multiplexer_TwoOne is
port(
  A: in std_logic;
  B: in std_logic;
  S: in std_logic;
  Y: out std_logic
);
end multiplexer_TwoOne;

architecture abc of multiplexer_TwoOne is
begin
  Y <= (not(S) and A) or (S and B) ;
end abc;
