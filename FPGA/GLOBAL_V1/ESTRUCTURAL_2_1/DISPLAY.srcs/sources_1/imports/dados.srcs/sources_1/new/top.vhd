library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Generador_LFSR is
    generic (
        ancho : positive := 3 -- Ancho del registro
    );
    port (
        clk     : in std_logic;  -- Reloj
        rst     : in std_logic;  -- Reset (activo en bajo)
        rnd_out : out integer    -- Salida aleatoria como entero [1..6]
    );
end entity Generador_LFSR;

architecture rtl of Generador_LFSR is
    signal lfsr_reg : unsigned(ancho-1 downto 0) := (others => '1'); -- Registro del LFSR
    signal feedback : std_logic; 

begin
    -- Generar retroalimentación dinámica para el LFSR dependiendo del ancho
    feedback_gen: process(lfsr_reg)
    begin
        -- Ajustar taps para diferentes anchos (ejemplo para ancho = 2, 3, 4, etc.)
        case ancho is
            when 3 => feedback <= lfsr_reg(2) xor lfsr_reg(0); -- x^3 + x + 1
            when 4 => feedback <= lfsr_reg(3) xor lfsr_reg(2); -- x^4 + x^3 + 1
            when 5 => feedback <= lfsr_reg(4) xor lfsr_reg(2); -- x^5 + x^3 + 1
            when 6 => feedback <= lfsr_reg(5) xor lfsr_reg(4); -- x^6 + x^5 + 1
            when 7 => feedback <= lfsr_reg(6) xor lfsr_reg(5); -- x^7 + x^6 + 1 
            when others => feedback <= lfsr_reg(ancho) xor lfsr_reg(ancho + 1);            
        end case;
    end process;

    -- Actualizar el LFSR
    process (clk, rst)
    begin
        if rst = '1' then
            lfsr_reg <= (others => '1'); -- Reinicia el LFSR con un valor no nulo
        elsif rising_edge(clk) then
            -- Shift con retroalimentación
            lfsr_reg <= feedback & lfsr_reg(ancho-1 downto 1);
        end if;
    end process;

    -- Mapear la salida del LFSR al rango [1..6]
    rnd_out <= (to_integer(lfsr_reg) mod 6) + 1;

end architecture rtl;
