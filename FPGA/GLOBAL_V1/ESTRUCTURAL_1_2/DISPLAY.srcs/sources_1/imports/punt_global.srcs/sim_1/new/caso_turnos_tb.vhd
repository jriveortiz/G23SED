library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity caso_turnos_tb is
    -- Testbench does not have ports
end caso_turnos_tb;

architecture Behavioral of caso_turnos_tb is

    -- Component declaration for the Unit Under Test (UUT)
    component caso_turnos
        Port (
            clk           : in  STD_LOGIC;
            reset         : in  STD_LOGIC;
            resultado     : out unsigned(9 downto 0);
            rst_punt_total: out STD_LOGIC
        );
    end component;

    -- Signals to connect to UUT
    signal clk           : STD_LOGIC := '0';
    signal reset         : STD_LOGIC := '0';
    signal resultado     : unsigned(9 downto 0);
    signal rst_punt_total: STD_LOGIC;

    constant clk_period : time := 10 ns;

begin

    -- Instantiate the Unit Under Test (UUT)
    uut: caso_turnos
        Port map (
            clk           => clk,
            reset         => reset,
            resultado     => resultado,
            rst_punt_total=> rst_punt_total
        );

    -- Clock generation process
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
    stimulus_process: process
    begin
        -- Wait for initial clock cycles
        wait for 20 ns;

        -- Test reset signal and observe counting
        for i in 0 to 14 loop
            reset <= '1';
            wait for clk_period;
            reset <= '0';
            wait for clk_period;
        end loop;

        -- Stop simulation
        wait;
    end process;

end Behavioral;
