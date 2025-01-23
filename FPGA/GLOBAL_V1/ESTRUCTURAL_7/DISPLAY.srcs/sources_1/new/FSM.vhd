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
        
        --s_in_dados: in STD_LOGIC;
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
        letras : out integer range 0 to 32;       -- Letras (4 bits), proporcionadas por la FSM
        intermitente: out STD_LOGIC;
        habilitador_num: out STD_LOGIC;
        primer_enter: out  STD_LOGIC_vector(13 downto 1);
--        segundo_enter: out STD_LOGIC;--VALIDACIONES PTS FINAL
        tirar_dados: out std_logic_vector(4 downto 0);
        etapa_temp: out integer range 1 to 15;
        --esto va con un multiplexor a la salida de cada puntuación
        jugador_n,H_JP1,H_JP2: out std_logic;-- '0' para jugador 1 y '1' para jugador 2 
        leds: out std_logic_vector(16 downto 1);
        reset_def: out std_logic
);
end FSM;

architecture Behavioral of FSM is
-- CREO QUE TODAS ESTAS SEÑALES DEBEN GESTIONARLAS CONTADORES EXTERNOS
-- Y MEMORIA EXTERNA DE LA FSM Y QUE ESTO LO RECIBA COMO ENTRADA Y QUE HAGA CAMBIAR
-- POR SALIDAS DE LA MISMA FSM

--signal n_jugadores: integer range 1 to 10:=2; -- Si introducimos mas jugadores empezaría en 1

--signal contador_dado: integer range 0 to 2:=0;
--signal contador_turnos: integer range 0 to 13 := 1; -- se quitara despues
--signal contador_turnos2: integer range 0 to 13 := 1;
--signal jugadores: jugadores_2;--IMPORTANTE vector de casos ok de cada jugador



--signal jugador_1: std_logic_vector(13 downto 1);
--signal jugador_2: std_logic_vector(13 downto 1);
begin
habilitador_display <= '1';
process(clk,reset)
    variable contador_dado: integer range 0 to 3:=0;
    variable jugadores: jugadores_2;--IMPORTANTE vector de casos ok de cada jugador
    variable indice_jugador: integer range 1 to 2 := 2;
    variable flag_sw: std_logic;
    variable etapa: integer range 1 to 16:= 1;
    variable caso_punto: integer range 1 to 13 := 1;
    
     -- Procedimiento para avanzar al siguiente caso no seleccionado
--    procedure avanzar(variable caso: inout integer; 
--                      incremento: integer; 
--                      jugadores: jugadores_2; 
--                      indice: integer) is
--    variable intentos: integer range 0 to 13 := 0; -- Contador de intentos
--    begin
--        for intentos in 0 to 13 loop
--            -- Incrementar o decrementar caso
--            caso := caso + incremento;

--            -- Ajustar para mantener dentro del rango de 1 a 13
--            if caso > 13 then
--                caso := 1;
--            elsif caso < 1 then
--                caso := 13;
--            end if;
            
-- --           intentos := intentos + 1;
--            if jugadores(indice)(caso) = '0' and caso > 13 and caso < 1 then
--                exit;    
--            end if;    
                   
--        end loop;
--    end procedure;

begin
    -- etapa := etapa mod 9;
    -- Reset Global
    habilitador_dados <= '1'; -- tira los dados
    if reset = '0' then
        contador_dado:=0;
        indice_jugador:= 2;
        jugadores(1):= (others=>'0');
        jugadores(2):= (others=>'0');
        caso_punto:= 1;
        etapa := 1;
        reset_def <='1';
        intermitente <= '0';
    elsif rising_edge (clk) then 
        case etapa is
            when 1 => -- INICIO
                -- Muestra escrito Yahtzee
                reset_def <='0';
                letras <= 0;
                habilitador_num <= '1';-- solo muestra los primeros 5 digitos en el display
--                sumturno1 <= '1';
--                sumturno2 <= '1'; 
                -- ENTER PARA PASAR AL SIGUIENTE ESTADO
                if boton_enter = '1' then
                    etapa := 2;
                end if; 
                --leds <= (100000000000000);
            
            when 2 => -- JUGADORES en caso de querer meter mas de 2 jugadores
                --Reset al registro de turno de los jugadores
                jugadores(1) := (others =>'0'); 
                jugadores(2) := (others =>'0'); 
                sumturno1 <= '0';
                sumturno2 <= '0'; 
                -- Necesitamos que este estado "puntuaciones" muestre 2 (Jugador_2)
                --habilitador_num <= '1';
                -- Pasamos al siguiente estado
                --if boton_enter = '1' then
                etapa := 3;
                --end if;
                
            when 3 => -- CAMBIA ENTRE JUGADORES EN CADA RONDA
                sumturno1 <= '1';
                    
                if indice_jugador = 2 then
                    --sumturno2 <= '1'; 
                    indice_jugador := 1;
                    jugador_n <= '0';
                    H_JP1 <= '1';
                    H_JP2 <= '0';
                else 
                    --sumturno1 <= '1';
                    indice_jugador := 2;
                    jugador_n <= '1';
                    H_JP1 <= '0';
                    H_JP2 <= '1';
                end if;
                 
                etapa := 4;
            
--            when 4 => -- SUMA 1 A TURNOS CUANDO PASA POR JP1 (HASTA 13)
--                reset_turnos <= '0';
----                if indice_jugador = 1 then
----                    contador_turnos <= contador_turnos + 1; -- enable al contador   
----                    --señal de sumador
----                else 
----                    contador_turnos2 <= contador_turnos2 + 1;
----                    --señal de sumador 
----                end if;
--                etapa := 5;
                
            when 4 => -- MUESTRA "TURN - N"
                sumturno1 <= '0';
                    
                habilitador_num<= '1';
                --reset_turnos <= '1';
                letras <= 14; -- "Turn-"
                
                 if boton_enter = '1' then
                    etapa := 5;
                 end if;
                
            when 5 =>    
--                 sumturno1 <= '0';
--                 sumturno2 <= '0';
                 
                 habilitador_num <= '0';
                 
                 if indice_jugador = 1 then 
                    letras <= 19; -- Escribe en el display jugador 1 -> JP-1
                 elsif indice_jugador = 2 then 
                    letras <= 20; -- Escribe en el display jugador 2 -> JP-2
                 end if;
                              
                 if boton_enter = '1' then
                    etapa := 6;
                 end if;
                 
            when 6 => -- ETAPA DE TRANSICION
                letras <= 21; -- "dados"
                habilitador_num<= '0';
                
                if boton_enter = '1' then
                    etapa := 7;
                end if;
                
            when 7 => -- LANZAMIENTO DE DADOS NO ENCLAVADOS
                for i in 0 to 4 loop
                    if sw_enclave(i) = '1' then 
                        tirar_dados(i)<= '0';
                    else
                        tirar_dados(i)<= '1';    
                    end if;
                end loop;
             --   tirar_dados <= (others => '1');
                habilitador_num <= '0';
               contador_dado := contador_dado + 1;
                habilitador_dados <= '1'; -- tira los dados
                etapa := 8; 
             
             when 8 => -- CONFIRMACION DE LAS 3 TIRADAS
                -- Muestra en la señal letras cada uno de los dados y con eso se relanzan
                habilitador_dados <= '0';
                tirar_dados <= (others => '0');
                
                letras <= 22; -- muestra los 5 dados
                habilitador_num <= '0';
                
                --if boton_enter = '1' and dados_listos = '1' then
                if boton_enter = '1' then
                    if contador_dado > 2 then 
                        contador_dado := 0; -- reset del contador de tiradas
                        etapa := 9;
                    else
                        etapa := 7;
                    end if;         
                end if; 
            
             when 9 => 
                habilitador_dados <= '0';
                letras <= 22; -- muestra los 5 dados
                habilitador_num <= '0';
                etapa:= 10;
--                if boton_enter = '1' then
--                        etapa := 10;
--                end if;
                
            when 10 => -- INTERMITENTE PARA BAJAR SWITCHES
                flag_sw:= '0';
                
                for i in 0 to 4 loop
                    if sw_enclave(i) = '1' then
                        flag_sw:= '1';        
                    end if;
                end loop;
                
                -- si los switches no estan bajados parpadea el display
                if flag_sw = '1' then 
                    intermitente <= '1';
                else
                    etapa := 11;
                    intermitente <= '0';       
                end if;
                
            when 11 => -- DESIGNA EL CASO A PUNTUACION Y PANTALLA
                
                habilitador_num <= '1';
                --Hago la transformación porque coinciden "caso_punto" con "letras"
                --caso_punto:= 1;
                -- Asignar valor inicial a letras
                letras <= caso_punto;
                
                -- Procedimiento para avanzar al siguiente caso disponible
                -- Lógica principal
--                if boton_arriba = '1' then
--                    avanzar(caso_punto, -1,jugadores,indice_jugador); -- Avanzar al siguiente caso no seleccionado
--                elsif boton_abajo = '1' then
--                    avanzar(caso_punto, 1,jugadores,indice_jugador); -- Retroceder al caso anterior no seleccionado
--                end if;
                
                
                
--                letras <= caso_punto;
                
--                -- Si la puntuacion esta lista se introduce en uno de los 13 casos
--                --if puntuacion_listos = '1' then 
                if boton_arriba = '1' and caso_punto < 13 then
                    caso_punto := caso_punto + 1;
                    
                    if jugadores(indice_jugador)(caso_punto) = '1' then 
                        caso_punto := caso_punto + 1;    
                    end if;
                    if caso_punto > 13 then
                        caso_punto := 1;
                    end if;
                
                elsif boton_abajo = '1' and caso_punto > 1 then 
                    caso_punto := caso_punto - 1;
                    if jugadores(indice_jugador)(caso_punto) = '1' then 
                        caso_punto := caso_punto - 1;    
                    end if;
                    if caso_punto < 1 then
                        caso_punto := 13;
                    end if;
                
                --elsif boton_enter = '1' then
                elsif boton_enter = '1' then
                    -- señal para agregar ese dato de ptos a los puntos del jugador
                    -- suma_al_total <= '1';
                    jugadores(indice_jugador)(caso_punto) := '1' ;
                    --contador_turnos <= contador_turnos + 1;
                    --primer enter
                    primer_enter <= (others =>'0');
                    primer_enter(caso_punto) <= '1'; 
                    etapa := 12; 
--                        if jugadores(1) = "1111111111111" and jugadores(2) = "1111111111111" then
--                            etapa := 12;
--                        else
--                            etapa := 3;
--                        end if; 
                end if;
--            end if;
            when 12 =>--ETAPA FUGAZ
                primer_enter <= (others =>'0');
--                segundo_enter <= '1';
                etapa := 13; 
            
            
            when 13 => -- MUESTRA PUNTOS JUGADOR 1
                -- NECESITAMOS UNA FORMA DE DIFERENCIAR LOS ESTADOS FINALES DE CADA JUGADOR
                -- PARA ESTAPA 10 Y 11
                --nuevo enter y el ready 
                letras <= 15; -- P-FIN
                habilitador_num <= '1';
--                segundo_enter <= '0';
                jugador_n <= '0';-- muestra pts jugador 1
                H_JP1 <= '1';
                H_JP2 <= '0';
                --if boton_enter = '1' and puntuacion_listos_1 = '1' then
                if boton_enter = '1' then
                        etapa := 14;
                end if;
            
            when 14 =>--igual que etapa 13 JUGADOR 2
                letras <= 15; -- P-FIN
                habilitador_num <= '1';
                --primer_enter <= (others =>'0');
                jugador_n<= '1';-- muestra pts jugador 2
                H_JP1 <= '0';
                H_JP2 <= '1';
                --if boton_enter = '1' and puntuacion_listos_2 = '1' then
                if boton_enter = '1' then
                    --segundo_enter <= '1';
                    --if  puntuacion_listos_2 = '1' then 
                        --etapa := 13 ;
                        if jugadores(1) = "1111111111111" and jugadores(2) = "1111111111111" then
                            etapa := 15;
                        else
                            if indice_jugador = 2 then 
                                jugador_n <= '1';
                                H_JP1 <= '0';
                                H_JP2 <= '1';
                            else 
                                jugador_n <= '0';
                                H_JP1 <= '1';
                                H_JP2 <= '0';
                            end if;
                            etapa := 3;
                        end if; 
                    --end if;
                end if;
               
            
            when 15 =>
                letras <= 24; -- FIN
                habilitador_num <= '0'; 
                if boton_enter = '1' then
                    etapa := 16;
                end if;
            
            when 16 =>
                letras <= 25; -- REINICIAR --> BEGIN
                habilitador_num <= '0'; 
                if boton_enter = '1' then
                    etapa := 1;
                end if;
            
            when others =>
                etapa := 1;
            
            end case;
    end if;

etapa_temp <= etapa;   
leds <= (others => '0'); -- Inicializa todos los bits en '0'
leds(etapa) <= '1';      -- Activa solo el bit en la posición 'etapa'

end process; 

end Behavioral;
