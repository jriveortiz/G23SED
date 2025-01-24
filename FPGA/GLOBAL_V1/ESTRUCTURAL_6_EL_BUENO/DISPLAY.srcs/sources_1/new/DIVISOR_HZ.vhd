library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity DIVISOR_HZ is
    Port (
        CLK_IN : in STD_LOGIC;
        FACTOR : in integer;          -- Factor dinámico
        CLK_OUT : out STD_LOGIC
    );
end DIVISOR_HZ;

architecture Behavioral of DIVISOR_HZ is
    -- Rango amplio para el contador, suponiendo que FACTOR <= 2^24-1
    signal CONTADOR : integer range 0 to 16777215 := 0;
    signal CLK_TEMP : STD_LOGIC := '0';
begin
    process(CLK_IN)
    begin
        if rising_edge(CLK_IN) then
            if FACTOR > 1 then  -- Asegurarse de que FACTOR sea válido
                if CONTADOR = FACTOR - 1 then
                    CONTADOR <= 0;
                    CLK_TEMP <= NOT CLK_TEMP;
                else
                    CONTADOR <= CONTADOR + 1;
                end if;
            else
                -- FACTOR <= 1 se considera inválido, mantenemos CLK_TEMP sin cambios
                CONTADOR <= 0;
            end if;
        end if;
    end process;

    CLK_OUT <= CLK_TEMP;
end Behavioral;
