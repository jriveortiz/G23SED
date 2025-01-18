library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL; -- Para conversiones y operaciones aritméticas
use work.types_pkg.all;

entity tb_case_tcy_p is
-- No se definen puertos en un testbench
end tb_case_tcy_p;

architecture Behavioral of tb_case_tcy_p is

    -- Declaración de constantes genéricas
    constant C_PARAM : integer := 3; -- Ejemplo de valor de parámetro
    constant C_RES   : integer := 20; -- Ejemplo de resultado esperado

    -- Declaración de señales para conectar con la entidad
    signal clk        : std_logic := '0';
    signal reset      : std_logic := '0';
    signal seleccionar: std_logic := '0';
    signal ce         : std_logic := '0';
    signal dados      : integer_vector(4 downto 0) := (others => 0);
    signal resultado  : unsigned(9 downto 0);
    signal ready      : std_logic;

    -- Período del reloj (100 ns = 10 MHz)
    constant CLK_PERIOD : time := 100 ns;

begin

    -- Instanciación de la entidad bajo prueba (UUT)
    uut: entity work.case_tcy_p
        generic map (
            param => C_PARAM,
            res   => C_RES
        )
        port map (
            clk         => clk,
            reset       => reset,
            seleccionar => seleccionar,
            ce          => ce,
            dados       => dados,
            resultado   => resultado,
            ready       => ready
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

    -- Generación de estímulos
    stimulus_process : process
    begin
        -- Inicialización
        reset <= '1';
        seleccionar <= '0';
        ce <= '0';
        dados <= (1, 1, 1, 1, 3); -- Valores iniciales de los dados
        wait for 2 * CLK_PERIOD;

        -- Liberar el reset
        reset <= '0';
        wait for CLK_PERIOD;

        -- Activar CE y probar una operación
        ce <= '1';
        wait for CLK_PERIOD;

        -- Activar seleccionar
        seleccionar <= '1';
        wait for 2 * CLK_PERIOD;

        -- Desactivar seleccionar y CE
        seleccionar <= '0';
        ce <= '0';
        wait for 5 * CLK_PERIOD;

        -- Cambiar los dados para otra prueba
        dados <= (1, 5, 3, 5, 5);
        ce <= '1';
        seleccionar <= '1';
        wait for 3 * CLK_PERIOD;

        -- Finalizar simulación
        wait;
    end process;

end Behavioral;
