library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity EDGEDTCTR is
    Port ( CLK : in STD_LOGIC;
           SYNC_IN : in STD_LOGIC;
           EDGE : out STD_LOGIC);
end EDGEDTCTR;

architecture BEHAVIORAL of EDGEDTCTR is
    signal sreg : std_logic_vector(2 downto 0);  -- Declaración de una señal de 3 bits llamada sreg
begin
    process (CLK)
    begin
        if rising_edge(CLK) then                -- Detecta el flanco ascendente de CLK
            sreg <= sreg(1 downto 0) & SYNC_IN; -- Desplaza los bits en sreg y agrega SYNC_IN al final
        end if;
    end process;

    with sreg select
        EDGE <= '1' when "100",                 -- Asigna '1' a EDGE si sreg es "100"
                '0' when others;                -- Asigna '0' a EDGE en cualquier otro caso
end BEHAVIORAL;
