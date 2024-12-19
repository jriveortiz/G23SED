library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity DECODER_LETRAS is
    Port (
        input_char : in  character;              -- Entrada tipo carácter
        segments   : out std_logic_vector(6 downto 0) -- Salida para 7 segmentos (negada)
    );
end DECODER_LETRAS;

architecture behavioral of DECODER_LETRAS is
begin
    process(input_char)
    begin
        case input_char is
            -- Letras que se pueden dibujar en un display de 7 segmentos
            when 'A' => segments <= "0001000"; -- A
            when 'B' => segments <= "1100000"; -- b
            when 'C' => segments <= "0110001"; -- C
            when 'D' => segments <= "1000010"; -- d
            when 'E' => segments <= "0110000"; -- E
            when 'F' => segments <= "0111000"; -- F
            when 'G' => segments <= "0100001"; -- G
            when 'H' => segments <= "1001000"; -- H
            when 'I' => segments <= "1001111"; -- I
            when 'J' => segments <= "1000011"; -- J
            when 'L' => segments <= "1110001"; -- L
            when 'N' => segments <= "1101010"; -- N
            when 'O' => segments <= "0000001"; -- O
            when 'P' => segments <= "0011000"; -- P
            when 'S' => segments <= "0100100"; -- S
            when 'T' => segments <= "0111111"; -- guion alto
            when 'U' => segments <= "1000001"; -- U
            when '-' => segments <= "1111110"; -- Guion (-)
            -- Caso por defecto (no reconocido)
            when 'X' => segments <= "1111111"; -- Todo apagado
            when '0' => segments <= "0000001"; -- 0
            when '1' => segments <= "1001111"; -- 1
            when '2' => segments <= "0010010"; -- 2
            when '3' => segments <= "0000110"; -- 3
            when '4' => segments <= "1001100"; -- 4
            when '5' => segments <= "0100100"; -- 5
            when '6' => segments <= "0100000"; -- 6
            when '7' => segments <= "0001111"; -- 7
            when '8' => segments <= "0000000"; -- 8
            when '9' => segments <= "0000100"; -- 9
            when others => segments <= "1111111";
        end case;
    end process;
end behavioral;
