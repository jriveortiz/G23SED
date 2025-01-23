
-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity punt_total is
 Port ( 
        clk         : in std_logic;
        reset       : in std_logic;
        CE          : in std_logic;
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
end punt_total;

architecture Behavioral of punt_total is
begin

    process(ready1, ready2, ready3, ready4, ready5, ready6, ready7, ready8, ready9, ready10, ready11, ready12, ready13, reset, CE)
        variable sumador : unsigned(9 downto 0) := (others => '0'); -- Variable para acumulación
    begin
        if reset = '1' then
            sumador := (others => '0'); -- Reiniciar el sumador
            ready_total <= '0';         -- Desactivar la salida
        elsif CE = '1' then
            
            if ready1'event and ready1 = '1' then
                sumador := sumador + input1;
            end if;
            
            if ready2'event and ready2 = '1' then
                sumador := sumador + input2;
            end if;
            if ready3'event and ready3 = '1' then
                sumador := sumador + input3;
            end if;
            if ready4'event and ready4 = '1' then
                sumador := sumador + input4;
            end if;
            if ready5'event and ready5 = '1' then
                sumador := sumador + input5;
            end if;
            if ready6'event and ready6 = '1' then
                sumador := sumador + input6;
            end if;
            if ready7'event and ready7 = '1' then
                sumador := sumador + input7;
            end if;
            if ready8'event and ready8 = '1' then
                sumador := sumador + input8;
            end if;
            if ready9'event and ready9 = '1' then
                sumador := sumador + input9;
            end if;
            if ready10'event and ready10 = '1' then
                sumador := sumador + input10;
            end if;
            if ready11'event and ready11 = '1' then
                sumador := sumador + input11;
            end if;
            if ready12'event and ready12 = '1' then
                sumador := sumador + input12;
            end if;
            if ready13'event and ready13 = '1' then
                sumador := sumador + input13;
            end if;
            
            salida <= sumador;
                    -- Activar o desactivar ready_total
--                    if ready1 = '1' or ready2 = '1' or ready3 = '1' or 
--                       ready4 = '1' or ready5 = '1' or ready6 = '1' or 
--                       ready7 = '1' or ready8 = '1' or ready9 = '1' or 
--                       ready10 = '1' or ready11 = '1' or ready12 = '1' or
--                       ready13 = '1' then
--                        ready_total <= '1';
--                    else
--                        ready_total <= '0'; -- Apagar si ninguna señal "ready" está activa
--                    end if;
        end if;        
    end process;

end Behavioral;

