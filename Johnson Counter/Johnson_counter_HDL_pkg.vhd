---------------------------------------------------
-- Sheet: Johnson counter
-- RefDes: PLD1
-- Part Number: XC3S500E
-- Generated By: Multisim
--
-- Author: Akshat
-- Date: Thursday, October 17 11:32:50, 2019
---------------------------------------------------

---------------------------------------------------
-- Use: This file contains definitions of components
-- Use with the exported top-level file
---------------------------------------------------
library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;

package Johnson_counter_HDL_pkg is

	component AUTO_IBUF
		port(
		I : in std_logic;
		O : out std_logic
	);
	end component;

	component AUTO_OBUF
		port(
		I : in std_logic;
		O : out std_logic
	);
	end component;

	component FF_D_CO_NI
		Port ( D : in  STD_LOGIC;
           CLK : in  STD_LOGIC;
           Q : out  STD_LOGIC;
           Qneg : out  STD_LOGIC);
	end component;

	component XOR2_NI
		port (
    B : in STD_LOGIC := 'X';
    A : in STD_LOGIC := 'X';
    Y : out STD_LOGIC := 'U'
  );
	end component;

end Johnson_counter_HDL_pkg;
package body Johnson_counter_HDL_pkg is
end Johnson_counter_HDL_pkg;


library work;
use work.Johnson_counter_HDL_pkg.ALL;
library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity AUTO_IBUF is
	port(
		I : in std_logic;
		O : out std_logic
	);end AUTO_IBUF;

architecture AUTO_IBUF_ARCH of AUTO_IBUF is

begin
 O <= I;
end AUTO_IBUF_ARCH;


library work;
use work.Johnson_counter_HDL_pkg.ALL;
library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity AUTO_OBUF is
	port(
		I : in std_logic;
		O : out std_logic
	);end AUTO_OBUF;

architecture AUTO_OBUF_ARCH of AUTO_OBUF is

begin
 O <= I;
end AUTO_OBUF_ARCH;


library work;
use work.Johnson_counter_HDL_pkg.ALL;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity FF_D_CO_NI is
    Port ( D : in  STD_LOGIC;
           CLK : in  STD_LOGIC;
           Q : out  STD_LOGIC;
           Qneg : out  STD_LOGIC);
end FF_D_CO_NI;

architecture BEHAVIORAL of FF_D_CO_NI is

begin
 process (CLK,D)
 begin
  if rising_edge(CLK) then
    if D='1' then Q<='1';
	         Qneg<='0';
	else Q<='0';
	       Qneg<='1';           
    end if;
  end if;
 end process;		
end BEHAVIORAL;

library work;
use work.Johnson_counter_HDL_pkg.ALL;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity XOR2_NI is
  port (
    B : in STD_LOGIC := 'X';
    A : in STD_LOGIC := 'X';
    Y : out STD_LOGIC := 'U'
  );
end XOR2_NI;

architecture BEHAVIORAL of XOR2_NI is  

begin
  Y <= A xor B;
end BEHAVIORAL;
