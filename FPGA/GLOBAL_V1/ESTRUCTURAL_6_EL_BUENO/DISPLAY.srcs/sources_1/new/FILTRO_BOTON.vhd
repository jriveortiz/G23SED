library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
--use IEEE.NUMERIC_STD.ALL;
--library UNISIM;
--use UNISIM.VComponents.all;

entity FILTRO_BOTON is
    Port ( CLK : in STD_LOGIC;
           BOTON : in STD_LOGIC;
           SALIDA : out STD_LOGIC);
end FILTRO_BOTON;

architecture Behavioral of FILTRO_BOTON is
signal sync_ed,ed1_ed2: std_logic ;
begin
U1: entity work.SYNCHRNZR port map (CLK,BOTON,sync_ed);
U2: entity work.SYNCHRNZR port map (CLK,sync_ed,ed1_ed2);
U3: entity work.EDGEDTCTR port map (CLK,ed1_ed2,SALIDA);

end Behavioral;
