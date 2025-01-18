library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;  -- Para operaciones con "unsigned" y "signed"


entity caso_turnos is
   Port (
        clk           : in  STD_LOGIC;
        reset         : in  STD_LOGIC := '0';
        resultado     : out unsigned(9 downto 0);
        rst_punt_total: out STD_LOGIC
   );
end caso_turnos;

architecture Behavioral of caso_turnos is

begin

    process(reset)
        variable turno: unsigned(9 downto 0) := (others => '0');
    begin
        if  reset = '1'  then
            if turno = 13 then
                turno := (others => '0');  -- Vuelve a 0 cuando llega a 13
            else
                turno := turno + 1;  -- Incrementa el turno
            end if;
            
        end if;
       
        resultado <= turno;
        if turno = 0 then
            rst_punt_total <= '1';
        else
            rst_punt_total <= '0';
        end if;
    end process;

end Behavioral;


