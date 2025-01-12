library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;  -- Reemplaza STD_LOGIC_ARITH y STD_LOGIC_UNSIGNED
use work.TiposComunes.all;

entity case_escaleras_tb is
-- No tiene puertos, ya que es un testbench
end case_escaleras_tb;

architecture Behavioral of case_escaleras_tb is
    -- Componentes necesarios para la instancia del DUT
    component case_escaleras
        generic (
            param : integer := 0;  -- Valor genérico por defecto
            res : integer := 0
        );
        Port (
            clk        : in  STD_LOGIC;
            reset      : in  STD_LOGIC := '0';
            seleccionar: in  STD_LOGIC := '0';
            dados      : in arrayofintegers;
            resultado  : out unsigned(9 downto 0);
            ready      : out STD_LOGIC
        );
    end component;

    -- Señales locales para conectar al componente
    signal clk        : STD_LOGIC := '0';
    signal reset      : STD_LOGIC := '0';
    signal seleccionar: STD_LOGIC := '0';
    signal dados      : arrayofintegers := (others => 0);
    signal resultado  : unsigned(9 downto 0);
    signal ready     : STD_LOGIC;

    -- Constante de reloj
    constant clk_period : time := 10 ns;

begin
    -- Instancia del componente bajo prueba
    UUT: case_escaleras
        generic map (
            param => 4,  -- Cambia según tus necesidades
            res   => 10
        )
        port map (
            clk        => clk,
            reset      => reset,
            seleccionar=> seleccionar,
            dados      => dados,
            resultado  => resultado,
            ready      => ready
        );

    -- Generador de reloj
    clk_process: process
    begin
        while True loop
            clk <= '0';
            wait for clk_period / 2;
            clk <= '1';
            wait for clk_period / 2;
        end loop;
    end process;

    -- Estímulos de prueba
    stimulus_process: process
    begin
        -- Inicialización
        reset <= '1';
        seleccionar <= '0';
        dados <= (2, 3, 5, 4, 6); -- Cambia los valores para pruebas
        wait for clk_period;

        -- Desactivar reset y habilitar seleccionar
        reset <= '0';
        seleccionar <= '1';
        wait for 100 ns;
        reset <= '1';
        -- Deshabilitar seleccionar
        seleccionar <= '0';
        wait;

        -- Terminar la simulación
        wait;
    end process;

end Behavioral;

