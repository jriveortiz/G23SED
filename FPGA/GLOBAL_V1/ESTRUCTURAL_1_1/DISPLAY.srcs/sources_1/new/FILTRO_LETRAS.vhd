library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use work.tipos_personalizados.all;
use work.types_pkg.all;
--use IEEE.NUMERIC_STD.ALL;
--library UNISIM;
--use UNISIM.VComponents.all;

entity FILTRO_LETRAS is
    Port ( letras : in integer range 0 to 32;
           dados: in integer_vector(4 downto 0);
           segm_3 : out STD_LOGIC_VECTOR (6 downto 0);
           segm_4 : out STD_LOGIC_VECTOR (6 downto 0);
           segm_5 : out STD_LOGIC_VECTOR (6 downto 0);
           segm_6 : out STD_LOGIC_VECTOR (6 downto 0);
           segm_7 : out STD_LOGIC_VECTOR (6 downto 0));
end FILTRO_LETRAS;

architecture Behavioral of FILTRO_LETRAS is
signal caracter: caracter_vector;
signal char_dados : string(1 to 6) := "123456";
begin
process(letras)
begin
    --A, b, C, d, E, F, G, H, I, J, L, n, O, P, S, U y el '-' siempre en mayuscula
    --Tambien numeros del 1 al 9 como char en entrada
    case letras is
        when 1 => --INCIO
            caracter(7) <= '4';
            caracter(6) <= 'A';
            caracter(5) <= 'H';
            caracter(4) <= '7'; -- Asignar 'A' al índice 4
            caracter(3) <= 'T'; -- Asignar '-' al índice 3
        when 2 => --ESTADO 1
            caracter(7) <= 'I';
            caracter(6) <= 'H';
            caracter(5) <= 'I';
            caracter(4) <= 'C'; -- Asignar 'A' al índice 4
            caracter(3) <= '-';
        when 3 => -- ETAPA 2 - CASO JUGADORES
            caracter(7) <= 'J';
            caracter(6) <= 'U';
            caracter(5) <= 'G';
            caracter(4) <= 'A'; -- Asignar 'A' al índice 4
            caracter(3) <= '-';
        when 4 => -- ETAPA 3
            caracter(7) <= '3';
            caracter(6) <= 'C';
            caracter(5) <= 'A';
            caracter(4) <= 'S'; -- Asignar 'A' al índice 4
            caracter(3) <= 'E';
        when 5 => --INTERMITENTE
            caracter(7) <= 'X';
            caracter(6) <= 'X';
            caracter(5) <= 'X';
            caracter(4) <= 'X'; -- Asignar 'A' al índice 4
            caracter(3) <= 'X';
        when 16 =>
            caracter(7) <= char_dados(dados(4));
            caracter(6) <= char_dados(dados(3));
            caracter(5) <= char_dados(dados(2));
            caracter(4) <= char_dados(dados(1));
            caracter(3) <= char_dados(dados(0));
   
        when others=>
            caracter(7) <= 'X';
            caracter(6) <= 'X';
            caracter(5) <= 'X';
            caracter(4) <= 'X'; -- Asignar 'A' al índice 4
            caracter(3) <= 'X';
    end case;
end process;

DL3: entity work.DECODER_LETRAS port map(caracter(3),segm_3);      
DL4: entity work.DECODER_LETRAS port map(caracter(4),segm_4);
DL5: entity work.DECODER_LETRAS port map(caracter(5),segm_5);
DL6: entity work.DECODER_LETRAS port map(caracter(6),segm_6);
DL7: entity work.DECODER_LETRAS port map(caracter(7),segm_7);
end Behavioral;
