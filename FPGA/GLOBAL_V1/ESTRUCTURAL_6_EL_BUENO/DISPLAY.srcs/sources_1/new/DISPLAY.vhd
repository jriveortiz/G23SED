library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use work.tipos_personalizados.all;
use work.types_pkg.all;
--library UNISIM;
--use UNISIM.VComponents.all;

--La entrada "letras" en verdad es un estado que se programa para cada caso a exponer
entity DISPLAY_PUNTOS is
    Port (
        CLK      : in STD_LOGIC;                          -- Reloj de entrada
        habilitador_display : in std_logic;
        intermitente : in STD_LOGIC;                          -- Reloj de entrada
        solo_letras : in std_logic; 
        puntos : in unsigned(9 downto 0);               -- Puntos (10 bits)
        letras : in integer range 0 to 32;
        dados: in integer_vector(4 downto 0);
        digictrl : out unsigned(7 downto 0);              -- Control de los dígitos (8 bits de salida)
        segmentos: out STD_LOGIC_VECTOR(6 downto 0)       -- Segmentos para la visualización de los dígitos (8 bits de salida)
    );
end DISPLAY_PUNTOS;


architecture Behavioral of DISPLAY_PUNTOS is
signal clk_util: std_logic;
signal clk_intermitente: std_logic;
signal digisel: unsigned(7 downto 0):= "00000001"; 
--SI AUMENTO EL FACTOR LA FRECUENCIA DISMINUYE Y VICEVERSA
-- Calculado previamente para obtener 70HZ dividir entre 2 si parpadea
constant FACTOR_VISUAL: integer:= 1428570/12;--/8 por cada segmento a alimentar
-- Calculado previamente para obtener la intermitente
constant FACTOR_INTERMITENTE: integer:= 5000000;
signal contador: integer range 0 to 7:=0;
signal segmentos_vector: matriz_vectores;
signal unidades,decenas,centenas: STD_LOGIC_VECTOR(3 downto 0):= "0000";


begin
HZ1: entity work.DIVISOR_HZ port map (CLK,FACTOR_VISUAL,clk_util);
HZ2: entity work.DIVISOR_HZ port map (CLK,FACTOR_INTERMITENTE,clk_intermitente);
UTB1: entity work.unsigned_to_bcd port map (CLK,puntos,centenas,decenas,unidades);

process(clk_util,intermitente,habilitador_display)
begin
    if intermitente = '1' then
        segmentos <= (others => '0');
        digictrl <= (others => '1');  
        if clk_intermitente='1' then -- Usa la señal de clk_intermitente como habilitador
            digictrl <= (others => '0');  
        end if;
    elsif habilitador_display = '0' then
        digictrl <= (others => '1');
    elsif rising_edge(clk_util) and habilitador_display = '1' then
        digisel <= rotate_left(digisel, 1); -- Actualiza digisel
        digictrl <= not(digisel); 
        --Se encarga de apagar las seccion de puntuaciones
        if solo_letras = '0' then --habilitador_num
            digictrl(0) <= '1';
            digictrl(1) <= '1';
            digictrl(2) <= '1';
        end if;
        segmentos <= segmentos_vector(contador);
        
        if(contador = 7) then 
            contador <= 0;
        else 
            contador <= contador + 1;
        end if;
    end if;
end process;

D1: entity work.DECODER port map(unidades,solo_letras,segmentos_vector(0));
D2: entity work.DECODER port map(decenas,solo_letras,segmentos_vector(1));
D3: entity work.DECODER port map(centenas,solo_letras,segmentos_vector(2));
D4: entity work.FILTRO_LETRAS port map(letras,dados,segmentos_vector(3),segmentos_vector(4),segmentos_vector(5),segmentos_vector(6),segmentos_vector(7));



end Behavioral;
