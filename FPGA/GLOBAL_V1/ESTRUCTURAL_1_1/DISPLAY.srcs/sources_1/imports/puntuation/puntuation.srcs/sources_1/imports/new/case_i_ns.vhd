library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;  -- Reemplaza STD_LOGIC_ARITH y STD_LOGIC_UNSIGNED

-- Paquete de tipos comunes ya declarado en otro archivo
use work.TiposComunes.all;

entity case_i_ns is
    generic (
        param : integer := 0  -- Valor genérico por defecto
    );
    Port ( 
        clk        : in  STD_LOGIC;
        reset      : in  STD_LOGIC;
        seleccionar: in  STD_LOGIC;
        enable     : in  STD_LOGIC;
        dados      : in arrayofintegers;  -- Asumir que arrayofintegers es un tipo definido
        resultado  : out unsigned(9 downto 0);
        ready       : out STD_LOGIC
    );
end case_i_ns;

architecture Behavioral of case_i_ns is
    signal count_temp : integer := 0;  -- Contador temporal como señal
    signal resultado_i : integer := 0;
    signal flag : integer := 0; 
begin
    process(clk, reset, seleccionar)
    begin
        -- RESET tiene la máxima prioridad
        if reset = '1' then
            count_temp <= 0;  -- Reinicia el contador temporal
            resultado_i <= 0;  -- Reinicia la salida a 0
            ready <= '0';
        elsif seleccionar = '1' then
            flag <= 0;
            ready <= '1';
        elsif enable = '1' then
            -- Operación sincronizada con el flanco de subida del reloj
            if flag = 1 then
                if rising_edge(clk) then
                    count_temp <= 0;  -- Inicialización del contador temporal
    
                    -- Bucle para recorrer el arreglo
                    for i in 0 to 4 loop
                        if dados(i) = param then
                            count_temp <= count_temp + 1;  -- Incrementa si hay coincidencia
                        end if;
                    end loop;
                        resultado_i <= count_temp * param;  -- Asigna el resultado      
                end if;   
            end if; 
        resultado <= to_unsigned(resultado_i, 10);  -- Conversión de entero a unsigned
        end if; 
    end process;
end Behavioral;