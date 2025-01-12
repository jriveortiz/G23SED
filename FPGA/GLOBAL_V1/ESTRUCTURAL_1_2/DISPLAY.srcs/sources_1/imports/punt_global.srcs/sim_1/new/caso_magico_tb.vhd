library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use work.TiposComunes.all; -- Asegúrate de que este paquete esté disponible

entity caso_magico_tb is
    -- No hay puertos en un testbench
end caso_magico_tb;

architecture Behavioral of caso_magico_tb is

    -- Declaración de señales locales para conectar a la DUT (Device Under Test)
    signal clk         : std_logic := '0';
    signal reset       : std_logic := '0';
    signal seleccionar : std_logic := '0';
    signal dados       : arrayofintegers := (0, 0, 0, 0, 0); -- Inicializa con ceros
    signal resultado   : unsigned(9 downto 0);
    signal ready       : std_logic;

begin

    -- Instancia de la DUT (Device Under Test)
    uut: entity work.caso_magico
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

        -- Caso 1: Suma de dados = 2 + 3 + 4 + 5 + 6 = 20
        seleccionar <= '1';
        dados <= (2, 3, 4, 5, 6); -- Suma 20
        wait for 20 ns;

        -- Caso 2: Suma de dados = 1 + 1 + 1 + 1 + 1 = 5
        dados <= (1, 1, 1, 1, 1); -- Suma 5
        wait for 20 ns;

        -- Caso 3: Suma de dados = 0 + 0 + 0 + 0 + 0 = 0
        dados <= (0, 0, 0, 0, 0); -- Suma 0
        wait for 20 ns;

        -- Caso 4: Suma de dados = 10 + 10 + 10 + 10 + 10 = 50
        dados <= (10, 10, 10, 10, 10); -- Suma 50
        wait for 20 ns;

        -- Detener simulación
        assert false report "Fin del testbench" severity note;
        wait;
    end process;

end Behavioral;

