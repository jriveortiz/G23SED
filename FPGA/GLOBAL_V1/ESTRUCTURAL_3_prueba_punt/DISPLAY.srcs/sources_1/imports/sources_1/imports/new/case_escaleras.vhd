
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;  -- Reemplaza STD_LOGIC_ARITH y STD_LOGIC_UNSIGNED
use work.types_pkg.all;

entity case_escaleras is
generic (
        param : integer := 0;  -- Valor genérico por defecto
        res : integer := 0
    );
    Port (  clk        : in  STD_LOGIC;
        reset      : in  STD_LOGIC := '0';
        seleccionar: in  STD_LOGIC:= '0';
        ce      : in  STD_LOGIC;
        --enable     : in  STD_LOGIC;
        --dados      : in arrayofintegers;  
        dados: in integer_vector(4 downto 0);
        resultado  : out unsigned(9 downto 0);
        ready       : out STD_LOGIC
           );
end case_escaleras;

architecture Behavioral of case_escaleras is
  
    
begin
    process(clk,reset,seleccionar,ce)
    variable aux  : integer := 0;
    variable cont  : integer := 0;
    variable dados_aux : integer_vector(4 downto 0):= (others => 0); -- Array que se ordenará
    begin
    
        if reset = '1' then
            resultado <= to_unsigned(0, 10);
            ready <= '0';  
        elsif ce = '1' then  
            if rising_edge(clk) then
                
                if seleccionar = '1' then
                    ready <= '1';
                end if;
                dados_aux := dados;
                cont:=0;
                -- Algoritmo de ordenación por burbuja con bucles for
                for i in 0 to 3 loop
                    for j in 0 to 3-i loop
                        -- Comparar elementos adyacentes y ordenar
                        if dados_aux(j) > dados_aux(j + 1) then
                            aux := dados_aux(j);
                            dados_aux(j) := dados_aux(j + 1);
                            dados_aux(j + 1) := aux;
                        end if;
                    end loop;
                end loop;
                
                for i in 0 to 3 loop
                    if (dados_aux(i+1)-dados_aux(i)=1) then
                        cont:= cont +1;
                    end if;
                end loop;
                
                if cont >= param then
                    resultado <= to_unsigned(res, 10);
                else
                    resultado <= to_unsigned(0, 10); -- Asignar 0 como un número sin signo de 10 bits
                end if;
         end if;   
        end if;
    end process;

    -- Asignación de la salida
    

end Behavioral;
