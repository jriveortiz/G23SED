library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity FSM_tb is
--
end FSM_tb;

architecture behavioral of FSM_tb is

    component FSM
        Port (
            clk: in std_logic;
            reset: in std_logic;
            s_in_dados: in std_logic;
            sw_enclave: in std_logic_vector(4 downto 0);
            dados_listos: in std_logic;
            puntuacion_listos: in std_logic;
            boton_arriba: in std_logic;
            boton_abajo: in std_logic;
            boton_enter: in std_logic;
            habilitador_dados: out std_logic;
            habilitador_display: out std_logic;
            letras: out integer range 0 to 32;
            intermitente: out std_logic;
            habilitador_num: out std_logic;
            tirar_dados: out std_logic_vector(4 downto 0);
            jugador_n: out std_logic
        );
    end component;

    signal clk: std_logic := '0';
    signal reset: std_logic := '0';
    signal s_in_dados: std_logic := '0';
    signal sw_enclave: std_logic_vector(4 downto 0) := (others => '0');
    signal dados_listos: std_logic := '0';
    signal puntuacion_listos: std_logic := '0';
    signal boton_arriba: std_logic := '0';
    signal boton_abajo: std_logic := '0';
    signal boton_enter: std_logic := '0';
    signal habilitador_dados: std_logic;
    signal habilitador_display: std_logic;
    signal letras: integer range 0 to 32;
    signal intermitente: std_logic;
    signal habilitador_num: std_logic;
    signal tirar_dados: std_logic_vector(4 downto 0);
    signal jugador_n: std_logic;

    
    constant clk_period: time := 10 ns;

begin
  
    uut: FSM
        Port map (
            clk => clk,
            reset => reset,
            s_in_dados => s_in_dados,
            sw_enclave => sw_enclave,
            dados_listos => dados_listos,
            puntuacion_listos => puntuacion_listos,
            boton_arriba => boton_arriba,
            boton_abajo => boton_abajo,
            boton_enter => boton_enter,
            habilitador_dados => habilitador_dados,
            habilitador_display => habilitador_display,
            letras => letras,
            intermitente => intermitente,
            habilitador_num => habilitador_num,
            tirar_dados => tirar_dados,
            jugador_n => jugador_n
        );

    clk_process: process
    begin
        while True loop
            clk <= '0';
            wait for clk_period / 2;
            clk <= '1';
            wait for clk_period / 2;
        end loop;
    end process;

    stim_proc: process
    begin
        -- Reset inicial
        reset <= '1';
        wait for 20 ns;
        reset <= '0';

        -- Etapa 1: Inicio
        boton_enter <= '1';
        wait for clk_period;
        boton_enter <= '0';
        wait for 50 ns;

        -- Etapa 2: Jugadores
        boton_enter <= '1';
        wait for clk_period;
        boton_enter <= '0';
        wait for 50 ns;

        -- Etapa 3: Cambia jugadores
        wait for clk_period;

        -- Etapa 4: Suma turnos
        wait for clk_period;

        -- Etapa 5: Muestra turno
        boton_enter <= '1';
        wait for clk_period;
        boton_enter <= '0';
        wait for 50 ns;

        -- Etapa 6: Lanzamiento de dados
        boton_enter <= '1';
        wait for clk_period;
        boton_enter <= '0';
        wait for 50 ns;

        -- Etapa 7: Confirmar tiradas
        dados_listos <= '1';
        boton_enter <= '1';
        wait for clk_period;
        boton_enter <= '0';
        dados_listos <= '0';
        wait for 50 ns;

        -- Etapa 8: Validar switches enclavados
        sw_enclave <= "11111";
        wait for clk_period;
        sw_enclave <= "00000";
        wait for 50 ns;

        -- Etapa 9: Designar caso puntuación
        puntuacion_listos <= '1';
        boton_arriba <= '1';
        wait for clk_period;
        boton_arriba <= '0';
        boton_abajo <= '1';
        wait for clk_period;
        boton_abajo <= '0';
        boton_enter <= '1';
        wait for clk_period;
        boton_enter <= '0';
        puntuacion_listos <= '0';
        wait for 50 ns;

        -- Etapa 10: Mostrar puntos jugador 1
        boton_enter <= '1';
        wait for clk_period;
        boton_enter <= '0';
        wait for 50 ns;

        -- Etapa 11: Mostrar puntos jugador 2
        boton_enter <= '1';
        wait for clk_period;
        boton_enter <= '0';
        wait for 50 ns;

        -- Etapa 12: Fin
        boton_enter <= '1';
        wait for clk_period;
        boton_enter <= '0';
        wait for 50 ns;

        -- Etapa 13: Reiniciar
        boton_enter <= '1';
        wait for clk_period;
        boton_enter <= '0';
        wait for 50 ns;

        -- Fin simulacion
        wait for 500 ns;
        wait;
    end process;

end behavioral;
