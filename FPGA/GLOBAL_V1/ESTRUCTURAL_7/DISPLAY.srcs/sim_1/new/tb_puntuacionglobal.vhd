library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use work.types_pkg.all;  -- Paquete de tipos

entity punt_glob_tb is
end punt_glob_tb;

architecture Behavioral of punt_glob_tb is

    -- Señales de prueba
    signal clk         : STD_LOGIC := '0';
    signal reset       : STD_LOGIC := '0';
    signal ce          : STD_LOGIC := '0';
    signal seleccion   : integer range 0 to 32 := 0;
    signal seleccionar : STD_LOGIC_VECTOR(13 downto 1) := (others => '0');
    signal dados       : integer_vector(4 downto 0) := (others => 0);
    signal resultado   : unsigned(9 downto 0);
    signal ready       : STD_LOGIC;

    -- Periodo de reloj
    constant clk_period : time := 10 ns;

begin

    -- Instancia de la entidad bajo prueba (UUT)
    uut: entity work.punt_glob
        port map (
            clk        => clk,
            reset      => reset,
            ce         => ce,
            seleccion  => seleccion,
            seleccionar=> seleccionar,
            dados      => dados,
            resultado  => resultado,
            ready      => ready
        );

    -- Generador de reloj
    clk_process : process
    begin
        while true loop
            clk <= '0';
            wait for clk_period / 2;
            clk <= '1';
            wait for clk_period / 2;
        end loop;
    end process;

    -- Proceso de estímulos
    stimulus_process : process
    begin
        -- Inicialización
        reset <= '1';
        wait for 20 ns;
        reset <= '0';
        wait for 20 ns;
        seleccionar <= (others => '0');
        -- Caso 1: Activar ce y probar selección 1
        ce <= '1';
        dados <= (1, 2, 3, 4, 5);  -- Ejemplo de datos
        wait for 20 ns;
        seleccionar(12) <= '1';
        wait for 20 ns;
        for i in 0 to 13 loop
        seleccion <= i; -- Asignamos el valor de i a la señal seleccion
        wait for 20 ns; -- Espera opcional (depende del diseño)
        end loop;
        seleccion <= 23; -- Asignamos el valor de i a la señal seleccion
        wait for 20 ns; -- Espera opcional (depende del diseño)
        seleccion <= 18; -- Asignamos el valor de i a la señal seleccion
        wait for 20 ns; -- Espera opcional (depende del diseño)
        seleccionar <= (others => '0');
        reset <= '1';
        wait for 20 ns;
        reset <= '0';
        wait for 20 ns;
   
        -- Caso 2: Cambiar selección y datos
        
        seleccionar(12) <= '1';
        dados <= (6, 6, 6, 6, 6);  -- Datos diferentes
        wait for 40 ns;
        seleccionar(12) <= '1';
        -- Caso 3: Desactivar ce
        ce <= '0';
        seleccionar <= (others => '0');
        wait for 20 ns;

        -- Finalizar simulación
        wait;
    end process;

end Behavioral;



