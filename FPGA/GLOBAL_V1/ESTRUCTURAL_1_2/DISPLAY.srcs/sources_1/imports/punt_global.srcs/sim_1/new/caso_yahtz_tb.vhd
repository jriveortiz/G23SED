library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity caso_yahtz_tb is
    -- Testbench does not have ports
end caso_yahtz_tb;

architecture Behavioral of caso_yahtz_tb is

    -- Component declaration for the Unit Under Test (UUT)
    component caso_yahtz
        Port (
            resultado : out unsigned(9 downto 0)
        );
    end component;

    -- Signals to connect to UUT
    signal resultado : unsigned(9 downto 0);

begin

    -- Instantiate the Unit Under Test (UUT)
    uut: caso_yahtz
        Port map (
            resultado => resultado
        );

    -- Stimulus process
    stimulus_process: process
    begin
        -- Wait for simulation to settle
        wait for 10 ns;

        -- Check the output value
        assert resultado = TO_UNSIGNED(234, 10)
        report "Test failed: resultado is not 234"
        severity error;

        -- End simulation
        wait;
    end process;

end Behavioral;
