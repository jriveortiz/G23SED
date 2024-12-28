library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity punt_total_tb is
-- No hay puertos en el testbench
end punt_total_tb;

architecture Behavioral of punt_total_tb is

    -- Component declaration
    component punt_total_prueba is
        Port ( 
            clk         : in std_logic;
            reset       : in std_logic;
            seleccionar : in std_logic;
            input1      : in unsigned(9 downto 0);  
            input2      : in unsigned(9 downto 0);  
            input3      : in unsigned(9 downto 0);  
            input4      : in unsigned(9 downto 0);  
            input5      : in unsigned(9 downto 0);  
            input6      : in unsigned(9 downto 0);  
            input7      : in unsigned(9 downto 0);  
            input8      : in unsigned(9 downto 0);  
            input9      : in unsigned(9 downto 0);  
            input10     : in unsigned(9 downto 0);  
            input11     : in unsigned(9 downto 0);  
            input12     : in unsigned(9 downto 0);
            input13     : in unsigned(9 downto 0);
            ready1      : in std_logic;
            ready2      : in std_logic;
            ready3      : in std_logic;
            ready4      : in std_logic;
            ready5      : in std_logic;
            ready6      : in std_logic;
            ready7      : in std_logic;
            ready8      : in std_logic;
            ready9      : in std_logic;
            ready10     : in std_logic;
            ready11     : in std_logic;
            ready12     : in std_logic;
            ready13     : in std_logic;
            salida      : out unsigned(9 downto 0);
            ready_total : out std_logic
        );
    end component;

    -- Signals to connect to the DUT
    signal clk         : std_logic := '0';
    signal reset       : std_logic := '0';
    signal seleccionar : std_logic := '0';
    signal input1, input2, input3, input4, input5,
           input6, input7, input8, input9, input10,
           input11, input12, input13 : unsigned(9 downto 0) := (others => '0');
    signal ready1, ready2, ready3, ready4, ready5,
           ready6, ready7, ready8, ready9, ready10,
           ready11, ready12, ready13 : std_logic := '0';
    signal salida      : unsigned(9 downto 0);
    signal ready_total : std_logic;

begin

    -- Instantiate the DUT (Device Under Test)
    uut: punt_total_prueba
        port map (
            clk         => clk,
            reset       => reset,
            seleccionar => seleccionar,
            input1      => input1,
            input2      => input2,
            input3      => input3,
            input4      => input4,
            input5      => input5,
            input6      => input6,
            input7      => input7,
            input8      => input8,
            input9      => input9,
            input10     => input10,
            input11     => input11,
            input12     => input12,
            input13     => input13,
            ready1      => ready1,
            ready2      => ready2,
            ready3      => ready3,
            ready4      => ready4,
            ready5      => ready5,
            ready6      => ready6,
            ready7      => ready7,
            ready8      => ready8,
            ready9      => ready9,
            ready10     => ready10,
            ready11     => ready11,
            ready12     => ready12,
            ready13     => ready13,
            salida      => salida,
            ready_total => ready_total
        );

    -- Clock process
    clk_process : process
    begin
        while True loop
            clk <= '0';
            wait for 10 ns;
            clk <= '1';
            wait for 10 ns;
        end loop;
    end process;

    -- Stimulus process
    stimulus_process : process
    begin
        -- Reset
        reset <= '1';
        wait for 30 ns;
        reset <= '0';

        

        -- First ready signal
        input1 <= to_unsigned(1, 10);
        ready1 <= '1';
        wait for 30 ns;
        -- Simulate inputs
        seleccionar <= '1';
        wait for 30 ns;
        seleccionar <= '0';
        ready1 <= '0';

        -- Second ready signal
        input2 <= to_unsigned(2, 10);
        ready2 <= '1';
        wait for 20 ns;
         -- Simulate inputs
        seleccionar <= '1';
        wait for 30 ns;
        seleccionar <= '0';
        ready2 <= '0';

--        -- Third ready signal
--        input3 <= to_unsigned(15, 10);
--        ready3 <= '1';
--        wait for 20 ns;
--        ready3 <= '0';

        -- End simulation
        wait for 100 ns;
        seleccionar <= '0';
        wait for 50 ns;
        reset <= '1';
        wait;
    end process;

end Behavioral;

