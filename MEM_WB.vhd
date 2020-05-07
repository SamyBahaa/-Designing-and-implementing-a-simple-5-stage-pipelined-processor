LIBRARY IEEE;
USE IEEE.std_logic_1164.all;
USE IEEE.numeric_std.all;

Entity MEM_WB is
    port(rst,clk                :in std_logic;
                 -----in Port-----                             
         WB_in                  : in std_logic_vector(1  downto 0);
         Write_Enable_in        : in std_logic;                                                     
         Swap_Enable_in         : in std_logic;
                      -----out Port-----                
         WB_out                 : out std_logic_vector(1  downto 0);
         Write_Enable_out       : out std_logic;                                                        
         Swap_Enable_out        : out std_logic             
        );
End Entity MEM_WB;


Architecture arch_MEM_WB Of MEM_WB Is
  BEGIN
       process(clk,rst)
       begin
            if rst='1' then
		           WB_out            <=      (others =>'0');              
               Write_Enable_out  <=      '0';
               Swap_Enable_out   <=      '0';  

            elsif rising_edge (clk) then                                  
		           WB_out            <=      WB_in;                
               Write_Enable_out  <=      Write_Enable_in;
               Swap_Enable_out   <=      Swap_Enable_in;       
            end if;
          end process;                    
  
End arch_MEM_WB;
