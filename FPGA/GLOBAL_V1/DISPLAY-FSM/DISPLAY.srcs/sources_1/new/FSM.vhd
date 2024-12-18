library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use work.tipos_personalizados.all;
--library UNISIM;
--use UNISIM.VComponents.all;

entity FSM is
    Port (
        clk: in std_logic ;                          -- Reloj de entrada
        reset: in STD_LOGIC;                          -- reset de entrada
        
        s_in_dados: in STD_LOGIC;
        sw_enclave: in std_logic_vector(4 downto 0);
        dados_listos: in std_logic;
        puntuacion_listos: in std_logic;
        
        boton_arriba: in std_logic;
        boton_abajo: in std_logic;
        boton_enter: in std_logic;
        
        habilitador_display: out std_logic;
        letras : out integer range 0 to 32;       -- Letras (4 bits), proporcionadas por la FSM
        intermitente: out STD_LOGIC;
        habilitador_num: out STD_LOGIC;
        dados_conservar: out std_logic_vector(4 downto 0);
        suma_al_total: out std_logic
);
end FSM;

architecture Behavioral of FSM is
--CREO QUE TODAS ESTAS SEÑALES DEBEN GESTIONARLAS CONTADORES EXTERNOS
--Y MEMORIA EXTERNA DE LA FSM Y QUE ESTO LO RECIBA COMO ENTRADA Y QUE HAGA CAMBIAR
--POR SALIDAS DE LA MISMA FSM
signal etapa: integer range 1 to 10:=1;
signal n_jugadores: integer range 1 to 10:=2;--Si introducimos mas jugadores empezaría en 1
signal caso_punto: integer range 1 to 13:=1;
signal contador_dado: integer range 1 to 4:=1;
signal contador_turnos: integer range 1 to 30:=1;
signal jugadores: jugadores_2;
signal indice_jugador: integer range 1 to 2:=2;
--signal jugador_1: std_logic_vector(13 downto 1);
--signal jugador_2: std_logic_vector(13 downto 1);
begin
--etapa 1 saludo
process(clk,etapa)

begin
    --etapa <= etapa mod 9;
    case etapa is
        when 1 => --INCIO
            --yahtzee
            letras <= 0;
            habilitador_num <= '1';--solo muestra los primeros 5 displays
            -- ENTER PARA PASAR AL SIGUIENTE ESTADO
            if boton_enter = '1' then
                etapa <= 2;
            end if; 
        
        when 2 =>--JUGADORES en caso de querer meter mas de 2 jugadores
            letras <= 17;
            jugadores(1) <= (others =>'0'); 
            jugadores(2) <= (others =>'0'); 
            --Necesitamos que este estado "puntuaciones" muestre 2
            habilitador_num <= '1';
            --pasamos al siguiente estado
            if boton_enter = '1' then
                etapa <= 3;
            end if;
            
        when 3 =>--CAMBIA TURNOS
        --defino ciclos pero antes digo en que turno estoy
            --DISPLAY --> Turn- "NUMERO DE TURNO"
           
            --salida de contador puntos (n_turno salida)
            --n_turno <= contador_turnos;
            
            
            --Como he declarado el valor incial 2 cuando empiece pasará por jugador 1
            --en el primer turno
            
            if indice_jugador = 2 then 
                indice_jugador <= 1;
            else 
                indice_jugador <= 2;
            end if; 
            etapa <= 4;
            -- buscar manera de ir sumando y restando con up y down
            --señal a sumar uno para el contador (tenemos que crear contador)
            --señal de contador como entrada a puntuaciones y este caso "letras" mostrar el turn 
            
        when 4 =>    
             letras <= 15;--JUGADOR NUMERO
             habilitador_num <= '1';
             
             if boton_enter = '1' then
                etapa <= 5;
             end if;
        
        when 5 =>--Lanzamiento de dados no enclavados
            --letras de 1 a 13 en binario para los casos
            --O 1 depende de si 1 o 0 activa o desactiva el genrador de num aleatorio
            --dados_conservar <= "00000";
            for i in 0 to 4 loop
                if sw_enclave(i) = '1' then 
                    dados_conservar(i)<= '1';
                else
                    dados_conservar(i)<= '0';    
                end if;
            end loop;
            contador_dado<= contador_dado+1;
            etapa <= 5;
         
         when 5 => --Confirma que se hagan las 3 tiradas
            --Mostrar en letras cada una de los dados y con eso se relanza dados
            letras <= "10000";--Numero 16 
            habilitador_num <= '1';
            
            if boton_enter = '1' and dados_listos = '1' then
                if contador_dado = 3 then
                    etapa <= 6;
                    contador_dado<= 0;
                else
                    etapa<=4;
                end if;         
            end if; 
        
        when 6 =>--DESGINA EL CASO A PUNTUACION Y PANTALLA
            habilitador_num <= '1';
            --Hago la transformación porque coinciden "caso_punto" con "letras"
            letras <= std_logic_vector (to_unsigned(caso_punto,5));
            
            if puntuacion_listos = '1' then 
                if boton_arriba = '1' then
                    caso_punto <= caso_punto + 1;
                    if jugadores(indice_jugador)(caso_punto) = '1' then 
                        caso_punto <= caso_punto + 1;    
                    end if;
                    if caso_punto > 13 then
                        caso_punto <= 0;
                    end if;
                
                elsif boton_abajo = '1' then 
                    caso_punto <= caso_punto - 1;
                    if jugadores(indice_jugador)(caso_punto) = '1' then 
                        caso_punto <= caso_punto - 1;    
                    end if;
                    if caso_punto < 1 then
                        caso_punto <= 13;
                    end if;
                
                elsif boton_enter = '1' then
                    --señal para agregar ese dato de ptos al los puntos del jugador
                    suma_al_total <= '1';
                    jugadores(indice_jugador)(caso_punto) <= '1' ;
                    contador_turnos <= contador_turnos + 1; 
                    if jugadores(1) = "1111111111111" and jugadores(2) = "1111111111111" then
                        etapa <= 7;
                    else
                        etapa <= 3;
                    end if; 
              
                end if;
            end if;
        
        when 7 => -- MUESTRA PUNTOS JUGADOR 1
            letras <= "10001";--Numero 17 JUG1- puntos 
            habilitador_num <= '1'; 
            if boton_enter = '1' then
                etapa <=8 ;
            end if;
        
        when 8 =>
            letras <= "10010";--Numero 17 JUG2- puntos
            habilitador_num <= '1'; 
            if boton_enter = '1' then
                etapa <=9 ;
            end if;
        
        when 9 =>
            letras <= "10011";--FIN
            habilitador_num <= '0'; 
            if boton_enter = '1' then
                etapa <=10 ;
            end if;
        
        when 10 =>
            letras <= "10100";--REINICIAR
             habilitador_num <= '0'; 
            if boton_enter = '1' then
                etapa <=1 ;
            end if;
        
        when others =>
            etapa <=0;
        
        end case;
             
end process;    
--etapa 2 numero de jugadores???
--etapa 3 dice el turno en el que estamos
--etapa 4 tirar dados

--etapa 3 define ciclo de 13 casos hasta completar todos los casos de juego
--etapa 4 => ciclo 3 tiradas 5 dados
--etapa 5 => 
    --suma de puntos, muestra los nombres de cada etapa y los puntos que ganaríamos
    --tambien hay que tener en cuanta que si el estado ya ha sido usado y no volver a pasar por ahi
--etapa 6 muestra puntos totales de cada jugador???
--etapa 7 gracias por jugar
--etapa 8 reiniciar

end Behavioral;
