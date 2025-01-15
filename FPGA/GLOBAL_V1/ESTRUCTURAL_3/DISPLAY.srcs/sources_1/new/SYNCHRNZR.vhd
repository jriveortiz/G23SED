library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity SYNCHRNZR is
    Port ( CLK : in STD_LOGIC;
           ASYNC_IN : in STD_LOGIC;
           SYNC_OUT : out STD_LOGIC);
end SYNCHRNZR;

architecture Behavioral of SYNCHRNZR is
signal SREG: std_logic_vector (1 downto 0);
begin
PROCESS (CLK)
BEGIN
    IF RISING_EDGE(CLK) THEN 
        SYNC_OUT<=SREG(1);
        SREG<=SREG(0) & ASYNC_IN;
    END if;
END process;
end Behavioral;
