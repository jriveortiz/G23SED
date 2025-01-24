library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;  -- Reemplaza STD_LOGIC_ARITH y STD_LOGIC_UNSIGNED
--use work.TiposComunes.all;
use work.types_pkg.all;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity case_tcy is
generic (
        param : integer := 0;  -- Valor genérico por defecto
        res : integer := 0
    );
Port (
        clk        : in  STD_LOGIC;
        reset      : in  STD_LOGIC:='0';
        seleccionar: in  STD_LOGIC:='0';
        ce      : in  STD_LOGIC;
        --enable     : in  STD_LOGIC;
        --dados      : in arrayofintegers;  
        dados: in integer_vector(4 downto 0);
        resultado  : out unsigned(9 downto 0);
        ready       : out STD_LOGIC
        );
end case_tcy;

architecture Behavioral of case_tcy is

begin

    --process (clk,reset,seleccionar, ce)
    process (reset,seleccionar, ce)
    --variable i, j : integer;                          -- Índices de los bucles
    variable n_ns : arrayofintegers6 := (others => 0); -- Variable para conteo
    variable flag : integer := 0;                    -- Variable para indicar un trío
    begin
        if reset = '1' then
            --count_temp <= 0;  -- Reinicia el contador temporal
            --resultado_i <= 0;  -- Reinicia la salida a 0
           ready <= '0';
        elsif ce = '1' then
--            -- Operación sincronizada con el flanco de subida del reloj
--            if flag = 1 then
            --if rising_edge(clk) then
                --if seleccionar'event and seleccionar = '1' then
    --            flag <= 0;
                if seleccionar'event and seleccionar = '1' then
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
          
      -- end if; 
    
end process;


end Behavioral;
