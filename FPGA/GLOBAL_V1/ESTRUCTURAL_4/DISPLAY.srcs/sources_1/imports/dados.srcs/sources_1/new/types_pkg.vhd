library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

package types_pkg is
    type integer_vector is array (natural range <>) of integer;
    type positive_vector is array (natural range <>) of integer range 1 to integer'high;
    type ArrayOfIntegers6 is array (5 downto 0) of INTEGER;
end package types_pkg;

package TiposComunes is
    --type ArrayOfIntegers is array (4 downto 0) of INTEGER;
    --type ArrayOfIntegers6 is array (5 downto 0) of INTEGER;
end TiposComunes;