library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use work.types_pkg.all;

entity generaciondados is
    generic (
        n_max : positive := 5  --máximo de dados
    );
    port (
        clk, rst     : in  std_logic;                          
        CE           : in  std_logic;                          
        tirar_dados  : in  std_logic_vector(n_max-1 downto 0); -- Dados a tirar (1=tirar, 0=conservar)
        rdy         : out std_logic;                          -- Señal de salida
        dados        : out integer_vector(n_max-1 downto 0)   -- Array de n_max dados
    );
end entity generaciondados;

architecture rtl of generaciondados is
    -- Señales internas para conectar las salidas de los LFSRs
    signal rnd_values : integer_vector(n_max-1 downto 0);
    signal ready_flags : std_logic_vector(n_max-1 downto 0) := (others => '0');
    signal dados_i : integer_vector(n_max-1 downto 0) := (others => 0);
    signal ready_i : std_logic := '0';
    
    
    signal ready_all : std_logic := '0'; -- Señal para indicar que todo está listo
    signal rdy_pulse : std_logic := '0'; -- Pulso de un ciclo para rdy

    component Generador_LFSR is
    generic (
        ancho : positive := 3 -- Ancho del registro
    );
    port (
        clk     : in std_logic;  
        rst     : in std_logic;  
        rnd_out : out integer    
    );
   end component Generador_LFSR;

begin

    -- Instanciar n_max generadores LFSR
    lfsr_generators: for i in 0 to n_max-1 generate
        LFSR_inst: Generador_LFSR
            generic map (
                ancho => i+3  -- Ancho del LFSR
            )
            port map (
                clk     => clk,
                rst     => rst,
                rnd_out => rnd_values(i)
            );
    end generate;

    -- Proceso para actualizar los dados y ready_flags
    process (clk, rst)
    begin
        if rst = '0' then
            dados_i <= (others => 7);  
            ready_flags <= (others => '0');  
        elsif rising_edge(clk) then
            if CE = '1' then 
                for i in 0 to n_max-1 loop
                    if tirar_dados(i) = '1' then
                        dados_i(i) <= rnd_values(i);  
                    end if;
                    ready_flags(i) <= '1';  -- Marcamos listo solo si se actualiza
                end loop;
            else 
                ready_flags <= (others => '0');
            end if;
        end if;
    end process;

    -- Proceso síncrono para evaluar si todos los ready_flags están listos
    process (clk, rst)
    begin
        if rst = '0' then
            ready_i <= '0';  -- Reset inicial
        elsif rising_edge(clk) then
            ready_i <= '1';
            for i in ready_flags'range loop
                if ready_flags(i) /= '1' then
                    ready_i <= '0';-- Si algún flag no está listo, apaga ready_i
                end if;
            end loop;
        end if;
    end process;

    rdy <= ready_i; 
    dados <= dados_i; 
end architecture;


