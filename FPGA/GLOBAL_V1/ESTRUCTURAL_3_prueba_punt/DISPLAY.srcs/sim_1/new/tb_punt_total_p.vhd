library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use work.types_pkg.all;

entity tb_punt_total_p is
-- No se definen puertos en el testbench.
end tb_punt_total_p;

architecture Behavioral of tb_punt_total_p is

    -- Declaración de señales para conectar con la entidad bajo prueba
    signal clk          : std_logic := '0';
    signal reset        : std_logic := '0';
    signal CE           : std_logic := '0';
    signal input1       : unsigned(9 downto 0) := (others => '0');
    signal input2       : unsigned(9 downto 0) := (others => '0');
    signal input3       : unsigned(9 downto 0) := (others => '0');
    signal input4       : unsigned(9 downto 0) := (others => '0');
    signal input5       : unsigned(9 downto 0) := (others => '0');
    signal input6       : unsigned(9 downto 0) := (others => '0');
    signal input7       : unsigned(9 downto 0) := (others => '0');
    signal input8       : unsigned(9 downto 0) := (others => '0');
    signal input9       : unsigned(9 downto 0) := (others => '0');
    signal input10      : unsigned(9 downto 0) := (others => '0');
    signal input11      : unsigned(9 downto 0) := (others => '0');
    signal input12      : unsigned(9 downto 0) := (others => '0');
    signal input13      : unsigned(9 downto 0) := (others => '0');
    signal ready1       : std_logic := '0';
    signal ready2       : std_logic := '0';
    signal ready3       : std_logic := '0';
    signal ready4       : std_logic := '0';
    signal ready5       : std_logic := '0';
    signal ready6       : std_logic := '0';
    signal ready7       : std_logic := '0';
    signal ready8       : std_logic := '0';
    signal ready9       : std_logic := '0';
    signal ready10      : std_logic := '0';
    signal ready11      : std_logic := '0';
    signal ready12      : std_logic := '0';
    signal ready13      : std_logic := '0';
    signal salida       : unsigned(9 downto 0);
    signal ready_total  : std_logic;

    -- Período del reloj (100 ns = 10 MHz)
    constant CLK_PERIOD : time := 100 ns;

begin

    -- Instanciación de la entidad bajo prueba (UUT)
    uut: entity work.punt_total_p
        port map (
            clk         => clk,
            reset       => reset,
            CE          => CE,
            input1      => input1,
            input2      => input2,
            input3      => input3,
            input4      => input4,
            input5      => input5,
            input6      => input6,
            input7      => input7,
            input8      => input8,
            input9      => input9,
            input10     => input10,
            input11     => input11,
            input12     => input12,
            input13     => input13,
            ready1      => ready1,
            ready2      => ready2,
            ready3      => ready3,
            ready4      => ready4,
            ready5      => ready5,
            ready6      => ready6,
            ready7      => ready7,
            ready8      => ready8,
            ready9      => ready9,
            ready10     => ready10,
            ready11     => ready11,
            ready12     => ready12,
            ready13     => ready13,
            salida      => salida,
            ready_total => ready_total
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
        ready1 <= '0';
        ready2 <= '0';
        ready3 <= '0';
        ready4 <= '0';
        ready5 <= '0';
        ready6 <= '0';
        ready7 <= '0';
        ready8 <= '0';
        ready9 <= '0';
        ready10 <= '0';
        ready11 <= '0';
        ready12 <= '0';
        ready13 <= '0';
        wait for 2 * CLK_PERIOD;
        reset <= '0';
    
        -- Activar CE y configurar valores
        CE <= '1';
        input1 <= to_unsigned(3, 10);
        input2 <= to_unsigned(5, 10);
        input3 <= to_unsigned(6, 10);
        input4 <= to_unsigned(1, 10);
        input5 <= to_unsigned(1, 10);
        input6 <= to_unsigned(1, 10);
        input7 <= to_unsigned(1, 10);
        input8 <= to_unsigned(1, 10);
        input9 <= to_unsigned(1, 10);
        input10 <= to_unsigned(1, 10);
        input11 <= to_unsigned(1, 10);
        input12 <= to_unsigned(1, 10);
        input13 <= to_unsigned(1, 10);
        wait for CLK_PERIOD;

        -- Cambiar ready y probar otro conjunto de entradas
        ready1 <= '1';
        wait for CLK_PERIOD;
        ready1 <= '0';
        wait for CLK_PERIOD;
        ready2 <= '1';
        wait for CLK_PERIOD;
        ready2 <= '0';
        wait for CLK_PERIOD;
        ready3 <= '1';
        wait for CLK_PERIOD;
        ready3 <= '0';
        -- Finalizar simulación
        CE <= '0';
        wait for 5 * CLK_PERIOD;
        wait;
    end process;

end Behavioral;

