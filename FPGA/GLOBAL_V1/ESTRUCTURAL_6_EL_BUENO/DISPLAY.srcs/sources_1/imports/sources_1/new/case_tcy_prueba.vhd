----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;  -- Reemplaza STD_LOGIC_ARITH y STD_LOGIC_UNSIGNED
use work.TiposComunes.all;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity case_tcy_prueba is
generic (
        param : integer := 0;  -- Valor genérico por defecto
        res : integer := 0
    );
Port (
        clk        : in  STD_LOGIC;
        reset      : in  STD_LOGIC:='0';
        seleccionar: in  STD_LOGIC:='0';
        --enable     : in  STD_LOGIC;
        dados      : in arrayofintegers;  
        resultado  : out unsigned(9 downto 0);
        ready       : out STD_LOGIC
        );
end case_tcy_prueba;

architecture Behavioral of case_tcy_prueba is

begin

    process (clk,reset,seleccionar)
    --variable i, j : integer;                          -- Índices de los bucles
    variable n_ns : arrayofintegers6 := (others => 0); -- Variable para conteo
    variable flag : integer := 0;                    -- Variable para indicar un trío
    begin
        if reset = '1' then
            --count_temp <= 0;  -- Reinicia el contador temporal
            --resultado_i <= 0;  -- Reinicia la salida a 0
           ready <= '0';
--        elsif enable = '1' then
--            -- Operación sincronizada con el flanco de subida del reloj
--            if flag = 1 then
        elsif rising_edge(clk) then
            if seleccionar = '1' then
--            flag <= 0;
                 ready <= '1';
            end if;
            n_ns := (others => 0);
            -- Primer bucle anidado
            for i in 1 to 6 loop
                for j in 0 to 4 loop
                    if dados(j) = i then
                        n_ns(i-1) := n_ns(i-1) + 1; -- Incrementar el contador
                    end if;
                end loop;
            end loop;
            flag:=5;
            -- Segundo bucle
            for i in 0 to 4 loop
                if n_ns(i) = param then
                    flag := flag + 1;
                else 
                    flag := flag -1;
                end if;
            end loop;
            if flag > 0 then
                resultado <= to_unsigned(res, 10);
            else
                resultado <= to_unsigned(0, 10); -- Asignar 0 como un número sin signo de 10 bits
            end if;
       end if; 
    
end process;


end Behavioral;
