library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
--library UNISIM;
--use UNISIM.VComponents.all;

entity MUX_10_UNSIGNED is
    Port (
          jugador_1: in unsigned (9 downto 0);
          jugador_2: in unsigned (9 downto 0);
          seleccion: in std_logic;
          salida: out unsigned (9 downto 0)
    );
end MUX_10_UNSIGNED;

architecture Behavioral of MUX_10_UNSIGNED is

begin
    salida <= jugador_1 when seleccion = '0' else jugador_2; 
end Behavioral;
