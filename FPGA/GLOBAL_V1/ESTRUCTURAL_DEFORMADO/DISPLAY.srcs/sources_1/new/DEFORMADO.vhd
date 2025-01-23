library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
--use work.tipos_personalizados.all;
use work.types_pkg.all;
entity DEFORMADO is
  Port (
    clk: in std_logic;
    reset: in std_logic;
    sw_enclave: in std_logic_vector(4 downto 0) := (others => '0');
    dados_listos: in std_logic ;
    puntuacion_listos_1: inout  std_logic;
    puntuacion_listos_2: in std_logic;
    boton_arriba: in std_logic;
    boton_abajo: std_logic;
    boton_enter: std_logic;
    dados: in integer_vector(4 downto 0);
    
    sumturno1: inout std_logic;
    sumturno2: out std_logic;
    habilitador_dados: out std_logic;
    habilitador_display: out std_logic;
    letras: inout integer range 0 to 32;
    intermitente: out std_logic;
    habilitador_num: out std_logic;
    primer_enter: inout std_logic_vector(13 downto 1);
    tirar_dados: out std_logic_vector(4 downto 0);
    etapa_temp: out integer range 1 to 15;
    jugador_n: out std_logic;
    H_JP1: inout std_logic;
    H_JP2: out std_logic;
    leds: out std_logic_vector(16 downto 1);
    resultado  : out unsigned(9 downto 0)
   );
end DEFORMADO;

architecture Behavioral of DEFORMADO is
--signal clk: std_logic := '0';
--signal reset: std_logic := '0';
--signal sw_enclave: std_logic_vector(4 downto 0) := (others => '0');
--signal dados_listos: std_logic := '0';
--signal puntuacion_listos_1: std_logic := '0';
--signal puntuacion_listos_2: std_logic := '0';
--signal boton_arriba: std_logic := '0';
--signal boton_abajo: std_logic := '0';
--signal boton_enter: std_logic := '0';

--signal sumturno1: std_logic;
--signal sumturno2: std_logic;
--signal habilitador_dados: std_logic;
--signal habilitador_display: std_logic;
--signal letras: integer range 0 to 32;
--signal intermitente: std_logic;
--signal habilitador_num: std_logic;
--signal primer_enter: std_logic_vector(13 downto 1);
--signal tirar_dados: std_logic_vector(4 downto 0);
--signal etapa_temp: integer range 1 to 15;
--signal jugador_n: std_logic;
--signal H_JP1: std_logic;
--signal H_JP2: std_logic;
--signal leds: std_logic_vector(16 downto 1);


begin
fsm: entity work.FSM port map(
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

puntuaciones1: entity work.punt_glob port map(
    clk=> clk,
    reset => sumturno1,
    CE => H_JP1,
    seleccion => letras,
    seleccionar => primer_enter,
    dados => dados,
    resultado => resultado,
    ready => puntuacion_listos_1
);

end Behavioral;
