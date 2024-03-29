----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:15:04 05/30/2018 
-- Design Name: 
-- Module Name:    Instructions - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
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
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Instructions is
	Port (
		INSTRUCTION_POINTER : out STD_LOGIC_VECTOR(7 downto 0);
		CLK : in STD_LOGIC;
		ENABLE : in STD_LOGIC
	);
end Instructions;

architecture Behavioral of Instructions is
	signal TMP : STD_LOGIC_VECTOR(7 downto 0) := (others => '0');
begin
	process
	begin
		wait until CLK'event and CLK = '1';
		if ENABLE = '1' then
			TMP <= TMP + CONV_STD_LOGIC_VECTOR(1,8);
		else
			TMP <= TMP;
		end if;
	end process;
	INSTRUCTION_POINTER <= TMP;
end Behavioral;

