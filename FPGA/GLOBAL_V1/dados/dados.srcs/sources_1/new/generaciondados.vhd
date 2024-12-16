library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use work.types_pkg.all;

entity generaciondados is
    generic (
        n_max : positive := 5  --máximo de dados
    );
    port (
        clk, rst     : in  std_logic;                          -- Reloj y reset (activo en bajo)
        CE           : in  std_logic;                          -- Chip Enable
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
    signal CE_prev : std_logic := '0'; -- Para detectar flanco de CE
    signal ready_i : std_logic := '0';
    signal actualizar_dados: std_logic := '0';

    component Generador_LFSR is
    generic (
        ancho : positive := 3 -- Ancho del registro
    );
    port (
        clk     : in std_logic;  -- Reloj
        rst     : in std_logic;  -- Reset (activo en bajo)
        rnd_out : out integer    -- Salida aleatoria como entero [1..6]
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

    -- Proceso para detectar el flanco de subida de CE
    process (clk, rst)
    begin
        if rst = '1' then
            CE_prev <= '0';
            actualizar_dados <= '0';
        elsif rising_edge(clk) then
            CE_prev <= CE;
            if CE = '1' and CE_prev = '0' then
                actualizar_dados <= '1';  -- Flanco detectado
            else
                actualizar_dados <= '0';
            end if;
        end if;
    end process;


    -- Proceso para actualizar los dados
    process (clk, rst)
    begin
        if rst = '1' then
            dados_i <= (others => 0);  
            ready_flags <= (others => '0');  
            ready_i <= '0';  
        elsif rising_edge(clk) then
            if actualizar_dados = '1' then 
                for i in 0 to n_max-1 loop
                    if tirar_dados(i) = '1' then
                        dados_i(i) <= rnd_values(i);  
                    end if;
                        ready_flags(i) <= '1';  
                end loop;
            else
                ready_flags <= (others => '0');  
            end if;
        end if;
    end process;

    -- Proceso para verificar si todos los dados están listos (pulso rdy)
    process (ready_flags)
    begin
       
            ready_i <= '1';
            
            for i in ready_flags'range loop
                if ready_flags(i) /= '1' then
                    ready_i <= '0'; 
                end if;
             end loop;    
       
    end process;

dados <= dados_i;
rdy <= ready_i;
end architecture;


