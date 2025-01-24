library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity TB_unsigned_to_bcd is
    -- No puertos para un testbench
end TB_unsigned_to_bcd;

architecture Behavioral of TB_unsigned_to_bcd is
    -- Señales para conectar al DUT
    signal clk            : std_logic := '0';               -- Señal de reloj
    signal valor_unsigned : unsigned(9 downto 0) := (others => '0');
    signal bcd_centenas   : std_logic_vector(3 downto 0);
    signal bcd_decenas    : std_logic_vector(3 downto 0);
    signal bcd_unidades   : std_logic_vector(3 downto 0);

    -- Instancia del DUT
    component unsigned_to_bcd
        Port (
            clk            : in  std_logic;                -- Señal de reloj
            valor_unsigned : in  unsigned(9 downto 0);
            bcd_centenas   : out std_logic_vector(3 downto 0);
            bcd_decenas    : out std_logic_vector(3 downto 0);
            bcd_unidades   : out std_logic_vector(3 downto 0)
        );
    end component;

begin
    -- Generador de reloj
    clock_process: process
    begin
        while true loop
            clk <= '0';
            wait for 5 ns;
            clk <= '1';
            wait for 5 ns;
        end loop;
    end process;

    -- Instancia del diseño bajo prueba (DUT)
    DUT: unsigned_to_bcd
        port map (
            clk            => clk,
            valor_unsigned => valor_unsigned,
            bcd_centenas   => bcd_centenas,
            bcd_decenas    => bcd_decenas,
            bcd_unidades   => bcd_unidades
        );

    -- Generador de estímulos
    stimulus: process
    begin
        -- Prueba 1: 0
        wait until rising_edge(clk);
        valor_unsigned <= to_unsigned(0, 10);
        wait for 10 ns;  -- Espera para que el DUT procese
        assert (bcd_centenas = "0000" and bcd_decenas = "0000" and bcd_unidades = "0000")
            report "Error en prueba 1: valor 0" severity error;

        -- Prueba 2: 123
        wait until rising_edge(clk);
        valor_unsigned <= to_unsigned(123, 10);
        wait for 10 ns;
        assert (bcd_centenas = "0001" and bcd_decenas = "0010" and bcd_unidades = "0011")
            report "Error en prueba 2: valor 123" severity error;

        -- Prueba 3: 999
        wait until rising_edge(clk);
        valor_unsigned <= to_unsigned(999, 10);
        wait for 10 ns;
        assert (bcd_centenas = "1001" and bcd_decenas = "1001" and bcd_unidades = "1001")
            report "Error en prueba 3: valor 999" severity error;

        -- Prueba 4: 256
        wait until rising_edge(clk);
        valor_unsigned <= to_unsigned(256, 10);
        wait for 10 ns;
        assert (bcd_centenas = "0010" and bcd_decenas = "0101" and bcd_unidades = "0110")
            report "Error en prueba 4: valor 256" severity error;

        -- Prueba 5: 50
        wait until rising_edge(clk);
        valor_unsigned <= to_unsigned(50, 10);
        wait for 10 ns;
        assert (bcd_centenas = "0000" and bcd_decenas = "0101" and bcd_unidades = "0000")
            report "Error en prueba 5: valor 50" severity error;

        -- Finalización de la simulación
        wait;
    end process;

end Behavioral;
