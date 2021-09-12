----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09/12/2021 10:35:48 AM
-- Design Name: 
-- Module Name: LAB0B - Boolean_Function
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

entity LAB0B is
    Port ( A,B : in STD_LOGIC;
           F_NAND : out STD_LOGIC;
           F_NOR : out STD_LOGIC;
           F_XOR : out STD_LOGIC;
           F_XNOR : out STD_LOGIC;
           F_BUFF : out STD_LOGIC);
end LAB0B;

architecture Boolean_Function of LAB0B is

begin
F_NAND <= A nand B; 
F_NOR <= A nor B; 
F_XOR <= A xor B; 
F_XNOR <= A xnor B; 
F_BUFF <= A; 

end Boolean_Function;
