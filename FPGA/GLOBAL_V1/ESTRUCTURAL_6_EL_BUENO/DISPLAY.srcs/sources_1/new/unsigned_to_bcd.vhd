library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity unsigned_to_bcd is
    Port (
        clk : in std_logic;
        valor_unsigned : in  unsigned(9 downto 0);  -- Valor de 10 bits a convertir
        bcd_centenas   : out std_logic_vector(3 downto 0);  -- Centenas en BCD
        bcd_decenas    : out std_logic_vector(3 downto 0);  -- Decenas en BCD
        bcd_unidades   : out std_logic_vector(3 downto 0)   -- Unidades en BCD
    );
end unsigned_to_bcd;

architecture Behavioral of unsigned_to_bcd is
    -- Señales intermedias para los cálculos
    signal centenas, decenas, unidades : integer := 0;
begin
    process(valor_unsigned,clk)
        variable valor_decimal : integer := 0;
    begin
        -- Convierte el valor unsigned a decimal (integer)
        valor_decimal := to_integer(valor_unsigned);

        -- Cálculo de centenas, decenas y unidades
        centenas <= valor_decimal / 100;               -- División entera para centenas
        decenas  <= (valor_decimal mod 100) / 10;      -- Decenas
        unidades <= valor_decimal mod 10;              -- Unidades

        -- Asignar las salidas en formato BCD
        bcd_centenas <= std_logic_vector(to_unsigned(centenas, 4));
        bcd_decenas  <= std_logic_vector(to_unsigned(decenas, 4));
        bcd_unidades <= std_logic_vector(to_unsigned(unidades, 4));
    end process;
end Behavioral;
