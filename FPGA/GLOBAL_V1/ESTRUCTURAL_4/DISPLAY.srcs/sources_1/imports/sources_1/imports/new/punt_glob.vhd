library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;  -- Reemplaza STD_LOGIC_ARITH y STD_LOGIC_UNSIGNED
use work.types_pkg.all;
-- Paquete de tipos comunes ya declarado en otro archivo
--use work.TiposComunes.all;

entity punt_glob is
    Port ( 
        clk        : in  STD_LOGIC;
        reset      : in  STD_LOGIC;
        ce      : in  STD_LOGIC;
        seleccion  : in integer range 0 to 32;  -- Definir rango de seleccion
        seleccionar: in  STD_LOGIC_vector(13 downto 1);
        --dados: integer_vector(4 downto 0);  -- Asumir que arrayofintegers es un tipo definido
        dados: in integer_vector(4 downto 0); 
        resultado  : out unsigned(9 downto 0);
        ready       : out STD_LOGIC
    );
end punt_glob;

architecture Behavioral of punt_glob is
-- Declaracion de señales
signal resultado0 : unsigned(9 downto 0); 
signal resultado1 : unsigned(9 downto 0);
signal resultado2 : unsigned(9 downto 0);
signal resultado3 : unsigned(9 downto 0);
signal resultado4 : unsigned(9 downto 0);
signal resultado5 : unsigned(9 downto 0);
signal resultado6 : unsigned(9 downto 0);
signal resultado_t : unsigned(9 downto 0);
signal resultado_c : unsigned(9 downto 0);
signal resultado_f : unsigned(9 downto 0);
signal resultado_ep : unsigned(9 downto 0);
signal resultado_eg: unsigned(9 downto 0);
signal resultado_y : unsigned(9 downto 0);
signal resultado_m : unsigned(9 downto 0);
signal resultado_pt : unsigned(9 downto 0);
signal resultado_turnos : unsigned(9 downto 0);
signal ready1 : std_logic;
signal ready2 : std_logic;
signal ready3 : std_logic;
signal ready4 : std_logic;
signal ready5 : std_logic;
signal ready6 : std_logic;
signal ready_t : std_logic;
signal ready_c : std_logic;
signal ready_f : std_logic;
signal ready_ep : std_logic;
signal ready_eg : std_logic;
signal ready_y : std_logic;
signal ready_m : std_logic;
signal reset_pt : std_logic;
-- fin de declaracion de señales

--declaracion de entidades 
 -- Declaración del componente caso_yahtz
    component caso_yahtz
        Port (
            resultado  : out unsigned(9 downto 0)
        );
    end component;
-- Declaración del componente case_i_ns
component case_i_ns
        generic (
            param : integer := 0
        );
        Port (
            clk        : in  STD_LOGIC;
            reset      : in  STD_LOGIC;
            ce      : in  STD_LOGIC;
            seleccionar: in  STD_LOGIC;
            dados: in integer_vector(4 downto 0);
            resultado  : out unsigned(9 downto 0);
            ready      : out STD_LOGIC
        );
    end component;
    
 -- Declaración del componente case_tcy
    component case_tcy
        generic (
            param : integer := 0;
            res   : integer := 0
        );
        Port (
            clk        : in  STD_LOGIC;
            reset      : in  STD_LOGIC;
            ce      : in  STD_LOGIC;
            seleccionar: in  STD_LOGIC;
            dados: in integer_vector(4 downto 0);
            resultado  : out unsigned(9 downto 0);
            ready      : out STD_LOGIC
        );
    end component;
    
    -- Declarar la entidad 'caso_fullh'
    component caso_fullh is
        Port (
            clk        : in  STD_LOGIC;
            reset      : in  STD_LOGIC := '0';
            ce      : in  STD_LOGIC;
            seleccionar: in  STD_LOGIC := '0';
            dados: in integer_vector(4 downto 0);  
            resultado  : out unsigned(9 downto 0);
            ready      : out STD_LOGIC
        );
    end component;
    
    -- Declarar el componente case_escaleras con parámetros genéricos específicos
    component case_escaleras is
        generic (
            param : integer := 0;  -- Valor genérico por defecto
            res   : integer := 0
        );
        Port (
            clk        : in  STD_LOGIC;
            reset      : in  STD_LOGIC := '0';
            ce      : in  STD_LOGIC;
            seleccionar: in  STD_LOGIC := '0';
            dados: in integer_vector(4 downto 0);  
            resultado  : out unsigned(9 downto 0);
            ready      : out STD_LOGIC
        );
    end component;
    
    -- Declaración del componente caso_magico
    component caso_magico is
        Port (
            clk        : in  STD_LOGIC;
            reset      : in  STD_LOGIC := '0';
            ce      : in  STD_LOGIC;
            seleccionar: in  STD_LOGIC := '0';
            dados: in integer_vector(4 downto 0);  
            resultado  : out unsigned(9 downto 0);
            ready      : out STD_LOGIC
        );
    end component;
    
    -- Componente caso_turnos
    component caso_turnos
        Port (
            clk           : in  STD_LOGIC;
            reset         : in  STD_LOGIC;
            resultado     : out unsigned(9 downto 0);
            rst_punt_total: out STD_LOGIC
        );
    end component;
    
    -- Declaración del componente
    component punt_total
        Port (
            clk         : in std_logic;
            reset       : in std_logic;
            ce          : in std_logic;
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
            salida      : out unsigned(9 downto 0);
            ready_total : out std_logic
        );
    end component;
    
    -- Declaración del componente
    component demux
        Port (
            sel    : in integer range 0 to 15;
            input0 : in unsigned(9 downto 0);
            input1 : in unsigned(9 downto 0);
            input2 : in unsigned(9 downto 0);
            input3 : in unsigned(9 downto 0);
            input4 : in unsigned(9 downto 0);
            input5 : in unsigned(9 downto 0);
            input6 : in unsigned(9 downto 0);
            input7 : in unsigned(9 downto 0);
            input8 : in unsigned(9 downto 0);
            input9 : in unsigned(9 downto 0);
            input10: in unsigned(9 downto 0);
            input11: in unsigned(9 downto 0);
            input12: in unsigned(9 downto 0);
            input13: in unsigned(9 downto 0);
            input14: in unsigned(9 downto 0);
            input15: in unsigned(9 downto 0);
            output : out unsigned(9 downto 0)
        );
    end component;
    
   
--fin de declaracion de entidades  

   
begin
-- Instancia de caso_yahtz
    instance_caso_yahtz: caso_yahtz
        port map (
            resultado  => resultado0
        );
 -- Instancia para param = 1
    instance1: entity work.case_i_ns
        generic map (
            param => 1
        )
        port map (
            clk        => clk,
            reset      => reset,
            CE          => ce,
            seleccionar=> seleccionar(1),
            dados      => dados,
            resultado  => resultado1,
            ready      => ready1
        );

    -- Instancia para param = 2
    instance2: entity work.case_i_ns
        generic map (
            param => 2
        )
        port map (
            clk        => clk,
            reset      => reset,
            CE          => ce,
            seleccionar=> seleccionar(2),
            dados      => dados,
            resultado  => resultado2,
            ready      => ready2
        );

    -- Instancia para param = 3
    instance3: entity work.case_i_ns
        generic map (
            param => 3
        )
        port map (
            clk        => clk,
            reset      => reset,
            CE          => ce,
            seleccionar=> seleccionar(3),
            dados      => dados,
            resultado  => resultado3,
            ready      => ready3
        );

    -- Instancia para param = 4
    instance4: entity work.case_i_ns
        generic map (
            param => 4
        )
        port map (
            clk        => clk,
            reset      => reset,
            CE          => ce,
            seleccionar=> seleccionar(4),
            dados      => dados,
            resultado  => resultado4,
            ready      => ready4
        );

    -- Instancia para param = 5
    instance5: entity work.case_i_ns
        generic map (
            param => 5
        )
        port map (
            clk        => clk,
            reset      => reset,
            CE          => ce,
            seleccionar=> seleccionar(5),
            dados      => dados,
            resultado  => resultado5,
            ready      => ready5
        );

    -- Instancia para param = 6
    instance6: entity work.case_i_ns
        generic map (
            param => 6
        )
        port map (
            clk        => clk,
            reset      => reset,
            CE          => ce,
            seleccionar=> seleccionar(6),
            dados      => dados,
            resultado  => resultado6,
            ready      => ready6
        );
        
 instance_case_t: case_tcy
        generic map (
            param => 3,
            res   => 15
        )
        port map (
            clk        => clk,
            reset      => reset,
            CE          => ce,
            seleccionar=> seleccionar(7),
            dados      => dados,
            resultado  => resultado_t,
            ready      => ready_t
        );

    -- Instancia del segundo case_tcy con param=4 y res=20
    instance_case_c: case_tcy
        generic map (
            param => 4,
            res   => 20
        )
        port map (
            clk        => clk,
            reset      => reset,
            CE          => ce,
            seleccionar=> seleccionar(8),
            dados      => dados,
            resultado  => resultado_c,
            ready      => ready_c
        );

    -- Instancia del tercer case_tcy con param=5 y res=50
    instance_case_y: case_tcy
        generic map (
            param => 5,
            res   => 50
        )
        port map (
            clk        => clk,
            reset      => reset,
            CE          => ce,
            seleccionar=> seleccionar(12),
            dados      => dados,
            resultado  => resultado_y,
            ready      => ready_y
        );
        
        -- Instanciación de la entidad caso_fullh
    
   instance_caso_fullh: caso_fullh
        Port map (
            clk        => clk,
            reset      => reset,
            CE          => ce,
            seleccionar=> seleccionar(9),
            dados      => dados,
            resultado  => resultado_f,
            ready      => ready_f
        );
        
        
   instance_caso_ep : case_escaleras
        generic map (
            param => 3,
            res   => 20
        )
        Port map (
            clk        => clk,
            reset      => reset,
            CE          => ce,
            seleccionar=> seleccionar(10),
            dados      => dados,
            resultado  => resultado_ep,  -- Podría ser diferente si se desea separar resultados
            ready      => ready_ep
        );

    -- Instanciación del segundo componente 'case_escaleras' con param = 4 y res = 25
    instance_caso_eg: case_escaleras
        generic map (
            param => 4,
            res   => 25
        )
        Port map (
            clk        => clk,
            reset      => reset,
            CE          => ce,
            seleccionar=> seleccionar(11),
            dados      => dados,
            resultado  => resultado_eg,  -- Podría ser diferente si se desea separar resultados
            ready      => ready_eg
        );
        
     instance_caso_m: caso_magico
        Port map (
            clk        => clk,
            reset      => reset,
            CE          => ce,
            seleccionar=> seleccionar(13),
            dados      => dados,
            resultado  => resultado_m,
            ready      => ready_m
        );

-- Instanciación del componente caso_turnos
    instancia_caso_turnos: caso_turnos
        Port map (
            clk           => clk,
            reset         => reset,
            resultado     => resultado_turnos,
            rst_punt_total=> reset_pt
     );
     
    -- Instanciación del componente
    instancia_punt_total: punt_total
        Port map (
            clk         => clk,
            reset       => reset_pt,
            CE          => ce,
            input1      => resultado1,
            input2      => resultado2,
            input3      => resultado3,
            input4      => resultado4,
            input5      => resultado5,
            input6      => resultado6,
            input7      => resultado_t,
            input8      => resultado_c,
            input9      => resultado_f,
            input10     => resultado_ep,
            input11     => resultado_eg,
            input12     => resultado_y,
            input13     => resultado_m,
            ready1      => ready1,
            ready2      => ready2,
            ready3      => ready3,
            ready4      => ready4,
            ready5      => ready5,
            ready6      => ready6,
            ready7      => ready_t,
            ready8      => ready_c,
            ready9      => ready_f,
            ready10     => ready_ep,
            ready11     => ready_eg,
            ready12     => ready_y,
            ready13     => ready_m,
            salida      => resultado_pt,
            ready_total => ready
        );
        
         -- Instanciación del componente
    instancia_demux: demux
        Port map (
            sel     => seleccion,
            input0  => resultado0,
            input1  => resultado1,
            input2  => resultado2,
            input3  => resultado3,
            input4  => resultado4,
            input5  => resultado5,
            input6  => resultado6,
            input7  => resultado_t,
            input8  => resultado_c,
            input9  => resultado_f,
            input10 => resultado_ep,
            input11 => resultado_eg,
            input12 => resultado_y,
            input13 => resultado_m,
            input14 => resultado_pt,
            input15 => resultado_turnos,
            output  => resultado
        );
     
     
   
end Behavioral;
