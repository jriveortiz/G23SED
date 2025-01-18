library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

-- Definición de un tipo para un arreglo de unsigned(9 downto 0)


entity demux is
    Port (
        sel : in integer range 0 to 32;  -- Selector (integer de 0 a 15)
        input0 : in unsigned(9 downto 0);
        input1 : in unsigned(9 downto 0);  
        input2 : in unsigned(9 downto 0);  
        input3 : in unsigned(9 downto 0);  
        input4 : in unsigned(9 downto 0);  
        input5 : in unsigned(9 downto 0);  
        input6 : in unsigned(9 downto 0);  
        input7 : in unsigned(9 downto 0);  
        input8 : in unsigned(9 downto 0);  
        input9 : in unsigned(9 downto 0);  
        input10 : in unsigned(9 downto 0);  
        input11 : in unsigned(9 downto 0);  
        input12 : in unsigned(9 downto 0);  
        input13 : in unsigned(9 downto 0);
        input14 : in unsigned(9 downto 0); 
        input15 : in unsigned(9 downto 0);     
        output : out unsigned(9 downto 0)  -- Salida de 10 bits
        
    );
end demux;

architecture Behavioral of demux is
begin
    -- Asignación concurrente usando 'with select'
    with sel select
        output <= input0  when 0,
                  input1  when 1,
                  input2  when 2,
                  input3  when 3,
                  input4  when 4,
                  input5  when 5,
                  input6  when 6,
                  input7  when 7,
                  input8  when 8,
                  input9  when 9,
                  input10 when 10,
                  input11 when 11,
                  input12 when 12,
                  input13 when 13,
                  input14 when 23,
                  input15 when 18,
                  (others => '0') when others;  -- En caso de que el selector esté fuera del rango

end Behavioral;
