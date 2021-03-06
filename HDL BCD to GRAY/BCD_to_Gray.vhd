---------------------------------------------------
-- Sheet: BCD to gray
-- RefDes: PLD1
-- Part Number: XC3S500E
-- Generated By: Multisim
--
-- Author: Akshat
-- Date: Thursday, October 17 08:41:00, 2019
---------------------------------------------------

---------------------------------------------------
-- Use: This file defines the top-level of the design
-- Use with the exported package file
---------------------------------------------------
library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;

library work;
use work.BCD_to_Gray_pkg.ALL;


entity BCDtogray is
	port (

		SW0 : in std_logic;
		SW1 : in std_logic;
		SW2 : in std_logic;
		SW3 : in std_logic;
		LED0 : out std_logic;
		LED1 : out std_logic;
		LED2 : out std_logic;
		LED3 : out std_logic;
		sys_clk_pin : in std_logic
	);
end BCDtogray;


architecture behavioral of BCDtogray is


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

	component XOR2_NI
		port (
    B : in STD_LOGIC := 'X';
    A : in STD_LOGIC := 'X';
    Y : out STD_LOGIC := 'U'
  );
	end component;
	signal \1\ : std_logic;
	signal \7\ : std_logic;
	signal \6\ : std_logic;
	signal \5\ : std_logic;
	signal \4\ : std_logic;
	signal \3\ : std_logic;
	signal \2\ : std_logic;
begin
	SW0_AUTOBUF : AUTO_IBUF
		port map( I => SW0, O => \4\ );
	SW1_AUTOBUF : AUTO_IBUF
		port map( I => SW1, O => \2\ );
	SW2_AUTOBUF : AUTO_IBUF
		port map( I => SW2, O => \1\ );
	SW3_AUTOBUF : AUTO_IBUF
		port map( I => SW3, O => \3\ );
	LED0_AUTOBUF : AUTO_OBUF
		port map( I => \4\, O => LED0 );
	LED1_AUTOBUF : AUTO_OBUF
		port map( I => \7\, O => LED1 );
	LED2_AUTOBUF : AUTO_OBUF
		port map( I => \5\, O => LED2 );
	LED3_AUTOBUF : AUTO_OBUF
		port map( I => \6\, O => LED3 );
	U1 : XOR2_NI
		port map( A => \4\, B => \2\, Y => \7\ );
	U2 : XOR2_NI
		port map( A => \2\, B => \1\, Y => \5\ );
	U3 : XOR2_NI
		port map( A => \1\, B => \3\, Y => \6\ );
end behavioral;
