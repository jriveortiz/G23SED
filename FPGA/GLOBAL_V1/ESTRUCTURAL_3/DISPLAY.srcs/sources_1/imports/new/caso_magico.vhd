
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;  -- Reemplaza STD_LOGIC_ARITH y STD_LOGIC_UNSIGNED
use work.TiposComunes.all;
use work.types_pkg.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity caso_magico is

Port (
        clk        : in  STD_LOGIC;
        reset      : in  STD_LOGIC:='0';
        seleccionar: in  STD_LOGIC:='0';
        --enable     : in  STD_LOGIC;
        --dados      : in arrayofintegers;
        dados: in integer_vector(4 downto 0);
        resultado  : out unsigned(9 downto 0);
        ready       : out STD_LOGIC
        );
end caso_magico;

architecture Behavioral of caso_magico is

begin

    process (clk,reset,seleccionar)
    --variable i, j : integer;                          -- Índices de los bucles
    variable n_ns : arrayofintegers6 := (others => 0); -- Variable para conteo
    variable contador : integer := 0;                    -- Variable para indicar un trío
    begin
        if reset = '1' then
            --count_temp <= 0;  -- Reinicia el contador temporal
            --resultado_i <= 0;  -- Reinicia la salida a 0
           ready <= '0';
           contador:=0;
--        elsif enable = '1' then
--            -- Operación sincronizada con el flanco de subida del reloj
--            if flag = 1 then
        elsif rising_edge(clk) then
            contador:=0;
            if seleccionar = '1' then
--            flag <= 0;
                 ready <= '1';
            end if;
            for i in 0 to 4 loop
                contador:=contador+dados(i);
            end loop;
            resultado <= to_unsigned(contador, 10);
       end if; 
    
end process;


end Behavioral;
