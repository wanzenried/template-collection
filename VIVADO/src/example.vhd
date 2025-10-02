
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity example is
    Port (  inp : in STD_LOGIC;
            outp : out STD_LOGIC);
end example;

architecture Behavioral of example is

begin

outp <= inp;

end Behavioral;