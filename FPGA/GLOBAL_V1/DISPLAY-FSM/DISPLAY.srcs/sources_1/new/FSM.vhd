library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
--library UNISIM;
--use UNISIM.VComponents.all;

entity FSM is
    Port (
        clk: in std_logic ;                          -- Reloj de entrada
        reset: in STD_LOGIC;                          -- Reloj de entrada
        
        s_in_dados: in STD_LOGIC;
        sw_enclave: in std_logic_vector(4 downto 0);
        dados_listos: in std_logic;
        puntuacion_listos: in std_logic;
        
        boton_arriba: in std_logic;
        boton_abajo: in std_logic;
        boton_enter: in std_logic;
        
        habilitador_display: out std_logic;
        letras   : out std_logic_vector(3 downto 0);       -- Letras (4 bits), proporcionadas por la FSM
        intermitente: out STD_LOGIC;
        habilitador_num: out STD_LOGIC;
        dados_conservar: out std_logic_vector(4 downto 0)
);
end FSM;

architecture Behavioral of FSM is
signal etapa: integer range 1 to 8:=1;
begin
--etapa 1 saludo
process(clk,etapa)
begin
    etapa <= etapa mod 9;
    case etapa is
        when 1 => --INCIO
            letras <= "0000";--CASO HOLA EN FILTRO LETRAS
            habilitador_num <= '0';--solo muestra los primeros 5 displays
            -- ENTER PARA PASAR AL SIGUIENTE ESTADO
            if boton_enter = '1' then
                etapa <= etapa +1;
            end if; 
        when 2 =>--JUGADORES
            letras <= "1101";
            habilitador_num <= '0';-- buscar manera de ir sumando y restando con up y down
            
            if boton_enter = '1' then
                etapa <= etapa +1;
            end if;
            
        when 3 =>--defino ciclos pero antes digo en que turno estoy
            letras <= "1101";
            habilitador_num <= '0';-- buscar manera de ir sumando y restando con up y down
            
            if boton_enter = '1' then
                etapa <= etapa +1;
            end if;
        when 4 =>
            
    end case;
end process;    
--etapa 2 numero de jugadores???
--etapa 3 define ciclo de 13 casos hasta completar todos los casos de juego
--etapa 4 => ciclo 3 tiradas 5 dados
--etapa 5 => 
    --suma de puntos, muestra los nombres de cada etapa y los puntos que ganaríamos
    --tambien hay que tener en cuanta que si el estado ya ha sido usado y no volver a pasar por ahi
--etapa 6 muestra puntos totales de cada jugador???
--etapa 7 gracias por jugar
--etapa 8 reiniciar

end Behavioral;
