library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity demux_16_to_1 is
    Port (
        sel : in integer range 0 to 15;  -- Selector (integer de 0 a 15)
        inputs : in unsigned(9 downto 0) vector(15 downto 0);  -- Vector de 16 entradas de 10 bits
        output : out unsigned(9 downto 0)  -- Salida de 10 bits
    );
end demux_16_to_1;

architecture Behavioral of demux_16_to_1 is
begin
    -- Asignación concurrente usando 'with select'
    with sel select
        output <= inputs(0)  when 0,
                  inputs(1)  when 1,
                  inputs(2)  when 2,
                  inputs(3)  when 3,
                  inputs(4)  when 4,
                  inputs(5)  when 5,
                  inputs(6)  when 6,
                  inputs(7)  when 7,
                  inputs(8)  when 8,
                  inputs(9)  when 9,
                  inputs(10) when 10,
                  inputs(11) when 11,
                  inputs(12) when 12,
                  inputs(13) when 13,
                  inputs(14) when 14,
                  inputs(15) when 15,
                  (others => '0') when others;  -- En caso de que el selector esté fuera del rango

end Behavioral;
