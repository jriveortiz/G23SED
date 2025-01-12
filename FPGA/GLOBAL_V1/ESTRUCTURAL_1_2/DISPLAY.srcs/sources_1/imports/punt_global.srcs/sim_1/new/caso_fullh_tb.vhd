----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 23.12.2024 18:59:09
-- Design Name: 
-- Module Name: caso_fullh_tb - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use work.TiposComunes.all; -- Asegúrate de que este paquete esté disponible

-- Entity Declaration of the Testbench
entity caso_fullh_tb is
end caso_fullh_tb;

architecture behavior of caso_fullh_tb is

    -- Component Declaration for the Unit Under Test (UUT)
    component caso_fullh
        Port (
            clk        : in  STD_LOGIC;
            reset      : in  STD_LOGIC;
            seleccionar: in  STD_LOGIC;
            dados      : in arrayofintegers;  
            resultado  : out unsigned(9 downto 0);
            ready      : out STD_LOGIC
        );
    end component;

    -- Signals to connect to the UUT
    signal clk        : STD_LOGIC := '0';
    signal reset      : STD_LOGIC := '0';
    signal seleccionar: STD_LOGIC := '0';
    signal dados      : arrayofintegers := (others => 0);  -- Puedes inicializar los valores aquí
    signal resultado  : unsigned(9 downto 0);
    signal ready      : STD_LOGIC;

begin

    -- Instantiate the Unit Under Test (UUT)
    uut: caso_fullh
        Port map (
            clk        => clk,
            reset      => reset,
            seleccionar=> seleccionar,
            dados      => dados,
            resultado  => resultado,
            ready      => ready
        );

    -- Clock generation
    clk_process : process
    begin
        clk <= '0';
        wait for 10 ns;
        clk <= '1';
        wait for 10 ns;
    end process;

    -- Stimulus process
    stim_proc: process
    begin
        -- Apply reset
        reset <= '1';
        wait for 20 ns;
        reset <= '0';
        wait for 20 ns;

        -- Test 1: Dados con Full House (2,2,3,3,3)
        dados <= (2, 3, 2, 3, 3);
        seleccionar <= '1';
        wait for 20 ns;
        seleccionar <= '0';
        wait for 20 ns;
        assert (resultado = to_unsigned(25, 10)) report "Error: Full House no detectado" severity error;

        -- Test 2: Dados sin Full House (3,5,6,5,1)
        dados <= (3, 5, 6, 5, 1);
        seleccionar <= '1';
        wait for 20 ns;
        seleccionar <= '0';
        wait for 20 ns;
        assert (resultado = to_unsigned(0, 10)) report "Error: Full House detectado cuando no hay Full House" severity error;

        -- Test 3: Otro caso con Full House (1,1,1,4,4)
        dados <= (1, 1, 1, 4, 4);
        seleccionar <= '1';
        wait for 20 ns;
        seleccionar <= '0';
        wait for 20 ns;
        assert (resultado = to_unsigned(25, 10)) report "Error: Full House no detectado" severity error;

        -- Test 4: Caso sin Full House (6,6,6,2,2)
        dados <= (6, 6, 6, 2, 2);
        seleccionar <= '1';
        wait for 20 ns;
        seleccionar <= '0';
        wait for 20 ns;
        assert (resultado = to_unsigned(25, 10)) report "Error: Full House no detectado" severity error;

        -- Test 5: Otro caso sin Full House (1,3,5,6,6)
        dados <= (1, 3, 5, 6, 6);
        seleccionar <= '1';
        wait for 20 ns;
        seleccionar <= '0';
        wait for 20 ns;
        assert (resultado = to_unsigned(0, 10)) report "Error: Full House detectado cuando no hay Full House" severity error;

        -- Test 6: Caso Full House con valores máximos (5,5,5,6,6)
        dados <= (5, 5, 5, 6, 6);
        seleccionar <= '1';
        wait for 20 ns;
        seleccionar <= '0';
        wait for 20 ns;
        assert (resultado = to_unsigned(25, 10)) report "Error: Full House no detectado" severity error;

        -- End of tests
        wait;
    end process;

end behavior;


