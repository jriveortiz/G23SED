library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use work.TiposComunes.all; -- Asegúrate de que este paquete esté disponible

entity case_i_ns_tb is
    -- No hay puertos en un testbench
end case_i_ns_tb;

architecture Behavioral of case_i_ns_tb is

    -- Declaración de señales locales para conectar a la DUT
    signal clk         : std_logic := '0';
    signal reset       : std_logic := '0';
    signal seleccionar : std_logic := '0';
    signal dados       : arrayofintegers := (0, 0, 0, 0, 0); -- Inicializa con ceros
    signal resultado   : unsigned(9 downto 0);
    signal ready       : std_logic;

    -- Constante para el valor genérico param
    constant param : integer := 2;

begin

    -- Instancia de la DUT (Device Under Test)
    uut: entity work.case_i_ns
        generic map (
            param => param
        )
        port map (
            clk         => clk,
            reset       => reset,
            seleccionar => seleccionar,
            dados       => dados,
            resultado   => resultado,
            ready       => ready
        );

    -- Generador de reloj (50 MHz)
    clk_process : process
    begin
        clk <= '0';
        wait for 5 ns;
        clk <= '1';
        wait for 5 ns;
    end process;

    -- Proceso para estimular las entradas
    stimulus_process: process
    begin
        -- Caso inicial: Reset activo
        reset <= '1';
        wait for 20 ns;
        reset <= '0';

        -- Caso 1: Sin coincidencias
        seleccionar <= '1';
        dados <= (1, 3, 4, 5, 6); -- Ningún valor coincide con param
        wait for 20 ns;

        -- Caso 2: Una coincidencia
        dados <= (2, 3, 4, 5, 6); -- Un valor coincide con param
        wait for 20 ns;

        -- Caso 3: Dos coincidencias
        dados <= (2, 3, 2, 5, 6); -- Dos valores coinciden con param
        wait for 20 ns;

        -- Caso 4: Tres coincidencias
        dados <= (2, 2, 2, 5, 6); -- Tres valores coinciden con param
        wait for 20 ns;

        -- Caso 5: Reinicio
        seleccionar <= '0';
        reset <= '1';
        wait for 10 ns;
        reset <= '0';

        -- Finalizar simulación
        assert false report "Fin del testbench" severity note;
        wait;
    end process;

end Behavioral;

