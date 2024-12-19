library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

package types_pkg is
    type integer_vector is array (natural range <>) of integer;
    type positive_vector is array (natural range <>) of integer range 1 to integer'high;
end package types_pkg;

package body types_pkg is
    -- 
end package body types_pkg;

