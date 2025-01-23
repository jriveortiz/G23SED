library IEEE;

use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;
use work.types_pkg.all;

entity TB_DEFORMADO is
--  Port ( );
end TB_DEFORMADO;

architecture Behavioral of TB_DEFORMADO is
    signal clk: std_logic := '0';
    signal reset: std_logic := '0';
    signal sw_enclave: std_logic_vector(4 downto 0) := (others => '0');
    signal dados_listos: std_logic := '0';
    signal puntuacion_listos_1: std_logic := '0';
    signal puntuacion_listos_2: std_logic := '0';
    signal boton_arriba: std_logic := '0';
    signal boton_abajo: std_logic := '0';
    signal boton_enter: std_logic := '0';
    SIGNAL dados: integer_vector(4 downto 0);
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
    constant clk_period: time := 10 ns;

begin
UUT: ENTITY WORK.DEFORMADO PORT MAP(
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
    leds => leds,
    dados => dados
);
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


end Behavioral;
