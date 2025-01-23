library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;  -- Para operaciones con "unsigned" y "signed"
--use work.TiposComunes.all;

entity caso_turnos is
   Port (
        clk           : in  STD_LOGIC;
        reset         : in  STD_LOGIC;
        resultado     : out unsigned(9 downto 0);
        rst_punt_total: out STD_LOGIC
   );
end caso_turnos;

architecture Behavioral of caso_turnos is
    --signal turno: unsigned(9 downto 0) := (others => '0');
begin

    process(reset)
    variable turno: unsigned(9 downto 0):= (others => '0');
    begin
        if  reset'event and reset = '1'  then
            if turno = 13 then
                turno := (others => '0');  -- Vuelve a 0 cuando llega a 13
            else
                turno := turno + 1;  -- Incrementa el turno
            end if;
--           turno := turno + 1;
        end if;
--        if reset_def'event and reset_def ='1' then
--            turno:= (others => '0');
--        end if;
    resultado <= turno;
    --rst_punt_total <= '1' when turno = 0 else '0'; 
    end process;

end Behavioral;


