library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity TB_DIVISOR_HZ is
-- No hay puertos porque es un testbench
end TB_DIVISOR_HZ;

architecture Behavioral of TB_DIVISOR_HZ is

    -- Señales locales para conectar con el DUT (Device Under Test)
    signal CLK_IN  : STD_LOGIC := '0'; -- Reloj de entrada simulado
    signal CLK_OUT : STD_LOGIC;        -- Reloj de salida

    -- Constantes para la simulación
    constant CLK_PERIOD : time := 10 ns; -- Período del reloj de 100 MHz (1/100 MHz = 10 ns)

begin

    -- Instancia del módulo a probar (DUT)
    DUT: entity work.DIVISOR_HZ
        port map (
            CLK_IN  => CLK_IN,
            CLK_OUT => CLK_OUT
        );

    -- Generador de señal de reloj (100 MHz)
    CLK_PROCESS : process
    begin
        while true loop
            CLK_IN <= '1';
            wait for CLK_PERIOD / 2; -- Tiempo alto del ciclo
            CLK_IN <= '0';
            wait for CLK_PERIOD / 2; -- Tiempo bajo del ciclo
        end loop;
    end process;

    -- Monitoreo de la salida (opcional)
    -- Este proceso ayuda a verificar visualmente en la simulación que la salida CLK_OUT se divide correctamente
    MONITOR_PROCESS : process
    begin
        -- Esperar un tiempo inicial para estabilización
        wait for 1000 ms; -- Por ejemplo, observar durante 10 ms
        report "Simulation completed. Check CLK_OUT for correctness." severity note;
        wait; -- Detener la simulación
    end process;

end Behavioral;
