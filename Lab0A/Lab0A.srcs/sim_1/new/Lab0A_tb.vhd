----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09/12/2021 03:29:21 PM
-- Design Name: 
-- Module Name: Lab0A_tb - Behavioral
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

entity Lab0A_tb is
--  Port ( );
end Lab0A_tb;

architecture bench of Lab0A_tb is

    component Lab0A 
        Port(A,B : in STD_LOGIC; 
                F_NOT, F_AND, F_OR : out STD_LOGIC); 
    end component; 
    
    signal A_tb, B_tb : STD_LOGIC; 
    signal F_NOT_tb, F_AND_tb, F_OR_tb : STD_LOGIC; 
    

begin
    uut: Lab0A port map (
                            A => A_tb, 
                            B => B_tb, 
                            F_NOT => F_NOT_tb, 
                            F_AND => F_AND_tb, 
                            F_OR => F_OR_tb); 
                            
stimulus: process
    begin 
        A_tb <= '0'; B_tb <= '0'; wait for 100 ns; 
        A_tb <= '0'; B_tb <= '1'; wait for 100 ns;
        A_tb <= '1'; B_tb <= '1'; wait for 100 ns;
        A_tb <= '1'; B_tb <= '0'; wait for 100 ns;
        wait; 
     end process; 
end bench;
