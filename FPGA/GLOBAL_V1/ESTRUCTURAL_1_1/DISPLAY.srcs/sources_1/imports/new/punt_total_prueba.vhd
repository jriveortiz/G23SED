----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 25.12.2024 12:25:22
-- Design Name: 
-- Module Name: punt_total_prueba - Behavioral
-- Project Name: 
-- Target Devices: 
--use UNISIM.VComponents.all;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity punt_total_prueba is
 Port ( 
        clk         : in std_logic;
        reset       : in std_logic;
        seleccionar  : in std_logic;
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
        salida     : out unsigned(9 downto 0);
        ready_total : out std_logic
 );
end punt_total_prueba;

architecture Behavioral of punt_total_prueba is
begin

    process(clk, reset)
        variable sumador : unsigned(9 downto 0) := (others => '0'); -- Variable para acumulación
    begin
        if reset = '1' then
            sumador := (others => '0'); -- Reiniciar el sumador
            ready_total <= '0';         -- Desactivar la salida
        elsif rising_edge(clk) then
            -- Reiniciar ready_total cada ciclo
            --ready_total <= '0';
            if seleccionar = '1' then
                -- Comprobación de cada señal de "ready" y actualización de sumador
                if ready1 = '1' then
                    sumador := sumador + input1;
                elsif ready2 = '1' then
                    sumador := sumador + input2;
                elsif ready3 = '1' then
                    sumador := sumador + input3;
                elsif ready4 = '1' then
                    sumador := sumador + input4;
                elsif ready5 = '1' then
                    sumador := sumador + input5;
                elsif ready6 = '1' then
                    sumador := sumador + input6;
                elsif ready7 = '1' then
                    sumador := sumador + input7;
                elsif ready8 = '1' then
                    sumador := sumador + input8;
                elsif ready9 = '1' then
                    sumador := sumador + input9;
                elsif ready10 = '1' then
                    sumador := sumador + input10;
                elsif ready11 = '1' then
                    sumador := sumador + input11;
                elsif ready12 = '1' then
                    sumador := sumador + input12;
                elsif ready13 = '1' then
                    sumador := sumador + input13;
                end if;
                salida <= sumador;
                -- Activar o desactivar ready_total
                if ready1 = '1' or ready2 = '1' or ready3 = '1' or 
                   ready4 = '1' or ready5 = '1' or ready6 = '1' or 
                   ready7 = '1' or ready8 = '1' or ready9 = '1' or 
                   ready10 = '1' or ready11 = '1' or ready12 = '1' or
                   ready13 = '1' then
                    ready_total <= '1';
                else
                    ready_total <= '0'; -- Apagar si ninguna señal "ready" está activa
                end if;
           end if; 
        end if;
    end process;

end Behavioral;
