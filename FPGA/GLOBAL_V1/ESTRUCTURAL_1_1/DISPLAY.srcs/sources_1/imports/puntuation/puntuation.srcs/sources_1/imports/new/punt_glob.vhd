library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;  -- Reemplaza STD_LOGIC_ARITH y STD_LOGIC_UNSIGNED

-- Paquete de tipos comunes ya declarado en otro archivo
use work.TiposComunes.all;

entity punt_glob is
    Port ( 
        clk        : in  STD_LOGIC;
        reset      : in  STD_LOGIC;
        seleccion  : in integer range 0 to 32;  -- Definir rango de seleccion
        seleccionar: in  STD_LOGIC;
        dados      : in arrayofintegers;  -- Asumir que arrayofintegers es un tipo definido
        resultado  : out unsigned(9 downto 0);
        ready       : out STD_LOGIC
    );
end punt_glob;

architecture Behavioral of punt_glob is
    
begin
   
end Behavioral;
