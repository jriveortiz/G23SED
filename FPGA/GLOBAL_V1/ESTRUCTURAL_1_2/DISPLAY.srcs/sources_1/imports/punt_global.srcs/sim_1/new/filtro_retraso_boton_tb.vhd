----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 25.12.2024 20:54:54
-- Design Name: 
-- Module Name: filtro_retraso_boton_tb - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity filtro_retraso_boton_tb is
end filtro_retraso_boton_tb;

architecture Behavioral of filtro_retraso_boton_tb is
    constant CLK_PERIOD : time := 10 ns; -- Período del reloj

    signal clk   : std_logic := '0';
    signal reset : std_logic := '0';
    signal din   : std_logic := '0';
    signal dout  : std_logic;

begin
    -- Instancia del componente filtro_retraso_boton
    uut: entity work.filtro_retraso_boton
        generic map (
            DELAY_CYCLES => 4,
            DEBOUNCE_CYCLES => 10
        )
        port map (
            clk => clk,
            reset => reset,
            din => din,
            dout => dout
        );

    -- Generación del reloj
    clk_process : process
    begin
        while true loop
            clk <= '0';
            wait for CLK_PERIOD / 2;
            clk <= '1';
            wait for CLK_PERIOD / 2;
        end loop;
    end process;

    -- Estímulos de prueba
    stimulus_process : process
    begin
        -- Reiniciar el sistema
        reset <= '1';
        wait for 2 * CLK_PERIOD;
        reset <= '0';

        -- Simular rebotes: alternar rápidamente
        din <= '1';
        wait for CLK_PERIOD * 3;
        din <= '0';
        wait for CLK_PERIOD * 2;
        din <= '1';
        wait for CLK_PERIOD * 1;
        din <= '0';
        wait for CLK_PERIOD * 4;

        -- Simular señal estable
        din <= '1';
        wait for CLK_PERIOD * 12;

        -- Simular otra señal estable
        din <= '0';
        wait for CLK_PERIOD * 15;

        -- Finalizar simulación
        wait;
    end process;

end Behavioral;

