library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use work.types_pkg.all;

entity punt_glob_tb is
-- Testbench no tiene puertos
end punt_glob_tb;

architecture Behavioral of punt_glob_tb is
    -- Component declaration for the Unit Under Test (UUT)
    component punt_glob
        Port (
            clk        : in  STD_LOGIC;
            reset      : in  STD_LOGIC;
            ce         : in  STD_LOGIC;
            seleccion  : in integer range 0 to 32;
            seleccionar: in  STD_LOGIC_vector(13 downto 1);
            seleccionar_pt : in  STD_LOGIC;
            dados      : in integer_vector(4 downto 0);
            resultado  : out unsigned(9 downto 0);
            ready      : out STD_LOGIC
        );
    end component;

    -- Signals for driving the UUT
    signal clk           : STD_LOGIC := '0';
    signal reset         : STD_LOGIC := '0';
    signal ce            : STD_LOGIC := '0';
    signal seleccion     : integer range 0 to 32 := 0;
    signal seleccionar   : STD_LOGIC_vector(13 downto 1) := (others => '0');
    signal seleccionar_pt: STD_LOGIC := '0';
    signal dados         : integer_vector(4 downto 0) := (others => 0);
    signal resultado     : unsigned(9 downto 0);
    signal ready         : STD_LOGIC;

    -- Clock period
    constant clk_period : time := 10 ns;

begin
    -- Instantiate the Unit Under Test (UUT)
    uut: punt_glob
        Port map (
            clk           => clk,
            reset         => reset,
            ce            => ce,
            seleccion     => seleccion,
            seleccionar   => seleccionar,
            seleccionar_pt => seleccionar_pt,
            dados         => dados,
            resultado     => resultado,
            ready         => ready
        );

    -- Clock process
    clk_process : process
    begin
        clk <= '0';
        wait for clk_period / 2;
        clk <= '1';
        wait for clk_period / 2;
    end process;

    -- Stimulus process
    stim_proc: process
    begin
        -- Initial state
        reset <= '1';
        wait for 20 ns;
        reset <= '0';

        -- Enable CE and test selection cases
        ce <= '1';
        
        seleccion <= 18;
        -- Test case 1: Select resultado1 (param = 1)
        seleccionar <= "0000000000001";
        dados <= (5, 4, 3, 2, 1);  -- Example input
        wait for clk_period * 5;
        

        -- Test case 2: Select resultado2 (param = 2)
        seleccionar <= "0000000000010";
        dados <= (5, 4, 3, 2, 1);
        wait for clk_period * 5;

        -- Test case 3: Select resultado_t (param = 3, res = 15)
        seleccionar <= "0000000100000";
        seleccion <= 7;  -- Corresponds to resultado_t
        dados <= (6, 6, 6, 6, 6);
        wait for clk_period * 5;

        -- Test case 4: Select resultado_fullh
        seleccionar <= "0000001000000";
        seleccion <= 10; -- Corresponds to resultado_f
        dados <= (3, 3, 3, 2, 2);
        wait for clk_period * 5;

        -- Test case 5: Reset
        reset <= '1';
        wait for 20 ns;
        reset <= '0';

        -- Finish simulation
        wait;
    end process;

end Behavioral;

