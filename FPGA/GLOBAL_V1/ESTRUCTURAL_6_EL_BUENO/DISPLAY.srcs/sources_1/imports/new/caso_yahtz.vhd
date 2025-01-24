----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 23.12.2024 17:11:34
-- Design Name: 
-- Module Name: caso_yahtz - Behavioral
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
use IEEE.NUMERIC_STD.ALL;  -- Reemplaza STD_LOGIC_ARITH y STD_LOGIC_UNSIGNED
use work.TiposComunes.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity caso_yahtz is
Port (    
        resultado  : out unsigned(9 downto 0)
      
           );
end caso_yahtz;

architecture Behavioral of caso_yahtz is

begin

resultado <= TO_UNSIGNED(233,10);

end Behavioral;
