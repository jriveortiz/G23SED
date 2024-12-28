library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use work.TiposComunes.all; -- Asume que el tipo 'arrayofintegers' se declara aquí

entity punt_glob_tb is
end punt_glob_tb;

architecture Behavioral of punt_glob_tb is
    -- Señales para conectar con la entidad bajo prueba (UUT)
    signal clk         : STD_LOGIC := '0';
    signal reset       : STD_LOGIC := '0';
    signal seleccion   : integer range 0 to 32 := 0;
    signal seleccionar : STD_LOGIC := '0';
    signal seleccionar_pt : STD_LOGIC := '0';
    signal dados       : arrayofintegers := (5, 5, 5, 5, 5);
    signal resultado   : unsigned(9 downto 0);
    signal ready       : STD_LOGIC;

    -- Periodo de reloj
    constant clk_period : time := 10 ns;

begin
    -- Generación de reloj
    clk_process : process
    begin
        clk <= '1';
        wait for clk_period / 2;
        clk <= '0';
        wait for clk_period / 2;
    end process;

    -- Instancia de la Unidad Bajo Prueba (UUT)
    UUT: entity work.punt_glob
        port map (
            clk         => clk,
            reset       => reset,
            seleccion   => seleccion,
            seleccionar => seleccionar,
            seleccionar_pt => seleccionar_pt,
            dados       => dados,
            resultado   => resultado,
            ready       => ready
        );

    -- Proceso de prueba
    stim_proc: process
    begin
        -- Inicialización
        reset <= '1';
        seleccionar <= '0';
        seleccion <= 0;
        wait for 10 ns;

        -- Liberar reset
        reset <= '0';
        wait for 20 ns;

        -- Probar selección de casos
        for i in 0 to 15 loop
            seleccion <= i;
            seleccionar <= '1';
            wait for clk_period;
            seleccionar_pt <= '1';
            wait for clk_period;
            seleccionar <= '0';
            seleccionar_pt <= '0';
            wait for 2 * clk_period;
        end loop;

        -- Cambiar valores de dados y repetir prueba
        dados <= (6, 6, 6, 6, 6);
        for i in 0 to 15 loop
            seleccion <= i;
            seleccionar <= '1';
            wait for clk_period;
            seleccionar_pt <= '1';
            wait for clk_period;
            seleccionar <= '0';
            seleccionar_pt <= '0';
            wait for 2 * clk_period;
        end loop;

        -- Finalizar simulación
        wait;
    end process;

end Behavioral;
