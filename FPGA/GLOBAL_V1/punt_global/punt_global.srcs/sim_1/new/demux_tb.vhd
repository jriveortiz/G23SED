library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity tb_demux is
-- No tiene puertos, es solo para simulación
end tb_demux;

architecture Behavioral of tb_demux is
    -- Declaración de señales para conectar con el DUT
    signal sel : integer range 0 to 15 := 0;
    signal input0, input1, input2, input3 : unsigned(9 downto 0) := (others => '0');
    signal input4, input5, input6, input7 : unsigned(9 downto 0) := (others => '0');
    signal input8, input9, input10, input11 : unsigned(9 downto 0) := (others => '0');
    signal input12, input13, input14, input15 : unsigned(9 downto 0) := (others => '0');
    signal output : unsigned(9 downto 0);
begin
    -- Instancia del DUT (Device Under Test)
    uut: entity work.demux
        port map (
            sel => sel,
            input0 => input0,
            input1 => input1,
            input2 => input2,
            input3 => input3,
            input4 => input4,
            input5 => input5,
            input6 => input6,
            input7 => input7,
            input8 => input8,
            input9 => input9,
            input10 => input10,
            input11 => input11,
            input12 => input12,
            input13 => input13,
            input14 => input14,
            input15 => input15,
            output => output
        );

    -- Proceso de estimulación
    stim_proc: process
    begin
        -- Inicializar entradas
        input0 <= to_unsigned(0, 10);
        input1 <= to_unsigned(10, 10);
        input2 <= to_unsigned(20, 10);
        input3 <= to_unsigned(30, 10);
        input4 <= to_unsigned(40, 10);
        input5 <= to_unsigned(50, 10);
        input6 <= to_unsigned(60, 10);
        input7 <= to_unsigned(70, 10);
        input8 <= to_unsigned(80, 10);
        input9 <= to_unsigned(90, 10);
        input10 <= to_unsigned(100, 10);
        input11 <= to_unsigned(110, 10);
        input12 <= to_unsigned(120, 10);
        input13 <= to_unsigned(130, 10);
        input14 <= to_unsigned(140, 10);
        input15 <= to_unsigned(150, 10);

        -- Probar cada valor del selector
        for i in 0 to 15 loop
            sel <= i;  -- Cambia el selector
            wait for 10 ns;  -- Espera para observar el resultado
        end loop;

        -- Probar caso fuera de rango
        sel <= 16;  -- Valor fuera de rango
        wait for 10 ns;

        -- Finaliza la simulación
        wait;
    end process;
end Behavioral;
