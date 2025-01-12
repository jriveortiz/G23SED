library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use work.types_pkg.all;

-- Entidad para convertir un std_logic_vector a un vector de enteros
entity convertir_bits is
    Port (
        entrada_vector : in  std_logic_vector(14 downto 0); -- Vector de entrada
        salida_enteros : out integer_vector (4 downto 0)           -- Vector de 5 enteros
    );
end convertir_bits;

-- Declaración del tipo de array para los enteros
--type integer_array is array (0 to 4) of integer;

architecture Behavioral of convertir_bits is
begin
    -- Asignamos los valores convertidos de cada grupo al array
    process(entrada_vector)
    begin
        salida_enteros(0) <= to_integer(unsigned(entrada_vector(14 downto 12)));  -- Primer grupo (bits 14 a 12)
        salida_enteros(1) <= to_integer(unsigned(entrada_vector(11 downto 9)));   -- Segundo grupo (bits 11 a 9)
        salida_enteros(2) <= to_integer(unsigned(entrada_vector(8 downto 6)));    -- Tercer grupo (bits 8 a 6)
        salida_enteros(3) <= to_integer(unsigned(entrada_vector(5 downto 3)));    -- Cuarto grupo (bits 5 a 3)
        salida_enteros(4) <= to_integer(unsigned(entrada_vector(2 downto 0)));    -- Quinto grupo (bits 2 a 0)
    end process;
end Behavioral;

