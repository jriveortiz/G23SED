library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use work.TiposComunes.all; -- Asegúrate de que este paquete esté disponible

entity case_tcy_tb is
    -- No hay puertos en un testbench
end case_tcy_tb;

architecture Behavioral of case_tcy_tb is

    -- Declaración de señales locales para conectar a la DUT (Device Under Test)
    signal clk         : std_logic := '0';
    signal reset       : std_logic := '0';
    signal seleccionar : std_logic := '0'; -- Declaración de la señal
    signal dados       : arrayofintegers := (0, 0, 0, 0, 0); -- Inicializa con ceros
    signal resultado   : unsigned(9 downto 0);
    signal ready       : std_logic;

    -- Constantes para los valores genéricos
    constant param : integer := 4;  -- Cambiar según el caso
    constant res   : integer := 30; -- Valor de salida esperado

begin

    -- Instancia de la DUT
    uut: entity work.case_tcy_prueba
        generic map (
            param => param,
            res   => res
        )
        port map (
            clk         => clk,
            reset       => reset,
            seleccionar => seleccionar, -- Conexión de la señal
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
        wait for 10 ns;
        reset <= '0';
        wait for 10 ns;

        -- Caso 1: Dados sin coincidencias
        seleccionar <= '1';
        dados <= (1, 2, 3, 4, 5);
        wait for 40 ns;

        -- Caso 2: Dados con 2 valores iguales a param
        seleccionar <= '0';
        dados <= (2, 2, 2, 2, 5); -- Aquí, param = 2
        wait for 40 ns;

        -- Caso 3: Dados con 3 valores iguales a param
        seleccionar <= '1';
        dados <= (2, 2, 2, 4, 5);
        wait for 40 ns;

        -- Caso 4: Dados con ningún valor igual a param
        seleccionar <= '0';
        dados <= (5, 5, 5, 5, 5);
        wait for 40 ns;

        -- Caso final: Stop
        seleccionar <= '0';
        reset <= '1';
        wait for 10 ns;
        reset <= '0';

        -- Finalizar simulación
        assert false report "Fin del testbench" severity note;
        wait;
    end process;

end Behavioral;

