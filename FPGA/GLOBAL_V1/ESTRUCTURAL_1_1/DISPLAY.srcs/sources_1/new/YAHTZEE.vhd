library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use work.tipos_personalizados.all;
use work.types_pkg.all;
--library UNISIM;
--use UNISIM.VComponents.all;

entity YAHTZEE is
    Port ( 
        clk: in std_logic ;                          -- Reloj de entrada
        reset: in STD_LOGIC;                          -- reset de entrada
        
        sw_enclave: in std_logic_vector(4 downto 0);
        
        boton_arriba: in std_logic;
        boton_abajo: in std_logic;
        boton_enter: in std_logic;
        
        digictrl : out unsigned(7 downto 0);              -- Control de los dígitos (8 bits de salida)
        segmentos: out STD_LOGIC_VECTOR(6 downto 0)       -- Segmentos para la visualización de los dígitos (8 bits de salida)
    
    );
end YAHTZEE;

architecture Behavioral of YAHTZEE is
signal up_def,down_def,enter_def,dados_listos,puntuacion_listos,habilitador_dados: std_logic;
signal habilitador_display,intermitente,habilitador_num,jugador_n,primer_enter,segundo_enter:std_logic;
signal letras: integer range 0 to 32;
signal tirar_dados: std_logic_vector(4 downto 0);
signal etapa_temp: integer range 1 to 15;
signal puntos,puntos_1,puntos_2 : unsigned(9 downto 0);
signal dados: integer_vector(4 downto 0);

begin
up: entity work.FILTRO_BOTON port map(clk,boton_arriba,up_def);
down: entity work.FILTRO_BOTON port map(clk,boton_abajo,down_def);
enter: entity work.FILTRO_BOTON port map(clk,boton_enter,enter_def);

fsm: entity work.FSM port map(
    clk => clk,
    reset => reset,
    sw_enclave => sw_enclave,
    dados_listos => dados_listos,
    puntuacion_listos => puntuacion_listos,
    boton_arriba => up_def,
    boton_abajo => down_def,
    boton_enter => enter_def,
    habilitador_dados => habilitador_dados,
    habilitador_display => habilitador_display,
    letras => letras,
    intermitente => intermitente,
    habilitador_num => habilitador_num,
    primer_enter => primer_enter,
    segundo_enter => segundo_enter,
    tirar_dados => tirar_dados,
    etapa_temp => etapa_temp,
    jugador_n => jugador_n 
);

display: entity work.DISPLAY_PUNTOS port map (
    clk => clk,
    habilitador_display => habilitador_display,
    intermitente => intermitente,
    solo_letras => habilitador_num, 
    puntos => puntos,
    letras => letras,
    dados => dados,
    digictrl => digictrl,
    segmentos => segmentos 
);

dados_aleatorios: entity work.generaciondados port map(
    clk => clk,
    rst => reset,
    CE => habilitador_dados,
    tirar_dados => tirar_dados,
    rdy => dados_listos,
    dados => dados
);

--FALTA ENTIDAD PUNTUACIONES
puntuaciones1: entity work.punt_glob port map(
    clk=> clk,
    reset => reset,
    seleccion => letras,
    seleccionar => primer_enter,
    seleccionar_pt => segundo_enter,
    dados => dados,
    resultado => puntos_1,
    ready => puntuacion_listos
);

puntuaciones2: entity work.punt_glob port map(
    clk=> clk,
    reset => reset,
    seleccion => letras,
    seleccionar => primer_enter,
    seleccionar_pt => segundo_enter,
    dados => dados,
    resultado => puntos_2,
    ready => puntuacion_listos
);

mux_fin: entity work.MUX_10_UNSIGNED port map(
    jugador_1=> puntos_1,
    jugador_2=> puntos_2,
    seleccion => jugador_n,
    salida => puntos
    
);



end Behavioral;












