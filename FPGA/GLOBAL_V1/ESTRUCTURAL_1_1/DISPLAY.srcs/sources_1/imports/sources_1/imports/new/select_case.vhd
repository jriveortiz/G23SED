library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;  -- Reemplaza STD_LOGIC_ARITH y STD_LOGIC_UNSIGNED

-- Paquete de tipos comunes ya declarado en otro archivo
use work.TiposComunes.all;

entity select_case is
   port(
     seleccion  : in integer range 0 to 32;  -- Definir rango de seleccion
     casos      : out std_logic_vector (15 downto 0)  -- Resultado de 16 bits
   ); 
end select_case;

architecture Behavioral of select_case is
begin
    -- La asignación se realiza directamente con la estructura 'case'
    with seleccion select
        casos <= "1000000000000000"   when 0,
                "0100000000000000"   when 1,
                "0010000000000000"   when 2,
                "0001000000000000"   when 3,
                "0000100000000000"   when 4,
                "0000010000000000"   when 5,
                "0000001000000000"   when 6,
                "0000000100000000"   when 7,
                "0000000010000000"   when 8,
                "0000000001000000"   when 9,
                "0000000000100000"   when 10,
                "0000000000010000"   when 11,
                "0000000000001000"   when 12,
                "0000000000000100"   when 13,
                "0000000000000010"   when 14,
                "0000000000000001"   when 15,
                "0000000000000000"   when others;  -- Caso por defecto
end Behavioral;


