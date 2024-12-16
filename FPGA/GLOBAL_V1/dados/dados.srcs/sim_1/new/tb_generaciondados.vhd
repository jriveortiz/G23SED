library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.NUMERIC_STD.ALL;
use work.types_pkg.all;

entity tb_generaciondados is
--
end tb_generaciondados;

architecture behavior of tb_generaciondados is

    component generaciondados is
        generic (
            n_max : positive := 5  --máximo de dados
        );
        port (
            clk, rst     : in  std_logic;                          -- Reloj y reset (activo en bajo)
            CE           : in  std_logic;                          -- Chip Enable
            tirar_dados  : in  std_logic_vector(n_max-1 downto 0); -- Dados a tirar (1=tirar, 0=conservar)
            rdy         : out std_logic;                          -- Señal de salida
            dados        : out integer_vector(n_max-1 downto 0)   -- Array de n_max dados
        );
    end component;

    -- Testbench Signals
    signal clk             : std_logic := '0';
    signal rst             : std_logic := '0';
    signal CE              : std_logic := '0';
    signal tirar_dados     : std_logic_vector(4 downto 0) := (others => '0');  -- 5 dados
    signal rdy            : std_logic;
    signal dados           : integer_vector(4 downto 0);  -- 5 dados

    -- Clock Generation
    constant clk_period : time := 10 ns;  -- Periodo del reloj

begin
    -- Instanciamos la entidad generaciondados
    uut: generaciondados
        port map (
            clk          => clk,
            rst          => rst,
            CE           => CE,
            tirar_dados  => tirar_dados,
            rdy         => rdy,
            dados        => dados
        );

    -- Clock process
    clk_process :process
    begin
        clk <= '0';
        wait for clk_period / 2;
        clk <= '1';
        wait for clk_period / 2;
    end process;

    -- Stimulus process
    stimulus_process: process
    begin
        -- Reset Inicial
        rst <= '0';
        wait for 20 ns;
        rst <= '1';  -- Activamos el reset
        wait for 20 ns;
        rst <= '0';  -- Desactivamos el reset
        
        -- Caso 1: Sin tirar dados (todos los bits de tirar_dados en 0)
        CE <= '1';  -- Habilitamos el chip enable
        tirar_dados <= "00000";  -- No se tiran dados
        wait for clk_period * 10;
        CE <= '0';
        wait for clk_period * 2;

        -- Caso 2: Tirar algunos dados
        CE <= '1';
        tirar_dados <= "10101";  -- Tiramos el 1º, 3º y 5º dado
        wait for clk_period * 10;
        CE <= '0';
        wait for clk_period * 2;

        -- Caso 3: Tirar todos los dados
        CE <= '1';
        tirar_dados <= "11111";  -- Todos los dados se tiran
        wait for clk_period * 10;
        CE <= '0';
        wait for clk_period * 3;

        -- Caso 4: Cambiar valores de tirar_dados durante la simulación
        CE <= '1';
        tirar_dados <= "11000";  -- Tiramos el 1º, 2º dado
        wait for clk_period * 10;
        CE <= '0';
        wait for clk_period * 3;
        
        -- Verificar que 'rdy' se activa cuando todos los dados están listos
        CE <= '1';
        tirar_dados <= "00000";  -- Ningún dado se tira
        wait for clk_period * 10;
        CE <= '0';
        wait for clk_period * 3;

        -- Caso adicional: Comprobar que la señal 'rdy' se mantiene activa hasta el siguiente flanco de 'CE'
        CE <= '1';
        wait for clk_period * 10; -- Comprobamos la activación de 'rdy'
        CE <= '0';
        wait for clk_period * 2;
        
        wait;
    end process;
end behavior;

