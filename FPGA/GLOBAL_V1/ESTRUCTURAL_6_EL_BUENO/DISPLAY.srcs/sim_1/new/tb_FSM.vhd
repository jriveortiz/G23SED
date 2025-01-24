library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity FSM_tb is
end FSM_tb;

architecture behavioural of FSM_tb is

    -- Component declaration for the Unit Under Test (UUT)
    component FSM
        Port (
            clk: in std_logic;
            reset: in STD_LOGIC;
            sw_enclave: in std_logic_vector(4 downto 0);
            dados_listos: in std_logic;
            puntuacion_listos_1: in std_logic;
            puntuacion_listos_2: in std_logic;
            boton_arriba: in std_logic;
            boton_abajo: in std_logic;
            boton_enter: in std_logic;
            sumturno1: out std_logic;
            sumturno2: out std_logic;
            habilitador_dados: out std_logic;
            habilitador_display: out std_logic;
            letras: out integer range 0 to 32;
            intermitente: out STD_LOGIC;
            habilitador_num: out STD_LOGIC;
            primer_enter: out STD_LOGIC_vector(13 downto 1);
            tirar_dados: out std_logic_vector(4 downto 0);
            etapa_temp: out integer range 1 to 15;
            jugador_n: out std_logic;
            H_JP1: out std_logic;
            H_JP2: out std_logic;
            leds: out std_logic_vector(16 downto 1)
        );
    end component;

    -- Signals to connect to UUT
    signal clk: std_logic := '0';
    signal reset: std_logic := '0';
    signal sw_enclave: std_logic_vector(4 downto 0) := (others => '0');
    signal dados_listos: std_logic := '0';
    signal puntuacion_listos_1: std_logic := '0';
    signal puntuacion_listos_2: std_logic := '0';
    signal boton_arriba: std_logic := '0';
    signal boton_abajo: std_logic := '0';
    signal boton_enter: std_logic := '0';

    signal sumturno1: std_logic;
    signal sumturno2: std_logic;
    signal habilitador_dados: std_logic;
    signal habilitador_display: std_logic;
    signal letras: integer range 0 to 32;
    signal intermitente: std_logic;
    signal habilitador_num: std_logic;
    signal primer_enter: std_logic_vector(13 downto 1);
    signal tirar_dados: std_logic_vector(4 downto 0);
    signal etapa_temp: integer range 1 to 15;
    signal jugador_n: std_logic;
    signal H_JP1: std_logic;
    signal H_JP2: std_logic;
    signal leds: std_logic_vector(16 downto 1);

    -- Clock period definition
    constant clk_period: time := 10 ns;

begin

    -- Instantiate the Unit Under Test (UUT)
    uut: FSM
        Port map (
            clk => clk,
            reset => reset,
            sw_enclave => sw_enclave,
            dados_listos => dados_listos,
            puntuacion_listos_1 => puntuacion_listos_1,
            puntuacion_listos_2 => puntuacion_listos_2,
            boton_arriba => boton_arriba,
            boton_abajo => boton_abajo,
            boton_enter => boton_enter,
            sumturno1 => sumturno1,
            sumturno2 => sumturno2,
            habilitador_dados => habilitador_dados,
            habilitador_display => habilitador_display,
            letras => letras,
            intermitente => intermitente,
            habilitador_num => habilitador_num,
            primer_enter => primer_enter,
            tirar_dados => tirar_dados,
            etapa_temp => etapa_temp,
            jugador_n => jugador_n,
            H_JP1 => H_JP1,
            H_JP2 => H_JP2,
            leds => leds
        );

    -- Clock process
    clk_process: process
    begin
        while true loop
            clk <= '0';
            wait for clk_period / 2;
            clk <= '1';
            wait for clk_period / 2;
        end loop;
    end process;

    -- Stimulus process
    stim_proc: process
    begin
        -- Initialize Inputs
        reset <= '1';
        sw_enclave <= "00000";
        dados_listos <= '1';
        puntuacion_listos_1 <= '0';
        puntuacion_listos_2 <= '0';
        boton_arriba <= '0';
        boton_abajo <= '0';
        boton_enter <= '0';

        wait for 20 ns;
        
        boton_enter <= '1';
        wait for 30 ns;
        boton_enter <= '0';
        
        boton_enter <= '1';
        wait for 30 ns;
        boton_enter <= '0';
        
        boton_enter <= '1';
        wait for 30 ns;
        boton_enter <= '0';
        
        boton_enter <= '1';
        wait for 30 ns;
        boton_enter <= '0';
        
        boton_enter <= '1';
        wait for 30 ns;
        boton_enter <= '0';
        
        boton_enter <= '1';
        wait for 30 ns;
        boton_enter <= '0';

        boton_enter <= '1';
        wait for 30 ns;
        boton_enter <= '0';
        
        wait for 50 ns;
        dados_listos <= '0';

        -- Test case: Use botones
        boton_arriba <= '1';
        wait for 30 ns;
        boton_arriba <= '0';
        
        boton_arriba <= '1';
        wait for 30 ns;
        boton_arriba <= '0';
        
        boton_arriba <= '1';
        wait for 30 ns;
        boton_arriba <= '0';
        
        boton_arriba <= '1';
        wait for 30 ns;
        boton_arriba <= '0';
        
        boton_arriba <= '1';
        wait for 30 ns;
        boton_arriba <= '0';
        
        boton_arriba <= '1';
        wait for 30 ns;
        boton_arriba <= '0';


        boton_enter <= '1';
        wait for 30 ns;
        boton_enter <= '0';

        -- Finish simulation
        wait for 200 ns;
        wait;
    end process;

end behavioural;


