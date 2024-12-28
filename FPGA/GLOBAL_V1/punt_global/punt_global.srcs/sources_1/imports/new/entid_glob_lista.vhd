----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 18.12.2024 13:17:03
-- Design Name: 
-- Module Name: entid_glob_lista - Behavioral
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

entity entid_glob_lista is
    Port ( casos_listos : in STD_LOGIC_VECTOR (15 downto 0);
           ready : out STD_LOGIC);
end entid_glob_lista;

architecture Behavioral of entid_glob_lista is
begin
    -- Activar 'ready' si casos_listos tiene uno de los valores especificados
    ready <= '1' when (casos_listos = "1000000000000000" or
                        casos_listos = "0100000000000000" or
                        casos_listos = "0010000000000000" or
                        casos_listos = "0001000000000000" or
                        casos_listos = "0000100000000000" or
                        casos_listos = "0000010000000000" or
                        casos_listos = "0000001000000000" or
                        casos_listos = "0000000100000000" or
                        casos_listos = "0000000010000000" or
                        casos_listos = "0000000001000000" or
                        casos_listos = "0000000000100000" or
                        casos_listos = "0000000000010000" or
                        casos_listos = "0000000000001000" or
                        casos_listos = "0000000000000100" or
                        casos_listos = "0000000000000010" or
                        casos_listos = "0000000000000001")
             else '0';  -- Asignación por defecto cuando ninguna condición se cumple

end Behavioral;
