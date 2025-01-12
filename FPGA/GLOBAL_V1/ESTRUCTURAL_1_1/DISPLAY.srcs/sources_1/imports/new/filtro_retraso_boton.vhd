----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity filtro_retraso_boton is
    generic (
        DELAY_CYCLES : integer := 4; -- Número de ciclos de reloj de retraso
        DEBOUNCE_CYCLES : integer := 10 -- Ciclos para filtrar rebotes
    );
    Port (
        clk   : in  std_logic;      -- Reloj
        reset : in  std_logic;      -- Señal de reinicio
        din   : in  std_logic;      -- Entrada del botón
        dout  : out std_logic       -- Salida con retraso y sin rebotes
    );
end filtro_retraso_boton;

architecture Behavioral of filtro_retraso_boton is
    -- Registro de desplazamiento para el retraso
    signal delay_reg : std_logic_vector(DELAY_CYCLES-1 downto 0) := (others => '0');
    -- Contador para detectar estabilidad en la señal
    signal stable_counter : integer range 0 to DEBOUNCE_CYCLES := 0;
    -- Señal estabilizada del botón después del filtro de rebotes
    signal stable_din : std_logic := '0';
begin
    process(clk, reset)
    begin
        if reset = '1' then
            -- Reiniciar todos los registros
            delay_reg <= (others => '0');
            dout <= '0';
            stable_counter <= 0;
            stable_din <= '0';
        elsif rising_edge(clk) then
            -- Filtro de rebotes
            if din = stable_din then
                -- La señal es estable, aumentar el contador
                if stable_counter < DEBOUNCE_CYCLES then
                    stable_counter <= stable_counter + 1;
                end if;
            else
                -- La señal cambió, reiniciar el contador
                stable_counter <= 0;
            end if;

            -- Actualizar la señal estable solo si el contador llega al límite
            if stable_counter = DEBOUNCE_CYCLES then
                stable_din <= din;
            end if;

            -- Desplazar los valores en el registro de retraso
            delay_reg <= stable_din & delay_reg(DELAY_CYCLES-1 downto 1);
            -- La salida toma el valor más retrasado
            dout <= delay_reg(DELAY_CYCLES-1);
        end if;
    end process;
end Behavioral;
