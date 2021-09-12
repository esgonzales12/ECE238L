----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09/12/2021 11:15:01 AM
-- Design Name: 
-- Module Name: Lab0B_tb - bench
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Lab0B_tb is
--  Port ( );
end Lab0B_tb;

architecture bench of Lab0B_tb is
    component Lab0B
        Port(A,B: in STD_LOGIC; 
            F_NAND, F_NOR, F_XOR, F_XNOR, F_BUFF: out STD_LOGIC);
    end component; 
    
    signal A_tb, B_tb  :STD_LOGIC; 
    signal F_NAND_tb, F_NOR_tb, F_XOR_tb : STD_LOGIC; 
    signal F_XNOR_tb, F_BUFF_tb : STD_LOGIC; 

begin

    uut: Lab0B port map( A => A_TB, 
                         B => B_tb,
                         F_NAND => F_NAND_tb, 
                         F_NOR => F_NOR_tb, 
                         F_XOR => F_XOR_tb,
                         F_XNOR => F_XNOR_tb, 
                         F_BUFF => F_BUFF_tb); 
 stimulus: process
    begin
     A_tb <= '0'; B_tb <= '0'; wait for 100 ns; 
     A_tb <= '0'; B_tb <= '1'; wait for 100 ns; 
     A_tb <= '1'; B_tb <= '1'; wait for 100 ns; 
     A_tb <= '1'; B_tb <= '0'; wait for 100 ns; 
     wait; 
    end process; 
end bench;
