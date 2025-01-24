library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity tb_Generador_LFSR is
end entity tb_Generador_LFSR;

architecture Behavioral of tb_Generador_LFSR is
    -- Component declaration for the Unit Under Test (UUT)
    component Generador_LFSR
        generic (
            ancho : positive
        );
        port (
            clk     : in std_logic;
            rst     : in std_logic;
            rnd_out : out integer
        );
    end component;

    -- Signals to connect to the UUT
    signal clk     : std_logic := '0';
    signal rst     : std_logic := '1';
    signal rnd_out : integer;

    -- Clock period constant
    constant clk_period : time := 10 ns;
begin
    -- Instantiate the Unit Under Test (UUT)
    uut: Generador_LFSR
        generic map (
            ancho => 3        )
        port map (
            clk     => clk,
            rst     => rst,
            rnd_out => rnd_out
        );

    -- Clock generation
    clk_process: process
    begin
        while true loop
            clk <= '0';
            wait for clk_period / 2;
            clk <= '1';
            wait for clk_period / 2;
        end loop;
    end process;

    -- Stimulus process
    stim_proc: process
    begin
        -- Apply reset
        rst <= '0';
        wait for 20 ns;
        rst <= '1';

        -- Let the simulation run for a few clock cycles
        wait for 300 ns;

        -- Finish simulation
        wait;
    end process;
end architecture Behavioral;