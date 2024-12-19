library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;  -- Usamos NUMERIC_STD en lugar de STD_LOGIC_ARITH y STD_LOGIC_UNSIGNED

-- Paquete de tipos comunes, donde está definido 'array_of_integers'
use work.TiposComunes.all;

entity case_i_ns_tb is
end entity case_i_ns_tb;

architecture behavior of case_i_ns_tb is

  -- Señales para el testbench
  signal clk        : std_logic := '0';  -- Señal de reloj
  signal reset      : std_logic := '0';  -- Señal de reset
  signal seleccionar: std_logic := '0';  -- Señal de activación de selección
  signal enable     : std_logic := '0';  -- Señal de habilitación
  signal dados      : arrayofintegers := (2, 3, 2, 4, 5);  -- Vector de dados fijo
  signal resultado  : unsigned(9 downto 0);  -- Resultado de la operación
  signal ready      : std_logic;  -- Señal de ready
  
  -- Componente DUT (Dispositivo bajo prueba)
  component case_i_ns is
    generic (
      param : integer := 2  -- Valor del parámetro, ahora es 2
    );
    Port ( 
      clk        : in  STD_LOGIC;
      reset      : in  STD_LOGIC;
      seleccionar: in  STD_LOGIC;
      enable     : in  STD_LOGIC;
      dados      : in arrayofintegers;  -- Usamos el tipo definido en el paquete
      resultado  : out unsigned(9 downto 0);
      ready      : out STD_LOGIC
    );
  end component;

begin

  -- Instanciación del DUT
  uut: case_i_ns
    generic map (param => 2)  -- Ahora param es 2
    port map (
      clk => clk,
      reset => reset,
      seleccionar => seleccionar,
      enable => enable,
      dados => dados,
      resultado => resultado,
      ready => ready
    );

  -- Generación del reloj
  clk_process : process
  begin
    clk <= '0';
    wait for 5 ns;
    clk <= '1';
    wait for 5 ns;
  end process;

  -- Generación de la secuencia de pruebas
  test_process : process
  begin
    -- Paso 1: Activar enable (equivalente a ce en el DUT)
    enable <= '1';
    wait for 10 ns;  -- Esperar para visualizar los datos
    enable <= '0';  -- Desactivar enable
    
    -- Paso 2: Esperar para visualizar los datos
    wait for 10 ns;  -- Tiempo de espera para observar los valores de dados
    
    -- Paso 3: Activar seleccionar
    seleccionar <= '1';
    wait for 10 ns;
    seleccionar <= '0';  -- Desactivar seleccionar
    
    -- Paso 4: Activar reset
    reset <= '1';
    wait for 10 ns;
    reset <= '0';  -- Desactivar reset
    
    -- Esperar que el DUT procese los datos
    wait for 30 ns;  -- Tiempo de espera para el procesamiento del DUT

    -- Verificar el resultado
    report "Resultado obtenido: " & integer'image(to_integer(resultado));  -- Conversión de unsigned a integer
    report "Resultado esperado (param = 2): " & integer'image(2);  -- Valor esperado de la operación
    wait for 10 ns;  -- Esperar antes de terminar el testbench

    -- Fin del test
    assert false report "Fin del testbench" severity note;
    wait;
  end process;

end architecture behavior;
