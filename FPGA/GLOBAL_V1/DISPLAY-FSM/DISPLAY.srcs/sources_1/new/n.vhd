library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Declaración del package
package tipos_personalizados is
    type matriz_vectores is array (7 downto 0) of STD_LOGIC_VECTOR(6 downto 0);
    type caracter_vector is array (7 downto 3) of character;
end tipos_personalizados;
