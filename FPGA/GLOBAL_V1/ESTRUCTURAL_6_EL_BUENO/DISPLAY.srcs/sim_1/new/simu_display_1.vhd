library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity TB_DISPLAY_PUNTOS is
end TB_DISPLAY_PUNTOS;

architecture Behavioral of TB_DISPLAY_PUNTOS is

    -- Componentes del DUT
    component DISPLAY_PUNTOS is
        Port (
            CLK      : in STD_LOGIC;
            puntos   : in unsigned(9 downto 0);
            letras   : in std_logic_vector(3 downto 0);
            digictrl : out unsigned(7 downto 0);
            segmentos: out STD_LOGIC_VECTOR(6 downto 0)
        );
    end component;

    -- Señales del testbench
    signal CLK      : std_logic := '0';
    signal puntos   : unsigned(9 downto 0);
    signal letras   : std_logic_vector(3 downto 0);
    signal digictrl : unsigned(7 downto 0);
    signal segmentos: std_logic_vector(6 downto 0);

    constant CLK_PERIOD : time := 10 ns; -- 100 MHz = 10 ns por ciclo

begin

    -- Instancia del DUT
    DUT: DISPLAY_PUNTOS
        port map (
            CLK      => CLK,
            puntos   => puntos,
            letras   => letras,
            digictrl => digictrl,
            segmentos => segmentos
        );

    -- Generador de reloj
    clk_gen: process
    begin
        while true loop
            CLK <= '0';
            wait for CLK_PERIOD / 2;
            CLK <= '1';
            wait for CLK_PERIOD / 2;
        end loop;
    end process clk_gen;

    -- Generador de señales de prueba
    stimulus: process
        variable puntos_count : integer := 0; -- Contador para generar puntos
    begin
        --Prueba 1: letras = "0000" y puntos en 10 valores distribuidos en 1 segundo
        letras <= "0000";
        for i in 0 to 9 loop
            puntos <= to_unsigned(puntos_count, 10); -- Incrementar puntos
            puntos_count := puntos_count + 121; -- Distribuir valores entre 0 y 999
            wait for 100 ms; -- Cambiar cada 100 ms
        end loop;

        -- Prueba 2: letras = "1111" (todos los segmentos apagados)
        letras <= "1111";
        wait for 10000 ms;

        --Prueba 3: letras = "0001" (otro caso)
        letras <= "0001";
        puntos <= to_unsigned(555, 10); -- Fijar puntos en 555
        wait for 300 ms;

        -- Fin de la simulación
        wait;
    end process stimulus;

end Behavioral;
