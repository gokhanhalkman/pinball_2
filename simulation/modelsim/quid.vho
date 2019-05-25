-- Copyright (C) 1991-2014 Altera Corporation. All rights reserved.
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, the Altera Quartus II License Agreement,
-- the Altera MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Altera and sold by Altera or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 14.1.0 Build 186 12/03/2014 SJ Web Edition"

-- DATE "05/22/2019 22:52:07"

-- 
-- Device: Altera 5CSEMA5F31C6 Package FBGA896
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	quid IS
    PORT (
	clk : IN std_logic;
	hsync : OUT std_logic;
	vsync : OUT std_logic;
	clk_25 : OUT std_logic;
	red : OUT std_logic_vector(7 DOWNTO 0);
	green : OUT std_logic_vector(7 DOWNTO 0);
	blue : OUT std_logic_vector(7 DOWNTO 0)
	);
END quid;

-- Design Ports Information
-- hsync	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vsync	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk_25	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- red[0]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- red[1]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- red[2]	=>  Location: PIN_E13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- red[3]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- red[4]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- red[5]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- red[6]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- red[7]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- green[0]	=>  Location: PIN_J9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- green[1]	=>  Location: PIN_J10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- green[2]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- green[3]	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- green[4]	=>  Location: PIN_G11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- green[5]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- green[6]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- green[7]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- blue[0]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- blue[1]	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- blue[2]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- blue[3]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- blue[4]	=>  Location: PIN_H14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- blue[5]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- blue[6]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- blue[7]	=>  Location: PIN_J14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_AF14,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF quid IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_hsync : std_logic;
SIGNAL ww_vsync : std_logic;
SIGNAL ww_clk_25 : std_logic;
SIGNAL ww_red : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_green : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_blue : std_logic_vector(7 DOWNTO 0);
SIGNAL \Mult0~136_AX_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \Mult0~136_AY_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \Mult0~136_RESULTA_bus\ : std_logic_vector(63 DOWNTO 0);
SIGNAL \Mult1~8_AX_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \Mult1~8_AY_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \Mult1~8_RESULTA_bus\ : std_logic_vector(63 DOWNTO 0);
SIGNAL \Mult0~477_AX_bus\ : std_logic_vector(13 DOWNTO 0);
SIGNAL \Mult0~477_AY_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \Mult0~477_BX_bus\ : std_logic_vector(13 DOWNTO 0);
SIGNAL \Mult0~477_BY_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \Mult0~477_RESULTA_bus\ : std_logic_vector(63 DOWNTO 0);
SIGNAL \Mult2~132_AX_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \Mult2~132_AY_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \Mult2~132_RESULTA_bus\ : std_logic_vector(63 DOWNTO 0);
SIGNAL \Mult3~8_AX_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \Mult3~8_AY_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \Mult3~8_RESULTA_bus\ : std_logic_vector(63 DOWNTO 0);
SIGNAL \Mult2~473_AX_bus\ : std_logic_vector(13 DOWNTO 0);
SIGNAL \Mult2~473_AY_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \Mult2~473_BX_bus\ : std_logic_vector(13 DOWNTO 0);
SIGNAL \Mult2~473_BY_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \Mult2~473_RESULTA_bus\ : std_logic_vector(63 DOWNTO 0);
SIGNAL \Mult1~405_AX_bus\ : std_logic_vector(13 DOWNTO 0);
SIGNAL \Mult1~405_AY_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \Mult1~405_BX_bus\ : std_logic_vector(13 DOWNTO 0);
SIGNAL \Mult1~405_BY_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \Mult1~405_RESULTA_bus\ : std_logic_vector(63 DOWNTO 0);
SIGNAL \Mult3~405_AX_bus\ : std_logic_vector(13 DOWNTO 0);
SIGNAL \Mult3~405_AY_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \Mult3~405_BX_bus\ : std_logic_vector(13 DOWNTO 0);
SIGNAL \Mult3~405_BY_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \Mult3~405_RESULTA_bus\ : std_logic_vector(63 DOWNTO 0);
SIGNAL \Mult0~168\ : std_logic;
SIGNAL \Mult0~169\ : std_logic;
SIGNAL \Mult0~170\ : std_logic;
SIGNAL \Mult0~171\ : std_logic;
SIGNAL \Mult0~172\ : std_logic;
SIGNAL \Mult0~173\ : std_logic;
SIGNAL \Mult0~174\ : std_logic;
SIGNAL \Mult0~175\ : std_logic;
SIGNAL \Mult0~176\ : std_logic;
SIGNAL \Mult0~177\ : std_logic;
SIGNAL \Mult0~178\ : std_logic;
SIGNAL \Mult0~179\ : std_logic;
SIGNAL \Mult0~180\ : std_logic;
SIGNAL \Mult0~181\ : std_logic;
SIGNAL \Mult0~182\ : std_logic;
SIGNAL \Mult0~183\ : std_logic;
SIGNAL \Mult0~184\ : std_logic;
SIGNAL \Mult0~185\ : std_logic;
SIGNAL \Mult0~186\ : std_logic;
SIGNAL \Mult0~187\ : std_logic;
SIGNAL \Mult0~188\ : std_logic;
SIGNAL \Mult0~189\ : std_logic;
SIGNAL \Mult0~190\ : std_logic;
SIGNAL \Mult0~191\ : std_logic;
SIGNAL \Mult0~192\ : std_logic;
SIGNAL \Mult0~193\ : std_logic;
SIGNAL \Mult0~194\ : std_logic;
SIGNAL \Mult0~195\ : std_logic;
SIGNAL \Mult0~196\ : std_logic;
SIGNAL \Mult0~197\ : std_logic;
SIGNAL \Mult0~198\ : std_logic;
SIGNAL \Mult0~199\ : std_logic;
SIGNAL \Mult1~40\ : std_logic;
SIGNAL \Mult1~41\ : std_logic;
SIGNAL \Mult1~42\ : std_logic;
SIGNAL \Mult1~43\ : std_logic;
SIGNAL \Mult1~44\ : std_logic;
SIGNAL \Mult1~45\ : std_logic;
SIGNAL \Mult1~46\ : std_logic;
SIGNAL \Mult1~47\ : std_logic;
SIGNAL \Mult1~48\ : std_logic;
SIGNAL \Mult1~49\ : std_logic;
SIGNAL \Mult1~50\ : std_logic;
SIGNAL \Mult1~51\ : std_logic;
SIGNAL \Mult1~52\ : std_logic;
SIGNAL \Mult1~53\ : std_logic;
SIGNAL \Mult1~54\ : std_logic;
SIGNAL \Mult1~55\ : std_logic;
SIGNAL \Mult1~56\ : std_logic;
SIGNAL \Mult1~57\ : std_logic;
SIGNAL \Mult1~58\ : std_logic;
SIGNAL \Mult1~59\ : std_logic;
SIGNAL \Mult1~60\ : std_logic;
SIGNAL \Mult1~61\ : std_logic;
SIGNAL \Mult1~62\ : std_logic;
SIGNAL \Mult1~63\ : std_logic;
SIGNAL \Mult1~64\ : std_logic;
SIGNAL \Mult1~65\ : std_logic;
SIGNAL \Mult1~66\ : std_logic;
SIGNAL \Mult1~67\ : std_logic;
SIGNAL \Mult1~68\ : std_logic;
SIGNAL \Mult1~69\ : std_logic;
SIGNAL \Mult1~70\ : std_logic;
SIGNAL \Mult1~71\ : std_logic;
SIGNAL \Mult0~491\ : std_logic;
SIGNAL \Mult0~492\ : std_logic;
SIGNAL \Mult0~493\ : std_logic;
SIGNAL \Mult0~494\ : std_logic;
SIGNAL \Mult0~495\ : std_logic;
SIGNAL \Mult0~496\ : std_logic;
SIGNAL \Mult0~497\ : std_logic;
SIGNAL \Mult0~498\ : std_logic;
SIGNAL \Mult0~499\ : std_logic;
SIGNAL \Mult0~500\ : std_logic;
SIGNAL \Mult0~501\ : std_logic;
SIGNAL \Mult0~502\ : std_logic;
SIGNAL \Mult0~503\ : std_logic;
SIGNAL \Mult0~504\ : std_logic;
SIGNAL \Mult0~505\ : std_logic;
SIGNAL \Mult0~506\ : std_logic;
SIGNAL \Mult0~507\ : std_logic;
SIGNAL \Mult0~508\ : std_logic;
SIGNAL \Mult0~509\ : std_logic;
SIGNAL \Mult0~510\ : std_logic;
SIGNAL \Mult0~511\ : std_logic;
SIGNAL \Mult0~512\ : std_logic;
SIGNAL \Mult0~513\ : std_logic;
SIGNAL \Mult0~514\ : std_logic;
SIGNAL \Mult0~515\ : std_logic;
SIGNAL \Mult0~516\ : std_logic;
SIGNAL \Mult0~517\ : std_logic;
SIGNAL \Mult0~518\ : std_logic;
SIGNAL \Mult0~519\ : std_logic;
SIGNAL \Mult0~520\ : std_logic;
SIGNAL \Mult0~521\ : std_logic;
SIGNAL \Mult0~522\ : std_logic;
SIGNAL \Mult0~523\ : std_logic;
SIGNAL \Mult0~524\ : std_logic;
SIGNAL \Mult0~525\ : std_logic;
SIGNAL \Mult0~526\ : std_logic;
SIGNAL \Mult0~527\ : std_logic;
SIGNAL \Mult0~528\ : std_logic;
SIGNAL \Mult0~529\ : std_logic;
SIGNAL \Mult0~530\ : std_logic;
SIGNAL \Mult0~531\ : std_logic;
SIGNAL \Mult0~532\ : std_logic;
SIGNAL \Mult0~533\ : std_logic;
SIGNAL \Mult0~534\ : std_logic;
SIGNAL \Mult0~535\ : std_logic;
SIGNAL \Mult0~536\ : std_logic;
SIGNAL \Mult0~537\ : std_logic;
SIGNAL \Mult0~538\ : std_logic;
SIGNAL \Mult0~539\ : std_logic;
SIGNAL \Mult0~540\ : std_logic;
SIGNAL \Mult2~164\ : std_logic;
SIGNAL \Mult2~165\ : std_logic;
SIGNAL \Mult2~166\ : std_logic;
SIGNAL \Mult2~167\ : std_logic;
SIGNAL \Mult2~168\ : std_logic;
SIGNAL \Mult2~169\ : std_logic;
SIGNAL \Mult2~170\ : std_logic;
SIGNAL \Mult2~171\ : std_logic;
SIGNAL \Mult2~172\ : std_logic;
SIGNAL \Mult2~173\ : std_logic;
SIGNAL \Mult2~174\ : std_logic;
SIGNAL \Mult2~175\ : std_logic;
SIGNAL \Mult2~176\ : std_logic;
SIGNAL \Mult2~177\ : std_logic;
SIGNAL \Mult2~178\ : std_logic;
SIGNAL \Mult2~179\ : std_logic;
SIGNAL \Mult2~180\ : std_logic;
SIGNAL \Mult2~181\ : std_logic;
SIGNAL \Mult2~182\ : std_logic;
SIGNAL \Mult2~183\ : std_logic;
SIGNAL \Mult2~184\ : std_logic;
SIGNAL \Mult2~185\ : std_logic;
SIGNAL \Mult2~186\ : std_logic;
SIGNAL \Mult2~187\ : std_logic;
SIGNAL \Mult2~188\ : std_logic;
SIGNAL \Mult2~189\ : std_logic;
SIGNAL \Mult2~190\ : std_logic;
SIGNAL \Mult2~191\ : std_logic;
SIGNAL \Mult2~192\ : std_logic;
SIGNAL \Mult2~193\ : std_logic;
SIGNAL \Mult2~194\ : std_logic;
SIGNAL \Mult2~195\ : std_logic;
SIGNAL \Mult3~40\ : std_logic;
SIGNAL \Mult3~41\ : std_logic;
SIGNAL \Mult3~42\ : std_logic;
SIGNAL \Mult3~43\ : std_logic;
SIGNAL \Mult3~44\ : std_logic;
SIGNAL \Mult3~45\ : std_logic;
SIGNAL \Mult3~46\ : std_logic;
SIGNAL \Mult3~47\ : std_logic;
SIGNAL \Mult3~48\ : std_logic;
SIGNAL \Mult3~49\ : std_logic;
SIGNAL \Mult3~50\ : std_logic;
SIGNAL \Mult3~51\ : std_logic;
SIGNAL \Mult3~52\ : std_logic;
SIGNAL \Mult3~53\ : std_logic;
SIGNAL \Mult3~54\ : std_logic;
SIGNAL \Mult3~55\ : std_logic;
SIGNAL \Mult3~56\ : std_logic;
SIGNAL \Mult3~57\ : std_logic;
SIGNAL \Mult3~58\ : std_logic;
SIGNAL \Mult3~59\ : std_logic;
SIGNAL \Mult3~60\ : std_logic;
SIGNAL \Mult3~61\ : std_logic;
SIGNAL \Mult3~62\ : std_logic;
SIGNAL \Mult3~63\ : std_logic;
SIGNAL \Mult3~64\ : std_logic;
SIGNAL \Mult3~65\ : std_logic;
SIGNAL \Mult3~66\ : std_logic;
SIGNAL \Mult3~67\ : std_logic;
SIGNAL \Mult3~68\ : std_logic;
SIGNAL \Mult3~69\ : std_logic;
SIGNAL \Mult3~70\ : std_logic;
SIGNAL \Mult3~71\ : std_logic;
SIGNAL \Mult2~487\ : std_logic;
SIGNAL \Mult2~488\ : std_logic;
SIGNAL \Mult2~489\ : std_logic;
SIGNAL \Mult2~490\ : std_logic;
SIGNAL \Mult2~491\ : std_logic;
SIGNAL \Mult2~492\ : std_logic;
SIGNAL \Mult2~493\ : std_logic;
SIGNAL \Mult2~494\ : std_logic;
SIGNAL \Mult2~495\ : std_logic;
SIGNAL \Mult2~496\ : std_logic;
SIGNAL \Mult2~497\ : std_logic;
SIGNAL \Mult2~498\ : std_logic;
SIGNAL \Mult2~499\ : std_logic;
SIGNAL \Mult2~500\ : std_logic;
SIGNAL \Mult2~501\ : std_logic;
SIGNAL \Mult2~502\ : std_logic;
SIGNAL \Mult2~503\ : std_logic;
SIGNAL \Mult2~504\ : std_logic;
SIGNAL \Mult2~505\ : std_logic;
SIGNAL \Mult2~506\ : std_logic;
SIGNAL \Mult2~507\ : std_logic;
SIGNAL \Mult2~508\ : std_logic;
SIGNAL \Mult2~509\ : std_logic;
SIGNAL \Mult2~510\ : std_logic;
SIGNAL \Mult2~511\ : std_logic;
SIGNAL \Mult2~512\ : std_logic;
SIGNAL \Mult2~513\ : std_logic;
SIGNAL \Mult2~514\ : std_logic;
SIGNAL \Mult2~515\ : std_logic;
SIGNAL \Mult2~516\ : std_logic;
SIGNAL \Mult2~517\ : std_logic;
SIGNAL \Mult2~518\ : std_logic;
SIGNAL \Mult2~519\ : std_logic;
SIGNAL \Mult2~520\ : std_logic;
SIGNAL \Mult2~521\ : std_logic;
SIGNAL \Mult2~522\ : std_logic;
SIGNAL \Mult2~523\ : std_logic;
SIGNAL \Mult2~524\ : std_logic;
SIGNAL \Mult2~525\ : std_logic;
SIGNAL \Mult2~526\ : std_logic;
SIGNAL \Mult2~527\ : std_logic;
SIGNAL \Mult2~528\ : std_logic;
SIGNAL \Mult2~529\ : std_logic;
SIGNAL \Mult2~530\ : std_logic;
SIGNAL \Mult2~531\ : std_logic;
SIGNAL \Mult2~532\ : std_logic;
SIGNAL \Mult2~533\ : std_logic;
SIGNAL \Mult2~534\ : std_logic;
SIGNAL \Mult2~535\ : std_logic;
SIGNAL \Mult2~536\ : std_logic;
SIGNAL \Mult1~419\ : std_logic;
SIGNAL \Mult1~420\ : std_logic;
SIGNAL \Mult1~421\ : std_logic;
SIGNAL \Mult1~422\ : std_logic;
SIGNAL \Mult1~423\ : std_logic;
SIGNAL \Mult1~424\ : std_logic;
SIGNAL \Mult1~425\ : std_logic;
SIGNAL \Mult1~426\ : std_logic;
SIGNAL \Mult1~427\ : std_logic;
SIGNAL \Mult1~428\ : std_logic;
SIGNAL \Mult1~429\ : std_logic;
SIGNAL \Mult1~430\ : std_logic;
SIGNAL \Mult1~431\ : std_logic;
SIGNAL \Mult1~432\ : std_logic;
SIGNAL \Mult1~433\ : std_logic;
SIGNAL \Mult1~434\ : std_logic;
SIGNAL \Mult1~435\ : std_logic;
SIGNAL \Mult1~436\ : std_logic;
SIGNAL \Mult1~437\ : std_logic;
SIGNAL \Mult1~438\ : std_logic;
SIGNAL \Mult1~439\ : std_logic;
SIGNAL \Mult1~440\ : std_logic;
SIGNAL \Mult1~441\ : std_logic;
SIGNAL \Mult1~442\ : std_logic;
SIGNAL \Mult1~443\ : std_logic;
SIGNAL \Mult1~444\ : std_logic;
SIGNAL \Mult1~445\ : std_logic;
SIGNAL \Mult1~446\ : std_logic;
SIGNAL \Mult1~447\ : std_logic;
SIGNAL \Mult1~448\ : std_logic;
SIGNAL \Mult1~449\ : std_logic;
SIGNAL \Mult1~450\ : std_logic;
SIGNAL \Mult1~451\ : std_logic;
SIGNAL \Mult1~452\ : std_logic;
SIGNAL \Mult1~453\ : std_logic;
SIGNAL \Mult1~454\ : std_logic;
SIGNAL \Mult1~455\ : std_logic;
SIGNAL \Mult1~456\ : std_logic;
SIGNAL \Mult1~457\ : std_logic;
SIGNAL \Mult1~458\ : std_logic;
SIGNAL \Mult1~459\ : std_logic;
SIGNAL \Mult1~460\ : std_logic;
SIGNAL \Mult1~461\ : std_logic;
SIGNAL \Mult1~462\ : std_logic;
SIGNAL \Mult1~463\ : std_logic;
SIGNAL \Mult1~464\ : std_logic;
SIGNAL \Mult1~465\ : std_logic;
SIGNAL \Mult1~466\ : std_logic;
SIGNAL \Mult1~467\ : std_logic;
SIGNAL \Mult1~468\ : std_logic;
SIGNAL \Mult3~419\ : std_logic;
SIGNAL \Mult3~420\ : std_logic;
SIGNAL \Mult3~421\ : std_logic;
SIGNAL \Mult3~422\ : std_logic;
SIGNAL \Mult3~423\ : std_logic;
SIGNAL \Mult3~424\ : std_logic;
SIGNAL \Mult3~425\ : std_logic;
SIGNAL \Mult3~426\ : std_logic;
SIGNAL \Mult3~427\ : std_logic;
SIGNAL \Mult3~428\ : std_logic;
SIGNAL \Mult3~429\ : std_logic;
SIGNAL \Mult3~430\ : std_logic;
SIGNAL \Mult3~431\ : std_logic;
SIGNAL \Mult3~432\ : std_logic;
SIGNAL \Mult3~433\ : std_logic;
SIGNAL \Mult3~434\ : std_logic;
SIGNAL \Mult3~435\ : std_logic;
SIGNAL \Mult3~436\ : std_logic;
SIGNAL \Mult3~437\ : std_logic;
SIGNAL \Mult3~438\ : std_logic;
SIGNAL \Mult3~439\ : std_logic;
SIGNAL \Mult3~440\ : std_logic;
SIGNAL \Mult3~441\ : std_logic;
SIGNAL \Mult3~442\ : std_logic;
SIGNAL \Mult3~443\ : std_logic;
SIGNAL \Mult3~444\ : std_logic;
SIGNAL \Mult3~445\ : std_logic;
SIGNAL \Mult3~446\ : std_logic;
SIGNAL \Mult3~447\ : std_logic;
SIGNAL \Mult3~448\ : std_logic;
SIGNAL \Mult3~449\ : std_logic;
SIGNAL \Mult3~450\ : std_logic;
SIGNAL \Mult3~451\ : std_logic;
SIGNAL \Mult3~452\ : std_logic;
SIGNAL \Mult3~453\ : std_logic;
SIGNAL \Mult3~454\ : std_logic;
SIGNAL \Mult3~455\ : std_logic;
SIGNAL \Mult3~456\ : std_logic;
SIGNAL \Mult3~457\ : std_logic;
SIGNAL \Mult3~458\ : std_logic;
SIGNAL \Mult3~459\ : std_logic;
SIGNAL \Mult3~460\ : std_logic;
SIGNAL \Mult3~461\ : std_logic;
SIGNAL \Mult3~462\ : std_logic;
SIGNAL \Mult3~463\ : std_logic;
SIGNAL \Mult3~464\ : std_logic;
SIGNAL \Mult3~465\ : std_logic;
SIGNAL \Mult3~466\ : std_logic;
SIGNAL \Mult3~467\ : std_logic;
SIGNAL \Mult3~468\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputCLKENA0_outclk\ : std_logic;
SIGNAL \Add0~41_sumout\ : std_logic;
SIGNAL \Add0~42\ : std_logic;
SIGNAL \Add0~37_sumout\ : std_logic;
SIGNAL \Add0~38\ : std_logic;
SIGNAL \Add0~33_sumout\ : std_logic;
SIGNAL \Add0~34\ : std_logic;
SIGNAL \Add0~29_sumout\ : std_logic;
SIGNAL \Add0~30\ : std_logic;
SIGNAL \Add0~25_sumout\ : std_logic;
SIGNAL \Add0~26\ : std_logic;
SIGNAL \Add0~21_sumout\ : std_logic;
SIGNAL \Add0~22\ : std_logic;
SIGNAL \Add0~17_sumout\ : std_logic;
SIGNAL \Add0~18\ : std_logic;
SIGNAL \Add0~13_sumout\ : std_logic;
SIGNAL \Add0~14\ : std_logic;
SIGNAL \Add0~45_sumout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Add0~46\ : std_logic;
SIGNAL \Add0~9_sumout\ : std_logic;
SIGNAL \Add0~10\ : std_logic;
SIGNAL \Add0~5_sumout\ : std_logic;
SIGNAL \Add0~6\ : std_logic;
SIGNAL \Add0~1_sumout\ : std_logic;
SIGNAL \Add0~2\ : std_logic;
SIGNAL \Add0~125_sumout\ : std_logic;
SIGNAL \Add0~126\ : std_logic;
SIGNAL \Add0~121_sumout\ : std_logic;
SIGNAL \Equal0~5_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Add0~122\ : std_logic;
SIGNAL \Add0~117_sumout\ : std_logic;
SIGNAL \Add0~118\ : std_logic;
SIGNAL \Add0~113_sumout\ : std_logic;
SIGNAL \Add0~114\ : std_logic;
SIGNAL \Add0~109_sumout\ : std_logic;
SIGNAL \Add0~110\ : std_logic;
SIGNAL \Add0~105_sumout\ : std_logic;
SIGNAL \Add0~106\ : std_logic;
SIGNAL \Add0~101_sumout\ : std_logic;
SIGNAL \Add0~102\ : std_logic;
SIGNAL \Add0~97_sumout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \Add0~98\ : std_logic;
SIGNAL \Add0~93_sumout\ : std_logic;
SIGNAL \Add0~94\ : std_logic;
SIGNAL \Add0~89_sumout\ : std_logic;
SIGNAL \Add0~90\ : std_logic;
SIGNAL \Add0~85_sumout\ : std_logic;
SIGNAL \Add0~86\ : std_logic;
SIGNAL \Add0~81_sumout\ : std_logic;
SIGNAL \Add0~82\ : std_logic;
SIGNAL \Add0~77_sumout\ : std_logic;
SIGNAL \Add0~78\ : std_logic;
SIGNAL \Add0~73_sumout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Add0~74\ : std_logic;
SIGNAL \Add0~69_sumout\ : std_logic;
SIGNAL \Add0~70\ : std_logic;
SIGNAL \Add0~65_sumout\ : std_logic;
SIGNAL \Add0~66\ : std_logic;
SIGNAL \Add0~61_sumout\ : std_logic;
SIGNAL \Add0~62\ : std_logic;
SIGNAL \Add0~57_sumout\ : std_logic;
SIGNAL \Add0~58\ : std_logic;
SIGNAL \Add0~53_sumout\ : std_logic;
SIGNAL \Add0~54\ : std_logic;
SIGNAL \Add0~49_sumout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Equal0~6_combout\ : std_logic;
SIGNAL \vga_h|clk_enable[0]~feeder_combout\ : std_logic;
SIGNAL \vga_h|Add1~37_sumout\ : std_logic;
SIGNAL \vga_h|Add1~38\ : std_logic;
SIGNAL \vga_h|Add1~33_sumout\ : std_logic;
SIGNAL \vga_h|Add1~34\ : std_logic;
SIGNAL \vga_h|Add1~29_sumout\ : std_logic;
SIGNAL \vga_h|Add1~30\ : std_logic;
SIGNAL \vga_h|Add1~25_sumout\ : std_logic;
SIGNAL \vga_h|Add1~26\ : std_logic;
SIGNAL \vga_h|Add1~21_sumout\ : std_logic;
SIGNAL \vga_h|Add1~22\ : std_logic;
SIGNAL \vga_h|Add1~5_sumout\ : std_logic;
SIGNAL \vga_h|Add1~6\ : std_logic;
SIGNAL \vga_h|Add1~10\ : std_logic;
SIGNAL \vga_h|Add1~17_sumout\ : std_logic;
SIGNAL \vga_h|x_c[7]~DUPLICATE_q\ : std_logic;
SIGNAL \vga_h|LessThan0~1_combout\ : std_logic;
SIGNAL \vga_h|Add1~18\ : std_logic;
SIGNAL \vga_h|Add1~13_sumout\ : std_logic;
SIGNAL \vga_h|Add1~14\ : std_logic;
SIGNAL \vga_h|Add1~1_sumout\ : std_logic;
SIGNAL \vga_h|Add1~2\ : std_logic;
SIGNAL \vga_h|Add1~61_sumout\ : std_logic;
SIGNAL \vga_h|Add1~62\ : std_logic;
SIGNAL \vga_h|Add1~41_sumout\ : std_logic;
SIGNAL \vga_h|LessThan0~2_combout\ : std_logic;
SIGNAL \vga_h|Add1~42\ : std_logic;
SIGNAL \vga_h|Add1~45_sumout\ : std_logic;
SIGNAL \vga_h|Add1~46\ : std_logic;
SIGNAL \vga_h|Add1~57_sumout\ : std_logic;
SIGNAL \vga_h|Add1~58\ : std_logic;
SIGNAL \vga_h|Add1~53_sumout\ : std_logic;
SIGNAL \vga_h|Add1~54\ : std_logic;
SIGNAL \vga_h|Add1~49_sumout\ : std_logic;
SIGNAL \vga_h|LessThan0~3_combout\ : std_logic;
SIGNAL \vga_h|LessThan0~4_combout\ : std_logic;
SIGNAL \vga_h|Add1~9_sumout\ : std_logic;
SIGNAL \vga_h|x_c[6]~DUPLICATE_q\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \vga_v|Add1~37_sumout\ : std_logic;
SIGNAL \vga_v|Add1~2\ : std_logic;
SIGNAL \vga_v|Add1~9_sumout\ : std_logic;
SIGNAL \vga_h|v_enable~q\ : std_logic;
SIGNAL \vga_v|y_c[9]~0_combout\ : std_logic;
SIGNAL \vga_v|Add1~10\ : std_logic;
SIGNAL \vga_v|Add1~13_sumout\ : std_logic;
SIGNAL \vga_v|Add1~14\ : std_logic;
SIGNAL \vga_v|Add1~21_sumout\ : std_logic;
SIGNAL \vga_v|Add1~22\ : std_logic;
SIGNAL \vga_v|Add1~17_sumout\ : std_logic;
SIGNAL \vga_v|Add1~18\ : std_logic;
SIGNAL \vga_v|Add1~33_sumout\ : std_logic;
SIGNAL \vga_v|Add1~34\ : std_logic;
SIGNAL \vga_v|Add1~29_sumout\ : std_logic;
SIGNAL \vga_v|Add1~30\ : std_logic;
SIGNAL \vga_v|Add1~25_sumout\ : std_logic;
SIGNAL \vga_v|Add1~26\ : std_logic;
SIGNAL \vga_v|Add1~5_sumout\ : std_logic;
SIGNAL \vga_v|y_c[6]~DUPLICATE_q\ : std_logic;
SIGNAL \vga_v|LessThan0~0_combout\ : std_logic;
SIGNAL \vga_v|Add1~6\ : std_logic;
SIGNAL \vga_v|Add1~45_sumout\ : std_logic;
SIGNAL \vga_v|Add1~46\ : std_logic;
SIGNAL \vga_v|Add1~49_sumout\ : std_logic;
SIGNAL \vga_v|Add1~50\ : std_logic;
SIGNAL \vga_v|Add1~53_sumout\ : std_logic;
SIGNAL \vga_v|Add1~54\ : std_logic;
SIGNAL \vga_v|Add1~57_sumout\ : std_logic;
SIGNAL \vga_v|Add1~58\ : std_logic;
SIGNAL \vga_v|Add1~61_sumout\ : std_logic;
SIGNAL \vga_v|Add1~62\ : std_logic;
SIGNAL \vga_v|Add1~41_sumout\ : std_logic;
SIGNAL \vga_v|LessThan0~1_combout\ : std_logic;
SIGNAL \vga_v|LessThan0~2_combout\ : std_logic;
SIGNAL \vga_v|Add1~38\ : std_logic;
SIGNAL \vga_v|Add1~1_sumout\ : std_logic;
SIGNAL \LessThan4~0_combout\ : std_logic;
SIGNAL \LessThan1~0_combout\ : std_logic;
SIGNAL \LessThan1~1_combout\ : std_logic;
SIGNAL \clk_25~reg0_q\ : std_logic;
SIGNAL \LessThan4~1_combout\ : std_logic;
SIGNAL \y[0]~2_combout\ : std_logic;
SIGNAL \y[1]~1_combout\ : std_logic;
SIGNAL \LessThan4~2_combout\ : std_logic;
SIGNAL \Add2~5_sumout\ : std_logic;
SIGNAL \Add5~1_sumout\ : std_logic;
SIGNAL \Add2~6\ : std_logic;
SIGNAL \Add2~17_sumout\ : std_logic;
SIGNAL \Add5~2\ : std_logic;
SIGNAL \Add5~5_sumout\ : std_logic;
SIGNAL \Add2~18\ : std_logic;
SIGNAL \Add2~21_sumout\ : std_logic;
SIGNAL \Add5~6\ : std_logic;
SIGNAL \Add5~9_sumout\ : std_logic;
SIGNAL \Add2~22\ : std_logic;
SIGNAL \Add2~25_sumout\ : std_logic;
SIGNAL \Add5~10\ : std_logic;
SIGNAL \Add5~13_sumout\ : std_logic;
SIGNAL \Add2~26\ : std_logic;
SIGNAL \Add2~9_sumout\ : std_logic;
SIGNAL \Add5~14\ : std_logic;
SIGNAL \Add5~17_sumout\ : std_logic;
SIGNAL \Add2~10\ : std_logic;
SIGNAL \Add2~13_sumout\ : std_logic;
SIGNAL \Add5~18\ : std_logic;
SIGNAL \Add5~21_sumout\ : std_logic;
SIGNAL \Add2~14\ : std_logic;
SIGNAL \Add2~1_sumout\ : std_logic;
SIGNAL \Add5~22\ : std_logic;
SIGNAL \Add5~25_sumout\ : std_logic;
SIGNAL \Add2~2\ : std_logic;
SIGNAL \Add2~29_sumout\ : std_logic;
SIGNAL \Add5~26\ : std_logic;
SIGNAL \Add5~29_sumout\ : std_logic;
SIGNAL \Add5~30\ : std_logic;
SIGNAL \Add5~33_sumout\ : std_logic;
SIGNAL \Mult3~32\ : std_logic;
SIGNAL \LessThan2~0_combout\ : std_logic;
SIGNAL \vga_h|LessThan0~0_combout\ : std_logic;
SIGNAL \Add1~33_sumout\ : std_logic;
SIGNAL \x[0]~2_combout\ : std_logic;
SIGNAL \vga_h|x_c[9]~DUPLICATE_q\ : std_logic;
SIGNAL \vga_h|x_c[8]~DUPLICATE_q\ : std_logic;
SIGNAL \Add1~34\ : std_logic;
SIGNAL \Add1~25_sumout\ : std_logic;
SIGNAL \x[1]~3_combout\ : std_logic;
SIGNAL \Add1~26\ : std_logic;
SIGNAL \Add1~21_sumout\ : std_logic;
SIGNAL \x[2]~4_combout\ : std_logic;
SIGNAL \LessThan2~1_combout\ : std_logic;
SIGNAL \LessThan3~0_combout\ : std_logic;
SIGNAL \Add1~22\ : std_logic;
SIGNAL \Add1~17_sumout\ : std_logic;
SIGNAL \Add4~1_sumout\ : std_logic;
SIGNAL \Add1~18\ : std_logic;
SIGNAL \Add1~13_sumout\ : std_logic;
SIGNAL \Add4~2\ : std_logic;
SIGNAL \Add4~5_sumout\ : std_logic;
SIGNAL \Add1~14\ : std_logic;
SIGNAL \Add1~29_sumout\ : std_logic;
SIGNAL \Add4~6\ : std_logic;
SIGNAL \Add4~9_sumout\ : std_logic;
SIGNAL \Add1~30\ : std_logic;
SIGNAL \Add1~1_sumout\ : std_logic;
SIGNAL \Add4~10\ : std_logic;
SIGNAL \Add4~13_sumout\ : std_logic;
SIGNAL \Add1~2\ : std_logic;
SIGNAL \Add1~5_sumout\ : std_logic;
SIGNAL \Add4~14\ : std_logic;
SIGNAL \Add4~17_sumout\ : std_logic;
SIGNAL \Add1~6\ : std_logic;
SIGNAL \Add1~9_sumout\ : std_logic;
SIGNAL \Add4~18\ : std_logic;
SIGNAL \Add4~21_sumout\ : std_logic;
SIGNAL \Add1~10\ : std_logic;
SIGNAL \Add1~37_sumout\ : std_logic;
SIGNAL \Add4~22\ : std_logic;
SIGNAL \Add4~25_sumout\ : std_logic;
SIGNAL \Add4~26\ : std_logic;
SIGNAL \Add4~29_sumout\ : std_logic;
SIGNAL \Mult2~156\ : std_logic;
SIGNAL \Mult3~411\ : std_logic;
SIGNAL \Mult3~410\ : std_logic;
SIGNAL \Mult3~31\ : std_logic;
SIGNAL \Mult2~155\ : std_logic;
SIGNAL \Mult3~30\ : std_logic;
SIGNAL \Mult3~409\ : std_logic;
SIGNAL \Mult2~154\ : std_logic;
SIGNAL \Mult3~29\ : std_logic;
SIGNAL \Mult3~408\ : std_logic;
SIGNAL \Mult2~153\ : std_logic;
SIGNAL \Mult3~28\ : std_logic;
SIGNAL \Mult3~407\ : std_logic;
SIGNAL \Mult2~152\ : std_logic;
SIGNAL \Mult3~406\ : std_logic;
SIGNAL \Mult2~151\ : std_logic;
SIGNAL \Mult3~27\ : std_logic;
SIGNAL \Mult2~150\ : std_logic;
SIGNAL \Mult3~405_resulta\ : std_logic;
SIGNAL \Mult3~26\ : std_logic;
SIGNAL \Mult3~383\ : std_logic;
SIGNAL \Mult3~384\ : std_logic;
SIGNAL \Mult3~387\ : std_logic;
SIGNAL \Mult3~388\ : std_logic;
SIGNAL \Mult3~391\ : std_logic;
SIGNAL \Mult3~392\ : std_logic;
SIGNAL \Mult3~395\ : std_logic;
SIGNAL \Mult3~396\ : std_logic;
SIGNAL \Mult3~343\ : std_logic;
SIGNAL \Mult3~344\ : std_logic;
SIGNAL \Mult3~375\ : std_logic;
SIGNAL \Mult3~376\ : std_logic;
SIGNAL \Mult3~378_sumout\ : std_logic;
SIGNAL \Mult2~479\ : std_logic;
SIGNAL \Mult2~478\ : std_logic;
SIGNAL \Mult3~374_sumout\ : std_logic;
SIGNAL \Mult2~477\ : std_logic;
SIGNAL \Mult3~342_sumout\ : std_logic;
SIGNAL \Mult2~476\ : std_logic;
SIGNAL \Mult3~394_sumout\ : std_logic;
SIGNAL \Mult2~475\ : std_logic;
SIGNAL \Mult3~390_sumout\ : std_logic;
SIGNAL \Mult3~386_sumout\ : std_logic;
SIGNAL \Mult2~474\ : std_logic;
SIGNAL \Mult2~473_resulta\ : std_logic;
SIGNAL \Mult3~382_sumout\ : std_logic;
SIGNAL \Mult2~149\ : std_logic;
SIGNAL \Mult3~25\ : std_logic;
SIGNAL \Mult2~148\ : std_logic;
SIGNAL \Mult3~24\ : std_logic;
SIGNAL \Mult3~23\ : std_logic;
SIGNAL \Mult2~147\ : std_logic;
SIGNAL \Mult3~22\ : std_logic;
SIGNAL \Mult2~146\ : std_logic;
SIGNAL \Mult2~145\ : std_logic;
SIGNAL \Mult3~21\ : std_logic;
SIGNAL \Mult3~20\ : std_logic;
SIGNAL \Mult2~144\ : std_logic;
SIGNAL \Mult2~143\ : std_logic;
SIGNAL \Mult3~19\ : std_logic;
SIGNAL \Mult2~142\ : std_logic;
SIGNAL \Mult3~18\ : std_logic;
SIGNAL \Mult3~17\ : std_logic;
SIGNAL \Mult2~141\ : std_logic;
SIGNAL \Mult2~140\ : std_logic;
SIGNAL \Mult3~16\ : std_logic;
SIGNAL \Mult2~139\ : std_logic;
SIGNAL \Mult3~15\ : std_logic;
SIGNAL \Mult2~138\ : std_logic;
SIGNAL \Mult3~14\ : std_logic;
SIGNAL \Mult2~137\ : std_logic;
SIGNAL \Mult3~13\ : std_logic;
SIGNAL \Mult2~136\ : std_logic;
SIGNAL \Mult3~12\ : std_logic;
SIGNAL \Mult2~135\ : std_logic;
SIGNAL \Mult3~11\ : std_logic;
SIGNAL \Mult2~134\ : std_logic;
SIGNAL \Mult3~10\ : std_logic;
SIGNAL \Mult3~9\ : std_logic;
SIGNAL \Mult2~133\ : std_logic;
SIGNAL \Mult3~8_resulta\ : std_logic;
SIGNAL \Mult2~132_resulta\ : std_logic;
SIGNAL \Mult2~808_cout\ : std_logic;
SIGNAL \Mult2~46\ : std_logic;
SIGNAL \Mult2~50\ : std_logic;
SIGNAL \Mult2~54\ : std_logic;
SIGNAL \Mult2~58\ : std_logic;
SIGNAL \Mult2~42\ : std_logic;
SIGNAL \Mult2~34\ : std_logic;
SIGNAL \Mult2~38\ : std_logic;
SIGNAL \Mult2~30\ : std_logic;
SIGNAL \Mult2~90\ : std_logic;
SIGNAL \Mult2~94\ : std_logic;
SIGNAL \Mult2~98\ : std_logic;
SIGNAL \Mult2~102\ : std_logic;
SIGNAL \Mult2~106\ : std_logic;
SIGNAL \Mult2~78\ : std_logic;
SIGNAL \Mult2~22\ : std_logic;
SIGNAL \Mult2~26\ : std_logic;
SIGNAL \Mult2~2\ : std_logic;
SIGNAL \Mult2~110\ : std_logic;
SIGNAL \Mult2~114\ : std_logic;
SIGNAL \Mult2~118\ : std_logic;
SIGNAL \Mult2~122\ : std_logic;
SIGNAL \Mult2~6\ : std_logic;
SIGNAL \Mult2~82\ : std_logic;
SIGNAL \Mult2~85_sumout\ : std_logic;
SIGNAL \Mult2~97_sumout\ : std_logic;
SIGNAL \Mult2~101_sumout\ : std_logic;
SIGNAL \Mult2~93_sumout\ : std_logic;
SIGNAL \Mult2~89_sumout\ : std_logic;
SIGNAL \Mult2~105_sumout\ : std_logic;
SIGNAL \kale~3_combout\ : std_logic;
SIGNAL \Mult2~81_sumout\ : std_logic;
SIGNAL \Mult2~77_sumout\ : std_logic;
SIGNAL \kale~4_combout\ : std_logic;
SIGNAL \Mult2~117_sumout\ : std_logic;
SIGNAL \Mult2~121_sumout\ : std_logic;
SIGNAL \Mult2~113_sumout\ : std_logic;
SIGNAL \Mult2~109_sumout\ : std_logic;
SIGNAL \kale~5_combout\ : std_logic;
SIGNAL \Mult3~417\ : std_logic;
SIGNAL \Mult2~162\ : std_logic;
SIGNAL \Mult3~38\ : std_logic;
SIGNAL \Mult3~37\ : std_logic;
SIGNAL \Mult2~161\ : std_logic;
SIGNAL \Mult3~416\ : std_logic;
SIGNAL \Mult3~36\ : std_logic;
SIGNAL \Mult2~160\ : std_logic;
SIGNAL \Mult3~415\ : std_logic;
SIGNAL \Mult3~35\ : std_logic;
SIGNAL \Mult3~414\ : std_logic;
SIGNAL \Mult2~159\ : std_logic;
SIGNAL \Mult3~413\ : std_logic;
SIGNAL \Mult3~34\ : std_logic;
SIGNAL \Mult2~158\ : std_logic;
SIGNAL \Mult3~33\ : std_logic;
SIGNAL \Mult2~157\ : std_logic;
SIGNAL \Mult3~412\ : std_logic;
SIGNAL \Mult3~379\ : std_logic;
SIGNAL \Mult3~380\ : std_logic;
SIGNAL \Mult3~359\ : std_logic;
SIGNAL \Mult3~360\ : std_logic;
SIGNAL \Mult3~363\ : std_logic;
SIGNAL \Mult3~364\ : std_logic;
SIGNAL \Mult3~347\ : std_logic;
SIGNAL \Mult3~348\ : std_logic;
SIGNAL \Mult3~351\ : std_logic;
SIGNAL \Mult3~352\ : std_logic;
SIGNAL \Mult3~355\ : std_logic;
SIGNAL \Mult3~356\ : std_logic;
SIGNAL \Mult3~366_sumout\ : std_logic;
SIGNAL \Mult2~485\ : std_logic;
SIGNAL \Mult2~484\ : std_logic;
SIGNAL \Mult3~354_sumout\ : std_logic;
SIGNAL \Mult3~350_sumout\ : std_logic;
SIGNAL \Mult2~483\ : std_logic;
SIGNAL \Mult2~482\ : std_logic;
SIGNAL \Mult3~346_sumout\ : std_logic;
SIGNAL \Mult3~362_sumout\ : std_logic;
SIGNAL \Mult2~481\ : std_logic;
SIGNAL \Mult2~480\ : std_logic;
SIGNAL \Mult3~358_sumout\ : std_logic;
SIGNAL \Mult2~86\ : std_logic;
SIGNAL \Mult2~62\ : std_logic;
SIGNAL \Mult2~66\ : std_logic;
SIGNAL \Mult2~10\ : std_logic;
SIGNAL \Mult2~14\ : std_logic;
SIGNAL \Mult2~18\ : std_logic;
SIGNAL \Mult2~69_sumout\ : std_logic;
SIGNAL \Mult2~61_sumout\ : std_logic;
SIGNAL \Mult2~486\ : std_logic;
SIGNAL \Mult2~163\ : std_logic;
SIGNAL \Mult3~39\ : std_logic;
SIGNAL \Mult3~418\ : std_logic;
SIGNAL \Mult3~367\ : std_logic;
SIGNAL \Mult3~368\ : std_logic;
SIGNAL \Mult3~370_sumout\ : std_logic;
SIGNAL \Mult2~70\ : std_logic;
SIGNAL \Mult2~73_sumout\ : std_logic;
SIGNAL \Mult2~65_sumout\ : std_logic;
SIGNAL \kale~6_combout\ : std_logic;
SIGNAL \Mult2~1_sumout\ : std_logic;
SIGNAL \Mult2~5_sumout\ : std_logic;
SIGNAL \Mult2~9_sumout\ : std_logic;
SIGNAL \Mult2~37_sumout\ : std_logic;
SIGNAL \Mult2~29_sumout\ : std_logic;
SIGNAL \Mult2~21_sumout\ : std_logic;
SIGNAL \Mult2~33_sumout\ : std_logic;
SIGNAL \Mult2~25_sumout\ : std_logic;
SIGNAL \Mult2~45_sumout\ : std_logic;
SIGNAL \Mult2~49_sumout\ : std_logic;
SIGNAL \Mult2~41_sumout\ : std_logic;
SIGNAL \Mult2~53_sumout\ : std_logic;
SIGNAL \Mult2~57_sumout\ : std_logic;
SIGNAL \kale~0_combout\ : std_logic;
SIGNAL \kale~1_combout\ : std_logic;
SIGNAL \Mult2~17_sumout\ : std_logic;
SIGNAL \Mult2~13_sumout\ : std_logic;
SIGNAL \kale~2_combout\ : std_logic;
SIGNAL \Mult0~487\ : std_logic;
SIGNAL \Mult0~164\ : std_logic;
SIGNAL \Mult1~36\ : std_logic;
SIGNAL \Mult1~415\ : std_logic;
SIGNAL \Mult1~414\ : std_logic;
SIGNAL \Mult0~163\ : std_logic;
SIGNAL \Mult1~35\ : std_logic;
SIGNAL \Mult1~413\ : std_logic;
SIGNAL \Mult0~162\ : std_logic;
SIGNAL \Mult1~34\ : std_logic;
SIGNAL \Mult1~412\ : std_logic;
SIGNAL \Mult1~33\ : std_logic;
SIGNAL \Mult0~161\ : std_logic;
SIGNAL \Mult0~160\ : std_logic;
SIGNAL \Mult1~411\ : std_logic;
SIGNAL \Mult1~32\ : std_logic;
SIGNAL \Mult0~159\ : std_logic;
SIGNAL \Mult1~410\ : std_logic;
SIGNAL \Mult1~31\ : std_logic;
SIGNAL \Mult1~30\ : std_logic;
SIGNAL \Mult0~158\ : std_logic;
SIGNAL \Mult1~409\ : std_logic;
SIGNAL \Mult0~157\ : std_logic;
SIGNAL \Mult1~29\ : std_logic;
SIGNAL \Mult1~408\ : std_logic;
SIGNAL \Mult1~407\ : std_logic;
SIGNAL \Mult1~28\ : std_logic;
SIGNAL \Mult0~156\ : std_logic;
SIGNAL \Mult1~406\ : std_logic;
SIGNAL \Mult0~155\ : std_logic;
SIGNAL \Mult1~27\ : std_logic;
SIGNAL \Mult1~26\ : std_logic;
SIGNAL \Mult1~405_resulta\ : std_logic;
SIGNAL \Mult0~154\ : std_logic;
SIGNAL \Mult1~359\ : std_logic;
SIGNAL \Mult1~360\ : std_logic;
SIGNAL \Mult1~363\ : std_logic;
SIGNAL \Mult1~364\ : std_logic;
SIGNAL \Mult1~367\ : std_logic;
SIGNAL \Mult1~368\ : std_logic;
SIGNAL \Mult1~395\ : std_logic;
SIGNAL \Mult1~396\ : std_logic;
SIGNAL \Mult1~343\ : std_logic;
SIGNAL \Mult1~344\ : std_logic;
SIGNAL \Mult1~383\ : std_logic;
SIGNAL \Mult1~384\ : std_logic;
SIGNAL \Mult1~371\ : std_logic;
SIGNAL \Mult1~372\ : std_logic;
SIGNAL \Mult1~347\ : std_logic;
SIGNAL \Mult1~348\ : std_logic;
SIGNAL \Mult1~387\ : std_logic;
SIGNAL \Mult1~388\ : std_logic;
SIGNAL \Mult1~351\ : std_logic;
SIGNAL \Mult1~352\ : std_logic;
SIGNAL \Mult1~354_sumout\ : std_logic;
SIGNAL \Mult0~486\ : std_logic;
SIGNAL \Mult1~350_sumout\ : std_logic;
SIGNAL \Mult0~485\ : std_logic;
SIGNAL \Mult1~386_sumout\ : std_logic;
SIGNAL \Mult0~484\ : std_logic;
SIGNAL \Mult1~346_sumout\ : std_logic;
SIGNAL \Mult0~483\ : std_logic;
SIGNAL \Mult1~370_sumout\ : std_logic;
SIGNAL \Mult0~482\ : std_logic;
SIGNAL \Mult1~382_sumout\ : std_logic;
SIGNAL \Mult0~481\ : std_logic;
SIGNAL \Mult1~342_sumout\ : std_logic;
SIGNAL \Mult1~394_sumout\ : std_logic;
SIGNAL \Mult0~480\ : std_logic;
SIGNAL \Mult0~479\ : std_logic;
SIGNAL \Mult1~366_sumout\ : std_logic;
SIGNAL \Mult0~478\ : std_logic;
SIGNAL \Mult1~362_sumout\ : std_logic;
SIGNAL \Mult0~477_resulta\ : std_logic;
SIGNAL \Mult1~358_sumout\ : std_logic;
SIGNAL \Mult1~25\ : std_logic;
SIGNAL \Mult0~153\ : std_logic;
SIGNAL \Mult1~24\ : std_logic;
SIGNAL \Mult0~152\ : std_logic;
SIGNAL \Mult0~151\ : std_logic;
SIGNAL \Mult1~23\ : std_logic;
SIGNAL \Mult0~150\ : std_logic;
SIGNAL \Mult1~22\ : std_logic;
SIGNAL \Mult1~21\ : std_logic;
SIGNAL \Mult0~149\ : std_logic;
SIGNAL \Mult0~148\ : std_logic;
SIGNAL \Mult1~20\ : std_logic;
SIGNAL \Mult1~19\ : std_logic;
SIGNAL \Mult0~147\ : std_logic;
SIGNAL \Mult0~146\ : std_logic;
SIGNAL \Mult1~18\ : std_logic;
SIGNAL \Mult1~17\ : std_logic;
SIGNAL \Mult0~145\ : std_logic;
SIGNAL \Mult0~144\ : std_logic;
SIGNAL \Mult1~16\ : std_logic;
SIGNAL \Mult1~15\ : std_logic;
SIGNAL \Mult0~143\ : std_logic;
SIGNAL \Mult0~142\ : std_logic;
SIGNAL \Mult1~14\ : std_logic;
SIGNAL \Mult0~141\ : std_logic;
SIGNAL \Mult1~13\ : std_logic;
SIGNAL \Mult1~12\ : std_logic;
SIGNAL \Mult0~140\ : std_logic;
SIGNAL \Mult0~139\ : std_logic;
SIGNAL \Mult1~11\ : std_logic;
SIGNAL \Mult0~138\ : std_logic;
SIGNAL \Mult1~10\ : std_logic;
SIGNAL \Mult0~137\ : std_logic;
SIGNAL \Mult1~9\ : std_logic;
SIGNAL \Mult1~8_resulta\ : std_logic;
SIGNAL \Mult0~136_resulta\ : std_logic;
SIGNAL \Mult0~46\ : std_logic;
SIGNAL \Mult0~50\ : std_logic;
SIGNAL \Mult0~54\ : std_logic;
SIGNAL \Mult0~58\ : std_logic;
SIGNAL \Mult0~62\ : std_logic;
SIGNAL \Mult0~42\ : std_logic;
SIGNAL \Mult0~22\ : std_logic;
SIGNAL \Mult0~26\ : std_logic;
SIGNAL \Mult0~114\ : std_logic;
SIGNAL \Mult0~118\ : std_logic;
SIGNAL \Mult0~122\ : std_logic;
SIGNAL \Mult0~126\ : std_logic;
SIGNAL \Mult0~102\ : std_logic;
SIGNAL \Mult0~30\ : std_logic;
SIGNAL \Mult0~34\ : std_logic;
SIGNAL \Mult0~38\ : std_logic;
SIGNAL \Mult0~106\ : std_logic;
SIGNAL \Mult0~2\ : std_logic;
SIGNAL \Mult0~66\ : std_logic;
SIGNAL \Mult0~70\ : std_logic;
SIGNAL \Mult0~74\ : std_logic;
SIGNAL \Mult0~110\ : std_logic;
SIGNAL \Mult0~6\ : std_logic;
SIGNAL \Mult0~90\ : std_logic;
SIGNAL \Mult0~78\ : std_logic;
SIGNAL \Mult0~10\ : std_logic;
SIGNAL \Mult0~94\ : std_logic;
SIGNAL \Mult0~14\ : std_logic;
SIGNAL \Mult0~17_sumout\ : std_logic;
SIGNAL \Mult0~1_sumout\ : std_logic;
SIGNAL \Mult0~13_sumout\ : std_logic;
SIGNAL \Mult0~5_sumout\ : std_logic;
SIGNAL \Mult0~25_sumout\ : std_logic;
SIGNAL \Mult0~33_sumout\ : std_logic;
SIGNAL \Mult0~37_sumout\ : std_logic;
SIGNAL \Mult0~45_sumout\ : std_logic;
SIGNAL \Mult0~57_sumout\ : std_logic;
SIGNAL \Mult0~61_sumout\ : std_logic;
SIGNAL \Mult0~53_sumout\ : std_logic;
SIGNAL \Mult0~41_sumout\ : std_logic;
SIGNAL \Mult0~49_sumout\ : std_logic;
SIGNAL \LessThan6~0_combout\ : std_logic;
SIGNAL \Mult0~29_sumout\ : std_logic;
SIGNAL \Mult0~21_sumout\ : std_logic;
SIGNAL \LessThan6~1_combout\ : std_logic;
SIGNAL \Mult0~9_sumout\ : std_logic;
SIGNAL \LessThan6~2_combout\ : std_logic;
SIGNAL \Mult0~65_sumout\ : std_logic;
SIGNAL \Mult0~77_sumout\ : std_logic;
SIGNAL \Mult0~488\ : std_logic;
SIGNAL \Mult0~165\ : std_logic;
SIGNAL \Mult1~416\ : std_logic;
SIGNAL \Mult1~37\ : std_logic;
SIGNAL \Mult1~355\ : std_logic;
SIGNAL \Mult1~356\ : std_logic;
SIGNAL \Mult1~374_sumout\ : std_logic;
SIGNAL \Mult0~18\ : std_logic;
SIGNAL \Mult0~81_sumout\ : std_logic;
SIGNAL \Mult1~417\ : std_logic;
SIGNAL \Mult1~38\ : std_logic;
SIGNAL \Mult0~166\ : std_logic;
SIGNAL \Mult1~375\ : std_logic;
SIGNAL \Mult1~376\ : std_logic;
SIGNAL \Mult1~378_sumout\ : std_logic;
SIGNAL \Mult0~489\ : std_logic;
SIGNAL \Mult0~82\ : std_logic;
SIGNAL \Mult0~85_sumout\ : std_logic;
SIGNAL \Mult0~73_sumout\ : std_logic;
SIGNAL \Mult0~69_sumout\ : std_logic;
SIGNAL \LessThan6~3_combout\ : std_logic;
SIGNAL \x~0_combout\ : std_logic;
SIGNAL \border~1_combout\ : std_logic;
SIGNAL \border~2_combout\ : std_logic;
SIGNAL \LessThan14~0_combout\ : std_logic;
SIGNAL \border~3_combout\ : std_logic;
SIGNAL \LessThan15~0_combout\ : std_logic;
SIGNAL \border~4_combout\ : std_logic;
SIGNAL \border~5_combout\ : std_logic;
SIGNAL \border~6_combout\ : std_logic;
SIGNAL \y~0_combout\ : std_logic;
SIGNAL \red~2_combout\ : std_logic;
SIGNAL \border~7_combout\ : std_logic;
SIGNAL \red~0_combout\ : std_logic;
SIGNAL \red~1_combout\ : std_logic;
SIGNAL \red~3_combout\ : std_logic;
SIGNAL \red~4_combout\ : std_logic;
SIGNAL \border~0_combout\ : std_logic;
SIGNAL \x[9]~1_combout\ : std_logic;
SIGNAL \border~8_combout\ : std_logic;
SIGNAL \red~5_combout\ : std_logic;
SIGNAL \red~6_combout\ : std_logic;
SIGNAL \Mult0~93_sumout\ : std_logic;
SIGNAL \Mult0~89_sumout\ : std_logic;
SIGNAL \Mult0~490\ : std_logic;
SIGNAL \Mult1~39\ : std_logic;
SIGNAL \Mult1~418\ : std_logic;
SIGNAL \Mult0~167\ : std_logic;
SIGNAL \Mult1~379\ : std_logic;
SIGNAL \Mult1~380\ : std_logic;
SIGNAL \Mult1~390_sumout\ : std_logic;
SIGNAL \Mult0~86\ : std_logic;
SIGNAL \Mult0~97_sumout\ : std_logic;
SIGNAL \Mult0~109_sumout\ : std_logic;
SIGNAL \Mult0~113_sumout\ : std_logic;
SIGNAL \Mult0~117_sumout\ : std_logic;
SIGNAL \Mult0~125_sumout\ : std_logic;
SIGNAL \Mult0~121_sumout\ : std_logic;
SIGNAL \LessThan6~4_combout\ : std_logic;
SIGNAL \Mult0~105_sumout\ : std_logic;
SIGNAL \Mult0~101_sumout\ : std_logic;
SIGNAL \LessThan6~5_combout\ : std_logic;
SIGNAL \LessThan6~6_combout\ : std_logic;
SIGNAL \red~7_combout\ : std_logic;
SIGNAL \kale~7_combout\ : std_logic;
SIGNAL \kale~8_combout\ : std_logic;
SIGNAL \kale~9_combout\ : std_logic;
SIGNAL \vga_h|x_c\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \vga_v|y_c\ : std_logic_vector(15 DOWNTO 0);
SIGNAL c_counter : std_logic_vector(31 DOWNTO 0);
SIGNAL \vga_h|clk_enable\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \ALT_INV_Mult1~362_sumout\ : std_logic;
SIGNAL \ALT_INV_Mult1~358_sumout\ : std_logic;
SIGNAL \ALT_INV_Mult1~354_sumout\ : std_logic;
SIGNAL \ALT_INV_Mult1~350_sumout\ : std_logic;
SIGNAL \ALT_INV_Mult1~346_sumout\ : std_logic;
SIGNAL \ALT_INV_Mult0~490\ : std_logic;
SIGNAL \ALT_INV_Mult0~489\ : std_logic;
SIGNAL \ALT_INV_Mult0~488\ : std_logic;
SIGNAL \ALT_INV_Mult0~487\ : std_logic;
SIGNAL \ALT_INV_Mult0~486\ : std_logic;
SIGNAL \ALT_INV_Mult0~485\ : std_logic;
SIGNAL \ALT_INV_Mult0~484\ : std_logic;
SIGNAL \ALT_INV_Mult0~483\ : std_logic;
SIGNAL \ALT_INV_Mult0~482\ : std_logic;
SIGNAL \ALT_INV_Mult0~481\ : std_logic;
SIGNAL \ALT_INV_Mult0~480\ : std_logic;
SIGNAL \ALT_INV_Mult0~479\ : std_logic;
SIGNAL \ALT_INV_Mult0~478\ : std_logic;
SIGNAL \ALT_INV_Mult0~477_resulta\ : std_logic;
SIGNAL \ALT_INV_Mult1~342_sumout\ : std_logic;
SIGNAL \ALT_INV_Mult1~39\ : std_logic;
SIGNAL \ALT_INV_Mult1~38\ : std_logic;
SIGNAL \ALT_INV_Mult1~37\ : std_logic;
SIGNAL \ALT_INV_Mult1~36\ : std_logic;
SIGNAL \ALT_INV_Mult1~35\ : std_logic;
SIGNAL \ALT_INV_Mult1~34\ : std_logic;
SIGNAL \ALT_INV_Mult1~33\ : std_logic;
SIGNAL \ALT_INV_Mult1~32\ : std_logic;
SIGNAL \ALT_INV_Mult1~31\ : std_logic;
SIGNAL \ALT_INV_Mult1~30\ : std_logic;
SIGNAL \ALT_INV_Mult1~29\ : std_logic;
SIGNAL \ALT_INV_Mult1~28\ : std_logic;
SIGNAL \ALT_INV_Mult1~27\ : std_logic;
SIGNAL \ALT_INV_Mult1~26\ : std_logic;
SIGNAL \ALT_INV_Mult1~25\ : std_logic;
SIGNAL \ALT_INV_Mult1~24\ : std_logic;
SIGNAL \ALT_INV_Mult1~23\ : std_logic;
SIGNAL \ALT_INV_Mult1~22\ : std_logic;
SIGNAL \ALT_INV_Mult1~21\ : std_logic;
SIGNAL \ALT_INV_Mult1~20\ : std_logic;
SIGNAL \ALT_INV_Mult1~19\ : std_logic;
SIGNAL \ALT_INV_Mult1~18\ : std_logic;
SIGNAL \ALT_INV_Mult1~17\ : std_logic;
SIGNAL \ALT_INV_Mult1~16\ : std_logic;
SIGNAL \ALT_INV_Mult1~15\ : std_logic;
SIGNAL \ALT_INV_Mult1~14\ : std_logic;
SIGNAL \ALT_INV_Mult1~13\ : std_logic;
SIGNAL \ALT_INV_Mult1~12\ : std_logic;
SIGNAL \ALT_INV_Mult1~11\ : std_logic;
SIGNAL \ALT_INV_Mult1~10\ : std_logic;
SIGNAL \ALT_INV_Mult1~9\ : std_logic;
SIGNAL \ALT_INV_Mult1~8_resulta\ : std_logic;
SIGNAL \ALT_INV_Mult0~167\ : std_logic;
SIGNAL \ALT_INV_Mult0~166\ : std_logic;
SIGNAL \ALT_INV_Mult0~165\ : std_logic;
SIGNAL \ALT_INV_Mult0~164\ : std_logic;
SIGNAL \ALT_INV_Mult0~163\ : std_logic;
SIGNAL \ALT_INV_Mult0~162\ : std_logic;
SIGNAL \ALT_INV_Mult0~161\ : std_logic;
SIGNAL \ALT_INV_Mult0~160\ : std_logic;
SIGNAL \ALT_INV_Mult0~159\ : std_logic;
SIGNAL \ALT_INV_Mult0~158\ : std_logic;
SIGNAL \ALT_INV_Mult0~157\ : std_logic;
SIGNAL \ALT_INV_Mult0~156\ : std_logic;
SIGNAL \ALT_INV_Mult0~155\ : std_logic;
SIGNAL \ALT_INV_Mult0~154\ : std_logic;
SIGNAL \ALT_INV_Mult0~153\ : std_logic;
SIGNAL \ALT_INV_Mult0~152\ : std_logic;
SIGNAL \ALT_INV_Mult0~151\ : std_logic;
SIGNAL \ALT_INV_Mult0~150\ : std_logic;
SIGNAL \ALT_INV_Mult0~149\ : std_logic;
SIGNAL \ALT_INV_Mult0~148\ : std_logic;
SIGNAL \ALT_INV_Mult0~147\ : std_logic;
SIGNAL \ALT_INV_Mult0~146\ : std_logic;
SIGNAL \ALT_INV_Mult0~145\ : std_logic;
SIGNAL \ALT_INV_Mult0~144\ : std_logic;
SIGNAL \ALT_INV_Mult0~143\ : std_logic;
SIGNAL \ALT_INV_Mult0~142\ : std_logic;
SIGNAL \ALT_INV_Mult0~141\ : std_logic;
SIGNAL \ALT_INV_Mult0~140\ : std_logic;
SIGNAL \ALT_INV_Mult0~139\ : std_logic;
SIGNAL \ALT_INV_Mult0~138\ : std_logic;
SIGNAL \ALT_INV_Mult0~137\ : std_logic;
SIGNAL \ALT_INV_Mult0~136_resulta\ : std_logic;
SIGNAL ALT_INV_c_counter : std_logic_vector(31 DOWNTO 0);
SIGNAL \vga_v|ALT_INV_y_c\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \vga_h|ALT_INV_x_c\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \ALT_INV_Mult2~121_sumout\ : std_logic;
SIGNAL \ALT_INV_Mult2~117_sumout\ : std_logic;
SIGNAL \ALT_INV_Mult2~113_sumout\ : std_logic;
SIGNAL \ALT_INV_Mult2~109_sumout\ : std_logic;
SIGNAL \ALT_INV_Mult2~105_sumout\ : std_logic;
SIGNAL \ALT_INV_Mult2~101_sumout\ : std_logic;
SIGNAL \ALT_INV_Mult2~97_sumout\ : std_logic;
SIGNAL \ALT_INV_Mult2~93_sumout\ : std_logic;
SIGNAL \ALT_INV_Mult2~89_sumout\ : std_logic;
SIGNAL \ALT_INV_Mult2~85_sumout\ : std_logic;
SIGNAL \ALT_INV_Mult2~81_sumout\ : std_logic;
SIGNAL \ALT_INV_Mult2~77_sumout\ : std_logic;
SIGNAL \ALT_INV_Mult2~73_sumout\ : std_logic;
SIGNAL \ALT_INV_Mult2~69_sumout\ : std_logic;
SIGNAL \ALT_INV_Mult2~65_sumout\ : std_logic;
SIGNAL \ALT_INV_Mult2~61_sumout\ : std_logic;
SIGNAL \ALT_INV_Mult2~57_sumout\ : std_logic;
SIGNAL \ALT_INV_Mult2~53_sumout\ : std_logic;
SIGNAL \ALT_INV_Mult2~49_sumout\ : std_logic;
SIGNAL \ALT_INV_Mult2~45_sumout\ : std_logic;
SIGNAL \ALT_INV_Mult2~41_sumout\ : std_logic;
SIGNAL \ALT_INV_Mult2~37_sumout\ : std_logic;
SIGNAL \ALT_INV_Mult2~33_sumout\ : std_logic;
SIGNAL \ALT_INV_Mult2~29_sumout\ : std_logic;
SIGNAL \ALT_INV_Mult2~25_sumout\ : std_logic;
SIGNAL \ALT_INV_Mult2~21_sumout\ : std_logic;
SIGNAL \ALT_INV_Mult2~17_sumout\ : std_logic;
SIGNAL \ALT_INV_Mult2~13_sumout\ : std_logic;
SIGNAL \ALT_INV_Mult2~9_sumout\ : std_logic;
SIGNAL \ALT_INV_Mult2~5_sumout\ : std_logic;
SIGNAL \ALT_INV_Mult2~1_sumout\ : std_logic;
SIGNAL \ALT_INV_Mult0~125_sumout\ : std_logic;
SIGNAL \ALT_INV_Mult0~121_sumout\ : std_logic;
SIGNAL \ALT_INV_Mult0~117_sumout\ : std_logic;
SIGNAL \ALT_INV_Mult0~113_sumout\ : std_logic;
SIGNAL \ALT_INV_Mult0~109_sumout\ : std_logic;
SIGNAL \ALT_INV_Mult0~105_sumout\ : std_logic;
SIGNAL \ALT_INV_Mult0~101_sumout\ : std_logic;
SIGNAL \ALT_INV_Mult0~97_sumout\ : std_logic;
SIGNAL \ALT_INV_Mult0~93_sumout\ : std_logic;
SIGNAL \ALT_INV_Mult0~89_sumout\ : std_logic;
SIGNAL \ALT_INV_Mult0~85_sumout\ : std_logic;
SIGNAL \ALT_INV_Mult0~81_sumout\ : std_logic;
SIGNAL \ALT_INV_Mult0~77_sumout\ : std_logic;
SIGNAL \ALT_INV_Mult0~73_sumout\ : std_logic;
SIGNAL \ALT_INV_Mult0~69_sumout\ : std_logic;
SIGNAL \ALT_INV_Mult0~65_sumout\ : std_logic;
SIGNAL \ALT_INV_Mult0~61_sumout\ : std_logic;
SIGNAL \ALT_INV_Mult0~57_sumout\ : std_logic;
SIGNAL \ALT_INV_Mult0~53_sumout\ : std_logic;
SIGNAL \ALT_INV_Mult0~49_sumout\ : std_logic;
SIGNAL \ALT_INV_Mult0~45_sumout\ : std_logic;
SIGNAL \ALT_INV_Mult0~41_sumout\ : std_logic;
SIGNAL \ALT_INV_Mult0~37_sumout\ : std_logic;
SIGNAL \ALT_INV_Mult0~33_sumout\ : std_logic;
SIGNAL \ALT_INV_Mult0~29_sumout\ : std_logic;
SIGNAL \ALT_INV_Mult0~25_sumout\ : std_logic;
SIGNAL \ALT_INV_Mult0~21_sumout\ : std_logic;
SIGNAL \ALT_INV_Mult0~17_sumout\ : std_logic;
SIGNAL \ALT_INV_Mult0~13_sumout\ : std_logic;
SIGNAL \ALT_INV_Mult0~9_sumout\ : std_logic;
SIGNAL \ALT_INV_Mult0~5_sumout\ : std_logic;
SIGNAL \ALT_INV_Mult0~1_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~37_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~29_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~25_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~21_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~17_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~13_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~9_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~5_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~1_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~33_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~29_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~25_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~21_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~17_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~13_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~9_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~5_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~1_sumout\ : std_logic;
SIGNAL \vga_v|ALT_INV_y_c[6]~DUPLICATE_q\ : std_logic;
SIGNAL \vga_h|ALT_INV_x_c[7]~DUPLICATE_q\ : std_logic;
SIGNAL \vga_h|ALT_INV_x_c[8]~DUPLICATE_q\ : std_logic;
SIGNAL \vga_h|ALT_INV_x_c[6]~DUPLICATE_q\ : std_logic;
SIGNAL \vga_h|ALT_INV_x_c[9]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_LessThan4~2_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan3~0_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan2~1_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~6_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~5_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~4_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~3_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~2_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \vga_h|ALT_INV_v_enable~q\ : std_logic;
SIGNAL \vga_v|ALT_INV_LessThan0~1_combout\ : std_logic;
SIGNAL \vga_h|ALT_INV_clk_enable\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \vga_h|ALT_INV_LessThan0~3_combout\ : std_logic;
SIGNAL \vga_h|ALT_INV_LessThan0~2_combout\ : std_logic;
SIGNAL \vga_h|ALT_INV_LessThan0~1_combout\ : std_logic;
SIGNAL \ALT_INV_kale~9_combout\ : std_logic;
SIGNAL \ALT_INV_kale~8_combout\ : std_logic;
SIGNAL \ALT_INV_kale~7_combout\ : std_logic;
SIGNAL \ALT_INV_kale~6_combout\ : std_logic;
SIGNAL \ALT_INV_kale~5_combout\ : std_logic;
SIGNAL \ALT_INV_kale~4_combout\ : std_logic;
SIGNAL \ALT_INV_kale~3_combout\ : std_logic;
SIGNAL \ALT_INV_kale~2_combout\ : std_logic;
SIGNAL \ALT_INV_kale~1_combout\ : std_logic;
SIGNAL \ALT_INV_kale~0_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan6~6_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan6~5_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan6~4_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan6~3_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan6~2_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan6~1_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan6~0_combout\ : std_logic;
SIGNAL \ALT_INV_red~6_combout\ : std_logic;
SIGNAL \ALT_INV_red~5_combout\ : std_logic;
SIGNAL \ALT_INV_border~8_combout\ : std_logic;
SIGNAL \ALT_INV_x[9]~1_combout\ : std_logic;
SIGNAL \ALT_INV_red~4_combout\ : std_logic;
SIGNAL \ALT_INV_red~3_combout\ : std_logic;
SIGNAL \ALT_INV_border~7_combout\ : std_logic;
SIGNAL \ALT_INV_red~2_combout\ : std_logic;
SIGNAL \ALT_INV_red~1_combout\ : std_logic;
SIGNAL \ALT_INV_red~0_combout\ : std_logic;
SIGNAL \ALT_INV_y[1]~1_combout\ : std_logic;
SIGNAL \ALT_INV_border~6_combout\ : std_logic;
SIGNAL \ALT_INV_border~5_combout\ : std_logic;
SIGNAL \ALT_INV_border~4_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan15~0_combout\ : std_logic;
SIGNAL \ALT_INV_border~3_combout\ : std_logic;
SIGNAL \ALT_INV_border~2_combout\ : std_logic;
SIGNAL \ALT_INV_border~1_combout\ : std_logic;
SIGNAL \ALT_INV_border~0_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan14~0_combout\ : std_logic;
SIGNAL \ALT_INV_x~0_combout\ : std_logic;
SIGNAL \vga_h|ALT_INV_LessThan0~0_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan2~0_combout\ : std_logic;
SIGNAL \ALT_INV_y~0_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan4~1_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan1~0_combout\ : std_logic;
SIGNAL \vga_v|ALT_INV_LessThan0~0_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan4~0_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mult3~418\ : std_logic;
SIGNAL \ALT_INV_Mult3~417\ : std_logic;
SIGNAL \ALT_INV_Mult3~416\ : std_logic;
SIGNAL \ALT_INV_Mult3~415\ : std_logic;
SIGNAL \ALT_INV_Mult3~414\ : std_logic;
SIGNAL \ALT_INV_Mult3~413\ : std_logic;
SIGNAL \ALT_INV_Mult3~412\ : std_logic;
SIGNAL \ALT_INV_Mult3~411\ : std_logic;
SIGNAL \ALT_INV_Mult3~410\ : std_logic;
SIGNAL \ALT_INV_Mult3~409\ : std_logic;
SIGNAL \ALT_INV_Mult3~408\ : std_logic;
SIGNAL \ALT_INV_Mult3~407\ : std_logic;
SIGNAL \ALT_INV_Mult3~406\ : std_logic;
SIGNAL \ALT_INV_Mult3~405_resulta\ : std_logic;
SIGNAL \ALT_INV_Mult1~418\ : std_logic;
SIGNAL \ALT_INV_Mult1~417\ : std_logic;
SIGNAL \ALT_INV_Mult1~416\ : std_logic;
SIGNAL \ALT_INV_Mult1~415\ : std_logic;
SIGNAL \ALT_INV_Mult1~414\ : std_logic;
SIGNAL \ALT_INV_Mult1~413\ : std_logic;
SIGNAL \ALT_INV_Mult1~412\ : std_logic;
SIGNAL \ALT_INV_Mult1~411\ : std_logic;
SIGNAL \ALT_INV_Mult1~410\ : std_logic;
SIGNAL \ALT_INV_Mult1~409\ : std_logic;
SIGNAL \ALT_INV_Mult1~408\ : std_logic;
SIGNAL \ALT_INV_Mult1~407\ : std_logic;
SIGNAL \ALT_INV_Mult1~406\ : std_logic;
SIGNAL \ALT_INV_Mult1~405_resulta\ : std_logic;
SIGNAL \ALT_INV_Mult3~394_sumout\ : std_logic;
SIGNAL \ALT_INV_Mult3~390_sumout\ : std_logic;
SIGNAL \ALT_INV_Mult3~386_sumout\ : std_logic;
SIGNAL \ALT_INV_Mult3~382_sumout\ : std_logic;
SIGNAL \ALT_INV_Mult3~378_sumout\ : std_logic;
SIGNAL \ALT_INV_Mult3~374_sumout\ : std_logic;
SIGNAL \ALT_INV_Mult3~370_sumout\ : std_logic;
SIGNAL \ALT_INV_Mult3~366_sumout\ : std_logic;
SIGNAL \ALT_INV_Mult3~362_sumout\ : std_logic;
SIGNAL \ALT_INV_Mult3~358_sumout\ : std_logic;
SIGNAL \ALT_INV_Mult3~354_sumout\ : std_logic;
SIGNAL \ALT_INV_Mult3~350_sumout\ : std_logic;
SIGNAL \ALT_INV_Mult3~346_sumout\ : std_logic;
SIGNAL \ALT_INV_Mult2~486\ : std_logic;
SIGNAL \ALT_INV_Mult2~485\ : std_logic;
SIGNAL \ALT_INV_Mult2~484\ : std_logic;
SIGNAL \ALT_INV_Mult2~483\ : std_logic;
SIGNAL \ALT_INV_Mult2~482\ : std_logic;
SIGNAL \ALT_INV_Mult2~481\ : std_logic;
SIGNAL \ALT_INV_Mult2~480\ : std_logic;
SIGNAL \ALT_INV_Mult2~479\ : std_logic;
SIGNAL \ALT_INV_Mult2~478\ : std_logic;
SIGNAL \ALT_INV_Mult2~477\ : std_logic;
SIGNAL \ALT_INV_Mult2~476\ : std_logic;
SIGNAL \ALT_INV_Mult2~475\ : std_logic;
SIGNAL \ALT_INV_Mult2~474\ : std_logic;
SIGNAL \ALT_INV_Mult2~473_resulta\ : std_logic;
SIGNAL \ALT_INV_Mult3~342_sumout\ : std_logic;
SIGNAL \ALT_INV_Mult3~39\ : std_logic;
SIGNAL \ALT_INV_Mult3~38\ : std_logic;
SIGNAL \ALT_INV_Mult3~37\ : std_logic;
SIGNAL \ALT_INV_Mult3~36\ : std_logic;
SIGNAL \ALT_INV_Mult3~35\ : std_logic;
SIGNAL \ALT_INV_Mult3~34\ : std_logic;
SIGNAL \ALT_INV_Mult3~33\ : std_logic;
SIGNAL \ALT_INV_Mult3~32\ : std_logic;
SIGNAL \ALT_INV_Mult3~31\ : std_logic;
SIGNAL \ALT_INV_Mult3~30\ : std_logic;
SIGNAL \ALT_INV_Mult3~29\ : std_logic;
SIGNAL \ALT_INV_Mult3~28\ : std_logic;
SIGNAL \ALT_INV_Mult3~27\ : std_logic;
SIGNAL \ALT_INV_Mult3~26\ : std_logic;
SIGNAL \ALT_INV_Mult3~25\ : std_logic;
SIGNAL \ALT_INV_Mult3~24\ : std_logic;
SIGNAL \ALT_INV_Mult3~23\ : std_logic;
SIGNAL \ALT_INV_Mult3~22\ : std_logic;
SIGNAL \ALT_INV_Mult3~21\ : std_logic;
SIGNAL \ALT_INV_Mult3~20\ : std_logic;
SIGNAL \ALT_INV_Mult3~19\ : std_logic;
SIGNAL \ALT_INV_Mult3~18\ : std_logic;
SIGNAL \ALT_INV_Mult3~17\ : std_logic;
SIGNAL \ALT_INV_Mult3~16\ : std_logic;
SIGNAL \ALT_INV_Mult3~15\ : std_logic;
SIGNAL \ALT_INV_Mult3~14\ : std_logic;
SIGNAL \ALT_INV_Mult3~13\ : std_logic;
SIGNAL \ALT_INV_Mult3~12\ : std_logic;
SIGNAL \ALT_INV_Mult3~11\ : std_logic;
SIGNAL \ALT_INV_Mult3~10\ : std_logic;
SIGNAL \ALT_INV_Mult3~9\ : std_logic;
SIGNAL \ALT_INV_Mult3~8_resulta\ : std_logic;
SIGNAL \ALT_INV_Mult2~163\ : std_logic;
SIGNAL \ALT_INV_Mult2~162\ : std_logic;
SIGNAL \ALT_INV_Mult2~161\ : std_logic;
SIGNAL \ALT_INV_Mult2~160\ : std_logic;
SIGNAL \ALT_INV_Mult2~159\ : std_logic;
SIGNAL \ALT_INV_Mult2~158\ : std_logic;
SIGNAL \ALT_INV_Mult2~157\ : std_logic;
SIGNAL \ALT_INV_Mult2~156\ : std_logic;
SIGNAL \ALT_INV_Mult2~155\ : std_logic;
SIGNAL \ALT_INV_Mult2~154\ : std_logic;
SIGNAL \ALT_INV_Mult2~153\ : std_logic;
SIGNAL \ALT_INV_Mult2~152\ : std_logic;
SIGNAL \ALT_INV_Mult2~151\ : std_logic;
SIGNAL \ALT_INV_Mult2~150\ : std_logic;
SIGNAL \ALT_INV_Mult2~149\ : std_logic;
SIGNAL \ALT_INV_Mult2~148\ : std_logic;
SIGNAL \ALT_INV_Mult2~147\ : std_logic;
SIGNAL \ALT_INV_Mult2~146\ : std_logic;
SIGNAL \ALT_INV_Mult2~145\ : std_logic;
SIGNAL \ALT_INV_Mult2~144\ : std_logic;
SIGNAL \ALT_INV_Mult2~143\ : std_logic;
SIGNAL \ALT_INV_Mult2~142\ : std_logic;
SIGNAL \ALT_INV_Mult2~141\ : std_logic;
SIGNAL \ALT_INV_Mult2~140\ : std_logic;
SIGNAL \ALT_INV_Mult2~139\ : std_logic;
SIGNAL \ALT_INV_Mult2~138\ : std_logic;
SIGNAL \ALT_INV_Mult2~137\ : std_logic;
SIGNAL \ALT_INV_Mult2~136\ : std_logic;
SIGNAL \ALT_INV_Mult2~135\ : std_logic;
SIGNAL \ALT_INV_Mult2~134\ : std_logic;
SIGNAL \ALT_INV_Mult2~133\ : std_logic;
SIGNAL \ALT_INV_Mult2~132_resulta\ : std_logic;
SIGNAL \ALT_INV_Mult1~394_sumout\ : std_logic;
SIGNAL \ALT_INV_Mult1~390_sumout\ : std_logic;
SIGNAL \ALT_INV_Mult1~386_sumout\ : std_logic;
SIGNAL \ALT_INV_Mult1~382_sumout\ : std_logic;
SIGNAL \ALT_INV_Mult1~378_sumout\ : std_logic;
SIGNAL \ALT_INV_Mult1~374_sumout\ : std_logic;
SIGNAL \ALT_INV_Mult1~370_sumout\ : std_logic;
SIGNAL \ALT_INV_Mult1~366_sumout\ : std_logic;

BEGIN

ww_clk <= clk;
hsync <= ww_hsync;
vsync <= ww_vsync;
clk_25 <= ww_clk_25;
red <= ww_red;
green <= ww_green;
blue <= ww_blue;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\Mult0~136_AX_bus\ <= (\Add4~29_sumout\ & \Add4~29_sumout\ & \Add4~29_sumout\ & \Add4~29_sumout\ & \Add4~29_sumout\ & \Add4~29_sumout\ & \Add4~29_sumout\ & \Add4~29_sumout\ & \Add4~25_sumout\ & \Add4~21_sumout\ & \Add4~17_sumout\ & \Add4~13_sumout\ & 
\Add4~9_sumout\ & \Add4~5_sumout\ & \Add4~1_sumout\ & \x[2]~4_combout\ & \x[1]~3_combout\ & \x[0]~2_combout\);

\Mult0~136_AY_bus\ <= (\Add4~29_sumout\ & \Add4~29_sumout\ & \Add4~29_sumout\ & \Add4~29_sumout\ & \Add4~29_sumout\ & \Add4~29_sumout\ & \Add4~29_sumout\ & \Add4~29_sumout\ & \Add4~25_sumout\ & \Add4~21_sumout\ & \Add4~17_sumout\ & \Add4~13_sumout\ & 
\Add4~9_sumout\ & \Add4~5_sumout\ & \Add4~1_sumout\ & \x[2]~4_combout\ & \x[1]~3_combout\ & \x[0]~2_combout\);

\Mult0~136_resulta\ <= \Mult0~136_RESULTA_bus\(0);
\Mult0~137\ <= \Mult0~136_RESULTA_bus\(1);
\Mult0~138\ <= \Mult0~136_RESULTA_bus\(2);
\Mult0~139\ <= \Mult0~136_RESULTA_bus\(3);
\Mult0~140\ <= \Mult0~136_RESULTA_bus\(4);
\Mult0~141\ <= \Mult0~136_RESULTA_bus\(5);
\Mult0~142\ <= \Mult0~136_RESULTA_bus\(6);
\Mult0~143\ <= \Mult0~136_RESULTA_bus\(7);
\Mult0~144\ <= \Mult0~136_RESULTA_bus\(8);
\Mult0~145\ <= \Mult0~136_RESULTA_bus\(9);
\Mult0~146\ <= \Mult0~136_RESULTA_bus\(10);
\Mult0~147\ <= \Mult0~136_RESULTA_bus\(11);
\Mult0~148\ <= \Mult0~136_RESULTA_bus\(12);
\Mult0~149\ <= \Mult0~136_RESULTA_bus\(13);
\Mult0~150\ <= \Mult0~136_RESULTA_bus\(14);
\Mult0~151\ <= \Mult0~136_RESULTA_bus\(15);
\Mult0~152\ <= \Mult0~136_RESULTA_bus\(16);
\Mult0~153\ <= \Mult0~136_RESULTA_bus\(17);
\Mult0~154\ <= \Mult0~136_RESULTA_bus\(18);
\Mult0~155\ <= \Mult0~136_RESULTA_bus\(19);
\Mult0~156\ <= \Mult0~136_RESULTA_bus\(20);
\Mult0~157\ <= \Mult0~136_RESULTA_bus\(21);
\Mult0~158\ <= \Mult0~136_RESULTA_bus\(22);
\Mult0~159\ <= \Mult0~136_RESULTA_bus\(23);
\Mult0~160\ <= \Mult0~136_RESULTA_bus\(24);
\Mult0~161\ <= \Mult0~136_RESULTA_bus\(25);
\Mult0~162\ <= \Mult0~136_RESULTA_bus\(26);
\Mult0~163\ <= \Mult0~136_RESULTA_bus\(27);
\Mult0~164\ <= \Mult0~136_RESULTA_bus\(28);
\Mult0~165\ <= \Mult0~136_RESULTA_bus\(29);
\Mult0~166\ <= \Mult0~136_RESULTA_bus\(30);
\Mult0~167\ <= \Mult0~136_RESULTA_bus\(31);
\Mult0~168\ <= \Mult0~136_RESULTA_bus\(32);
\Mult0~169\ <= \Mult0~136_RESULTA_bus\(33);
\Mult0~170\ <= \Mult0~136_RESULTA_bus\(34);
\Mult0~171\ <= \Mult0~136_RESULTA_bus\(35);
\Mult0~172\ <= \Mult0~136_RESULTA_bus\(36);
\Mult0~173\ <= \Mult0~136_RESULTA_bus\(37);
\Mult0~174\ <= \Mult0~136_RESULTA_bus\(38);
\Mult0~175\ <= \Mult0~136_RESULTA_bus\(39);
\Mult0~176\ <= \Mult0~136_RESULTA_bus\(40);
\Mult0~177\ <= \Mult0~136_RESULTA_bus\(41);
\Mult0~178\ <= \Mult0~136_RESULTA_bus\(42);
\Mult0~179\ <= \Mult0~136_RESULTA_bus\(43);
\Mult0~180\ <= \Mult0~136_RESULTA_bus\(44);
\Mult0~181\ <= \Mult0~136_RESULTA_bus\(45);
\Mult0~182\ <= \Mult0~136_RESULTA_bus\(46);
\Mult0~183\ <= \Mult0~136_RESULTA_bus\(47);
\Mult0~184\ <= \Mult0~136_RESULTA_bus\(48);
\Mult0~185\ <= \Mult0~136_RESULTA_bus\(49);
\Mult0~186\ <= \Mult0~136_RESULTA_bus\(50);
\Mult0~187\ <= \Mult0~136_RESULTA_bus\(51);
\Mult0~188\ <= \Mult0~136_RESULTA_bus\(52);
\Mult0~189\ <= \Mult0~136_RESULTA_bus\(53);
\Mult0~190\ <= \Mult0~136_RESULTA_bus\(54);
\Mult0~191\ <= \Mult0~136_RESULTA_bus\(55);
\Mult0~192\ <= \Mult0~136_RESULTA_bus\(56);
\Mult0~193\ <= \Mult0~136_RESULTA_bus\(57);
\Mult0~194\ <= \Mult0~136_RESULTA_bus\(58);
\Mult0~195\ <= \Mult0~136_RESULTA_bus\(59);
\Mult0~196\ <= \Mult0~136_RESULTA_bus\(60);
\Mult0~197\ <= \Mult0~136_RESULTA_bus\(61);
\Mult0~198\ <= \Mult0~136_RESULTA_bus\(62);
\Mult0~199\ <= \Mult0~136_RESULTA_bus\(63);

\Mult1~8_AX_bus\ <= (\Add5~33_sumout\ & \Add5~33_sumout\ & \Add5~33_sumout\ & \Add5~33_sumout\ & \Add5~33_sumout\ & \Add5~33_sumout\ & \Add5~33_sumout\ & \Add5~33_sumout\ & \Add5~29_sumout\ & \Add5~25_sumout\ & \Add5~21_sumout\ & \Add5~17_sumout\ & 
\Add5~13_sumout\ & \Add5~9_sumout\ & \Add5~5_sumout\ & \Add5~1_sumout\ & \y[1]~1_combout\ & \y[0]~2_combout\);

\Mult1~8_AY_bus\ <= (\Add5~33_sumout\ & \Add5~33_sumout\ & \Add5~33_sumout\ & \Add5~33_sumout\ & \Add5~33_sumout\ & \Add5~33_sumout\ & \Add5~33_sumout\ & \Add5~33_sumout\ & \Add5~29_sumout\ & \Add5~25_sumout\ & \Add5~21_sumout\ & \Add5~17_sumout\ & 
\Add5~13_sumout\ & \Add5~9_sumout\ & \Add5~5_sumout\ & \Add5~1_sumout\ & \y[1]~1_combout\ & \y[0]~2_combout\);

\Mult1~8_resulta\ <= \Mult1~8_RESULTA_bus\(0);
\Mult1~9\ <= \Mult1~8_RESULTA_bus\(1);
\Mult1~10\ <= \Mult1~8_RESULTA_bus\(2);
\Mult1~11\ <= \Mult1~8_RESULTA_bus\(3);
\Mult1~12\ <= \Mult1~8_RESULTA_bus\(4);
\Mult1~13\ <= \Mult1~8_RESULTA_bus\(5);
\Mult1~14\ <= \Mult1~8_RESULTA_bus\(6);
\Mult1~15\ <= \Mult1~8_RESULTA_bus\(7);
\Mult1~16\ <= \Mult1~8_RESULTA_bus\(8);
\Mult1~17\ <= \Mult1~8_RESULTA_bus\(9);
\Mult1~18\ <= \Mult1~8_RESULTA_bus\(10);
\Mult1~19\ <= \Mult1~8_RESULTA_bus\(11);
\Mult1~20\ <= \Mult1~8_RESULTA_bus\(12);
\Mult1~21\ <= \Mult1~8_RESULTA_bus\(13);
\Mult1~22\ <= \Mult1~8_RESULTA_bus\(14);
\Mult1~23\ <= \Mult1~8_RESULTA_bus\(15);
\Mult1~24\ <= \Mult1~8_RESULTA_bus\(16);
\Mult1~25\ <= \Mult1~8_RESULTA_bus\(17);
\Mult1~26\ <= \Mult1~8_RESULTA_bus\(18);
\Mult1~27\ <= \Mult1~8_RESULTA_bus\(19);
\Mult1~28\ <= \Mult1~8_RESULTA_bus\(20);
\Mult1~29\ <= \Mult1~8_RESULTA_bus\(21);
\Mult1~30\ <= \Mult1~8_RESULTA_bus\(22);
\Mult1~31\ <= \Mult1~8_RESULTA_bus\(23);
\Mult1~32\ <= \Mult1~8_RESULTA_bus\(24);
\Mult1~33\ <= \Mult1~8_RESULTA_bus\(25);
\Mult1~34\ <= \Mult1~8_RESULTA_bus\(26);
\Mult1~35\ <= \Mult1~8_RESULTA_bus\(27);
\Mult1~36\ <= \Mult1~8_RESULTA_bus\(28);
\Mult1~37\ <= \Mult1~8_RESULTA_bus\(29);
\Mult1~38\ <= \Mult1~8_RESULTA_bus\(30);
\Mult1~39\ <= \Mult1~8_RESULTA_bus\(31);
\Mult1~40\ <= \Mult1~8_RESULTA_bus\(32);
\Mult1~41\ <= \Mult1~8_RESULTA_bus\(33);
\Mult1~42\ <= \Mult1~8_RESULTA_bus\(34);
\Mult1~43\ <= \Mult1~8_RESULTA_bus\(35);
\Mult1~44\ <= \Mult1~8_RESULTA_bus\(36);
\Mult1~45\ <= \Mult1~8_RESULTA_bus\(37);
\Mult1~46\ <= \Mult1~8_RESULTA_bus\(38);
\Mult1~47\ <= \Mult1~8_RESULTA_bus\(39);
\Mult1~48\ <= \Mult1~8_RESULTA_bus\(40);
\Mult1~49\ <= \Mult1~8_RESULTA_bus\(41);
\Mult1~50\ <= \Mult1~8_RESULTA_bus\(42);
\Mult1~51\ <= \Mult1~8_RESULTA_bus\(43);
\Mult1~52\ <= \Mult1~8_RESULTA_bus\(44);
\Mult1~53\ <= \Mult1~8_RESULTA_bus\(45);
\Mult1~54\ <= \Mult1~8_RESULTA_bus\(46);
\Mult1~55\ <= \Mult1~8_RESULTA_bus\(47);
\Mult1~56\ <= \Mult1~8_RESULTA_bus\(48);
\Mult1~57\ <= \Mult1~8_RESULTA_bus\(49);
\Mult1~58\ <= \Mult1~8_RESULTA_bus\(50);
\Mult1~59\ <= \Mult1~8_RESULTA_bus\(51);
\Mult1~60\ <= \Mult1~8_RESULTA_bus\(52);
\Mult1~61\ <= \Mult1~8_RESULTA_bus\(53);
\Mult1~62\ <= \Mult1~8_RESULTA_bus\(54);
\Mult1~63\ <= \Mult1~8_RESULTA_bus\(55);
\Mult1~64\ <= \Mult1~8_RESULTA_bus\(56);
\Mult1~65\ <= \Mult1~8_RESULTA_bus\(57);
\Mult1~66\ <= \Mult1~8_RESULTA_bus\(58);
\Mult1~67\ <= \Mult1~8_RESULTA_bus\(59);
\Mult1~68\ <= \Mult1~8_RESULTA_bus\(60);
\Mult1~69\ <= \Mult1~8_RESULTA_bus\(61);
\Mult1~70\ <= \Mult1~8_RESULTA_bus\(62);
\Mult1~71\ <= \Mult1~8_RESULTA_bus\(63);

\Mult0~477_AX_bus\ <= (\Add4~29_sumout\ & \Add4~29_sumout\ & \Add4~29_sumout\ & \Add4~29_sumout\ & \Add4~29_sumout\ & \Add4~29_sumout\ & \Add4~29_sumout\ & \Add4~29_sumout\ & \Add4~29_sumout\ & \Add4~29_sumout\ & \Add4~29_sumout\ & \Add4~29_sumout\ & 
\Add4~29_sumout\ & \Add4~29_sumout\);

\Mult0~477_AY_bus\ <= (\Add4~29_sumout\ & \Add4~29_sumout\ & \Add4~29_sumout\ & \Add4~29_sumout\ & \Add4~29_sumout\ & \Add4~29_sumout\ & \Add4~29_sumout\ & \Add4~29_sumout\ & \Add4~25_sumout\ & \Add4~21_sumout\ & \Add4~17_sumout\ & \Add4~13_sumout\ & 
\Add4~9_sumout\ & \Add4~5_sumout\ & \Add4~1_sumout\ & \x[2]~4_combout\ & \x[1]~3_combout\ & \x[0]~2_combout\);

\Mult0~477_BX_bus\ <= (\Add4~29_sumout\ & \Add4~29_sumout\ & \Add4~29_sumout\ & \Add4~29_sumout\ & \Add4~29_sumout\ & \Add4~29_sumout\ & \Add4~29_sumout\ & \Add4~29_sumout\ & \Add4~29_sumout\ & \Add4~29_sumout\ & \Add4~29_sumout\ & \Add4~29_sumout\ & 
\Add4~29_sumout\ & \Add4~29_sumout\);

\Mult0~477_BY_bus\ <= (\Add4~29_sumout\ & \Add4~29_sumout\ & \Add4~29_sumout\ & \Add4~29_sumout\ & \Add4~29_sumout\ & \Add4~29_sumout\ & \Add4~29_sumout\ & \Add4~29_sumout\ & \Add4~25_sumout\ & \Add4~21_sumout\ & \Add4~17_sumout\ & \Add4~13_sumout\ & 
\Add4~9_sumout\ & \Add4~5_sumout\ & \Add4~1_sumout\ & \x[2]~4_combout\ & \x[1]~3_combout\ & \x[0]~2_combout\);

\Mult0~477_resulta\ <= \Mult0~477_RESULTA_bus\(0);
\Mult0~478\ <= \Mult0~477_RESULTA_bus\(1);
\Mult0~479\ <= \Mult0~477_RESULTA_bus\(2);
\Mult0~480\ <= \Mult0~477_RESULTA_bus\(3);
\Mult0~481\ <= \Mult0~477_RESULTA_bus\(4);
\Mult0~482\ <= \Mult0~477_RESULTA_bus\(5);
\Mult0~483\ <= \Mult0~477_RESULTA_bus\(6);
\Mult0~484\ <= \Mult0~477_RESULTA_bus\(7);
\Mult0~485\ <= \Mult0~477_RESULTA_bus\(8);
\Mult0~486\ <= \Mult0~477_RESULTA_bus\(9);
\Mult0~487\ <= \Mult0~477_RESULTA_bus\(10);
\Mult0~488\ <= \Mult0~477_RESULTA_bus\(11);
\Mult0~489\ <= \Mult0~477_RESULTA_bus\(12);
\Mult0~490\ <= \Mult0~477_RESULTA_bus\(13);
\Mult0~491\ <= \Mult0~477_RESULTA_bus\(14);
\Mult0~492\ <= \Mult0~477_RESULTA_bus\(15);
\Mult0~493\ <= \Mult0~477_RESULTA_bus\(16);
\Mult0~494\ <= \Mult0~477_RESULTA_bus\(17);
\Mult0~495\ <= \Mult0~477_RESULTA_bus\(18);
\Mult0~496\ <= \Mult0~477_RESULTA_bus\(19);
\Mult0~497\ <= \Mult0~477_RESULTA_bus\(20);
\Mult0~498\ <= \Mult0~477_RESULTA_bus\(21);
\Mult0~499\ <= \Mult0~477_RESULTA_bus\(22);
\Mult0~500\ <= \Mult0~477_RESULTA_bus\(23);
\Mult0~501\ <= \Mult0~477_RESULTA_bus\(24);
\Mult0~502\ <= \Mult0~477_RESULTA_bus\(25);
\Mult0~503\ <= \Mult0~477_RESULTA_bus\(26);
\Mult0~504\ <= \Mult0~477_RESULTA_bus\(27);
\Mult0~505\ <= \Mult0~477_RESULTA_bus\(28);
\Mult0~506\ <= \Mult0~477_RESULTA_bus\(29);
\Mult0~507\ <= \Mult0~477_RESULTA_bus\(30);
\Mult0~508\ <= \Mult0~477_RESULTA_bus\(31);
\Mult0~509\ <= \Mult0~477_RESULTA_bus\(32);
\Mult0~510\ <= \Mult0~477_RESULTA_bus\(33);
\Mult0~511\ <= \Mult0~477_RESULTA_bus\(34);
\Mult0~512\ <= \Mult0~477_RESULTA_bus\(35);
\Mult0~513\ <= \Mult0~477_RESULTA_bus\(36);
\Mult0~514\ <= \Mult0~477_RESULTA_bus\(37);
\Mult0~515\ <= \Mult0~477_RESULTA_bus\(38);
\Mult0~516\ <= \Mult0~477_RESULTA_bus\(39);
\Mult0~517\ <= \Mult0~477_RESULTA_bus\(40);
\Mult0~518\ <= \Mult0~477_RESULTA_bus\(41);
\Mult0~519\ <= \Mult0~477_RESULTA_bus\(42);
\Mult0~520\ <= \Mult0~477_RESULTA_bus\(43);
\Mult0~521\ <= \Mult0~477_RESULTA_bus\(44);
\Mult0~522\ <= \Mult0~477_RESULTA_bus\(45);
\Mult0~523\ <= \Mult0~477_RESULTA_bus\(46);
\Mult0~524\ <= \Mult0~477_RESULTA_bus\(47);
\Mult0~525\ <= \Mult0~477_RESULTA_bus\(48);
\Mult0~526\ <= \Mult0~477_RESULTA_bus\(49);
\Mult0~527\ <= \Mult0~477_RESULTA_bus\(50);
\Mult0~528\ <= \Mult0~477_RESULTA_bus\(51);
\Mult0~529\ <= \Mult0~477_RESULTA_bus\(52);
\Mult0~530\ <= \Mult0~477_RESULTA_bus\(53);
\Mult0~531\ <= \Mult0~477_RESULTA_bus\(54);
\Mult0~532\ <= \Mult0~477_RESULTA_bus\(55);
\Mult0~533\ <= \Mult0~477_RESULTA_bus\(56);
\Mult0~534\ <= \Mult0~477_RESULTA_bus\(57);
\Mult0~535\ <= \Mult0~477_RESULTA_bus\(58);
\Mult0~536\ <= \Mult0~477_RESULTA_bus\(59);
\Mult0~537\ <= \Mult0~477_RESULTA_bus\(60);
\Mult0~538\ <= \Mult0~477_RESULTA_bus\(61);
\Mult0~539\ <= \Mult0~477_RESULTA_bus\(62);
\Mult0~540\ <= \Mult0~477_RESULTA_bus\(63);

\Mult2~132_AX_bus\ <= (\Add4~29_sumout\ & \Add4~29_sumout\ & \Add4~29_sumout\ & \Add4~29_sumout\ & \Add4~29_sumout\ & \Add4~29_sumout\ & \Add4~29_sumout\ & \Add4~29_sumout\ & \Add4~25_sumout\ & \Add4~21_sumout\ & \Add4~17_sumout\ & \Add4~13_sumout\ & 
\Add4~9_sumout\ & \Add4~5_sumout\ & \Add4~1_sumout\ & \x[2]~4_combout\ & \x[1]~3_combout\ & \x[0]~2_combout\);

\Mult2~132_AY_bus\ <= (\Add4~29_sumout\ & \Add4~29_sumout\ & \Add4~29_sumout\ & \Add4~29_sumout\ & \Add4~29_sumout\ & \Add4~29_sumout\ & \Add4~29_sumout\ & \Add4~29_sumout\ & \Add4~25_sumout\ & \Add4~21_sumout\ & \Add4~17_sumout\ & \Add4~13_sumout\ & 
\Add4~9_sumout\ & \Add4~5_sumout\ & \Add4~1_sumout\ & \x[2]~4_combout\ & \x[1]~3_combout\ & \x[0]~2_combout\);

\Mult2~132_resulta\ <= \Mult2~132_RESULTA_bus\(0);
\Mult2~133\ <= \Mult2~132_RESULTA_bus\(1);
\Mult2~134\ <= \Mult2~132_RESULTA_bus\(2);
\Mult2~135\ <= \Mult2~132_RESULTA_bus\(3);
\Mult2~136\ <= \Mult2~132_RESULTA_bus\(4);
\Mult2~137\ <= \Mult2~132_RESULTA_bus\(5);
\Mult2~138\ <= \Mult2~132_RESULTA_bus\(6);
\Mult2~139\ <= \Mult2~132_RESULTA_bus\(7);
\Mult2~140\ <= \Mult2~132_RESULTA_bus\(8);
\Mult2~141\ <= \Mult2~132_RESULTA_bus\(9);
\Mult2~142\ <= \Mult2~132_RESULTA_bus\(10);
\Mult2~143\ <= \Mult2~132_RESULTA_bus\(11);
\Mult2~144\ <= \Mult2~132_RESULTA_bus\(12);
\Mult2~145\ <= \Mult2~132_RESULTA_bus\(13);
\Mult2~146\ <= \Mult2~132_RESULTA_bus\(14);
\Mult2~147\ <= \Mult2~132_RESULTA_bus\(15);
\Mult2~148\ <= \Mult2~132_RESULTA_bus\(16);
\Mult2~149\ <= \Mult2~132_RESULTA_bus\(17);
\Mult2~150\ <= \Mult2~132_RESULTA_bus\(18);
\Mult2~151\ <= \Mult2~132_RESULTA_bus\(19);
\Mult2~152\ <= \Mult2~132_RESULTA_bus\(20);
\Mult2~153\ <= \Mult2~132_RESULTA_bus\(21);
\Mult2~154\ <= \Mult2~132_RESULTA_bus\(22);
\Mult2~155\ <= \Mult2~132_RESULTA_bus\(23);
\Mult2~156\ <= \Mult2~132_RESULTA_bus\(24);
\Mult2~157\ <= \Mult2~132_RESULTA_bus\(25);
\Mult2~158\ <= \Mult2~132_RESULTA_bus\(26);
\Mult2~159\ <= \Mult2~132_RESULTA_bus\(27);
\Mult2~160\ <= \Mult2~132_RESULTA_bus\(28);
\Mult2~161\ <= \Mult2~132_RESULTA_bus\(29);
\Mult2~162\ <= \Mult2~132_RESULTA_bus\(30);
\Mult2~163\ <= \Mult2~132_RESULTA_bus\(31);
\Mult2~164\ <= \Mult2~132_RESULTA_bus\(32);
\Mult2~165\ <= \Mult2~132_RESULTA_bus\(33);
\Mult2~166\ <= \Mult2~132_RESULTA_bus\(34);
\Mult2~167\ <= \Mult2~132_RESULTA_bus\(35);
\Mult2~168\ <= \Mult2~132_RESULTA_bus\(36);
\Mult2~169\ <= \Mult2~132_RESULTA_bus\(37);
\Mult2~170\ <= \Mult2~132_RESULTA_bus\(38);
\Mult2~171\ <= \Mult2~132_RESULTA_bus\(39);
\Mult2~172\ <= \Mult2~132_RESULTA_bus\(40);
\Mult2~173\ <= \Mult2~132_RESULTA_bus\(41);
\Mult2~174\ <= \Mult2~132_RESULTA_bus\(42);
\Mult2~175\ <= \Mult2~132_RESULTA_bus\(43);
\Mult2~176\ <= \Mult2~132_RESULTA_bus\(44);
\Mult2~177\ <= \Mult2~132_RESULTA_bus\(45);
\Mult2~178\ <= \Mult2~132_RESULTA_bus\(46);
\Mult2~179\ <= \Mult2~132_RESULTA_bus\(47);
\Mult2~180\ <= \Mult2~132_RESULTA_bus\(48);
\Mult2~181\ <= \Mult2~132_RESULTA_bus\(49);
\Mult2~182\ <= \Mult2~132_RESULTA_bus\(50);
\Mult2~183\ <= \Mult2~132_RESULTA_bus\(51);
\Mult2~184\ <= \Mult2~132_RESULTA_bus\(52);
\Mult2~185\ <= \Mult2~132_RESULTA_bus\(53);
\Mult2~186\ <= \Mult2~132_RESULTA_bus\(54);
\Mult2~187\ <= \Mult2~132_RESULTA_bus\(55);
\Mult2~188\ <= \Mult2~132_RESULTA_bus\(56);
\Mult2~189\ <= \Mult2~132_RESULTA_bus\(57);
\Mult2~190\ <= \Mult2~132_RESULTA_bus\(58);
\Mult2~191\ <= \Mult2~132_RESULTA_bus\(59);
\Mult2~192\ <= \Mult2~132_RESULTA_bus\(60);
\Mult2~193\ <= \Mult2~132_RESULTA_bus\(61);
\Mult2~194\ <= \Mult2~132_RESULTA_bus\(62);
\Mult2~195\ <= \Mult2~132_RESULTA_bus\(63);

\Mult3~8_AX_bus\ <= (\Add5~33_sumout\ & \Add5~33_sumout\ & \Add5~33_sumout\ & \Add5~33_sumout\ & \Add5~33_sumout\ & \Add5~33_sumout\ & \Add5~33_sumout\ & \Add5~33_sumout\ & \Add5~29_sumout\ & \Add5~25_sumout\ & \Add5~21_sumout\ & \Add5~17_sumout\ & 
\Add5~13_sumout\ & \Add5~9_sumout\ & \Add5~5_sumout\ & \Add5~1_sumout\ & \y[1]~1_combout\ & \y[0]~2_combout\);

\Mult3~8_AY_bus\ <= (\Add5~33_sumout\ & \Add5~33_sumout\ & \Add5~33_sumout\ & \Add5~33_sumout\ & \Add5~33_sumout\ & \Add5~33_sumout\ & \Add5~33_sumout\ & \Add5~33_sumout\ & \Add5~29_sumout\ & \Add5~25_sumout\ & \Add5~21_sumout\ & \Add5~17_sumout\ & 
\Add5~13_sumout\ & \Add5~9_sumout\ & \Add5~5_sumout\ & \Add5~1_sumout\ & \y[1]~1_combout\ & \y[0]~2_combout\);

\Mult3~8_resulta\ <= \Mult3~8_RESULTA_bus\(0);
\Mult3~9\ <= \Mult3~8_RESULTA_bus\(1);
\Mult3~10\ <= \Mult3~8_RESULTA_bus\(2);
\Mult3~11\ <= \Mult3~8_RESULTA_bus\(3);
\Mult3~12\ <= \Mult3~8_RESULTA_bus\(4);
\Mult3~13\ <= \Mult3~8_RESULTA_bus\(5);
\Mult3~14\ <= \Mult3~8_RESULTA_bus\(6);
\Mult3~15\ <= \Mult3~8_RESULTA_bus\(7);
\Mult3~16\ <= \Mult3~8_RESULTA_bus\(8);
\Mult3~17\ <= \Mult3~8_RESULTA_bus\(9);
\Mult3~18\ <= \Mult3~8_RESULTA_bus\(10);
\Mult3~19\ <= \Mult3~8_RESULTA_bus\(11);
\Mult3~20\ <= \Mult3~8_RESULTA_bus\(12);
\Mult3~21\ <= \Mult3~8_RESULTA_bus\(13);
\Mult3~22\ <= \Mult3~8_RESULTA_bus\(14);
\Mult3~23\ <= \Mult3~8_RESULTA_bus\(15);
\Mult3~24\ <= \Mult3~8_RESULTA_bus\(16);
\Mult3~25\ <= \Mult3~8_RESULTA_bus\(17);
\Mult3~26\ <= \Mult3~8_RESULTA_bus\(18);
\Mult3~27\ <= \Mult3~8_RESULTA_bus\(19);
\Mult3~28\ <= \Mult3~8_RESULTA_bus\(20);
\Mult3~29\ <= \Mult3~8_RESULTA_bus\(21);
\Mult3~30\ <= \Mult3~8_RESULTA_bus\(22);
\Mult3~31\ <= \Mult3~8_RESULTA_bus\(23);
\Mult3~32\ <= \Mult3~8_RESULTA_bus\(24);
\Mult3~33\ <= \Mult3~8_RESULTA_bus\(25);
\Mult3~34\ <= \Mult3~8_RESULTA_bus\(26);
\Mult3~35\ <= \Mult3~8_RESULTA_bus\(27);
\Mult3~36\ <= \Mult3~8_RESULTA_bus\(28);
\Mult3~37\ <= \Mult3~8_RESULTA_bus\(29);
\Mult3~38\ <= \Mult3~8_RESULTA_bus\(30);
\Mult3~39\ <= \Mult3~8_RESULTA_bus\(31);
\Mult3~40\ <= \Mult3~8_RESULTA_bus\(32);
\Mult3~41\ <= \Mult3~8_RESULTA_bus\(33);
\Mult3~42\ <= \Mult3~8_RESULTA_bus\(34);
\Mult3~43\ <= \Mult3~8_RESULTA_bus\(35);
\Mult3~44\ <= \Mult3~8_RESULTA_bus\(36);
\Mult3~45\ <= \Mult3~8_RESULTA_bus\(37);
\Mult3~46\ <= \Mult3~8_RESULTA_bus\(38);
\Mult3~47\ <= \Mult3~8_RESULTA_bus\(39);
\Mult3~48\ <= \Mult3~8_RESULTA_bus\(40);
\Mult3~49\ <= \Mult3~8_RESULTA_bus\(41);
\Mult3~50\ <= \Mult3~8_RESULTA_bus\(42);
\Mult3~51\ <= \Mult3~8_RESULTA_bus\(43);
\Mult3~52\ <= \Mult3~8_RESULTA_bus\(44);
\Mult3~53\ <= \Mult3~8_RESULTA_bus\(45);
\Mult3~54\ <= \Mult3~8_RESULTA_bus\(46);
\Mult3~55\ <= \Mult3~8_RESULTA_bus\(47);
\Mult3~56\ <= \Mult3~8_RESULTA_bus\(48);
\Mult3~57\ <= \Mult3~8_RESULTA_bus\(49);
\Mult3~58\ <= \Mult3~8_RESULTA_bus\(50);
\Mult3~59\ <= \Mult3~8_RESULTA_bus\(51);
\Mult3~60\ <= \Mult3~8_RESULTA_bus\(52);
\Mult3~61\ <= \Mult3~8_RESULTA_bus\(53);
\Mult3~62\ <= \Mult3~8_RESULTA_bus\(54);
\Mult3~63\ <= \Mult3~8_RESULTA_bus\(55);
\Mult3~64\ <= \Mult3~8_RESULTA_bus\(56);
\Mult3~65\ <= \Mult3~8_RESULTA_bus\(57);
\Mult3~66\ <= \Mult3~8_RESULTA_bus\(58);
\Mult3~67\ <= \Mult3~8_RESULTA_bus\(59);
\Mult3~68\ <= \Mult3~8_RESULTA_bus\(60);
\Mult3~69\ <= \Mult3~8_RESULTA_bus\(61);
\Mult3~70\ <= \Mult3~8_RESULTA_bus\(62);
\Mult3~71\ <= \Mult3~8_RESULTA_bus\(63);

\Mult2~473_AX_bus\ <= (\Add4~29_sumout\ & \Add4~29_sumout\ & \Add4~29_sumout\ & \Add4~29_sumout\ & \Add4~29_sumout\ & \Add4~29_sumout\ & \Add4~29_sumout\ & \Add4~29_sumout\ & \Add4~29_sumout\ & \Add4~29_sumout\ & \Add4~29_sumout\ & \Add4~29_sumout\ & 
\Add4~29_sumout\ & \Add4~29_sumout\);

\Mult2~473_AY_bus\ <= (\Add4~29_sumout\ & \Add4~29_sumout\ & \Add4~29_sumout\ & \Add4~29_sumout\ & \Add4~29_sumout\ & \Add4~29_sumout\ & \Add4~29_sumout\ & \Add4~29_sumout\ & \Add4~25_sumout\ & \Add4~21_sumout\ & \Add4~17_sumout\ & \Add4~13_sumout\ & 
\Add4~9_sumout\ & \Add4~5_sumout\ & \Add4~1_sumout\ & \x[2]~4_combout\ & \x[1]~3_combout\ & \x[0]~2_combout\);

\Mult2~473_BX_bus\ <= (\Add4~29_sumout\ & \Add4~29_sumout\ & \Add4~29_sumout\ & \Add4~29_sumout\ & \Add4~29_sumout\ & \Add4~29_sumout\ & \Add4~29_sumout\ & \Add4~29_sumout\ & \Add4~29_sumout\ & \Add4~29_sumout\ & \Add4~29_sumout\ & \Add4~29_sumout\ & 
\Add4~29_sumout\ & \Add4~29_sumout\);

\Mult2~473_BY_bus\ <= (\Add4~29_sumout\ & \Add4~29_sumout\ & \Add4~29_sumout\ & \Add4~29_sumout\ & \Add4~29_sumout\ & \Add4~29_sumout\ & \Add4~29_sumout\ & \Add4~29_sumout\ & \Add4~25_sumout\ & \Add4~21_sumout\ & \Add4~17_sumout\ & \Add4~13_sumout\ & 
\Add4~9_sumout\ & \Add4~5_sumout\ & \Add4~1_sumout\ & \x[2]~4_combout\ & \x[1]~3_combout\ & \x[0]~2_combout\);

\Mult2~473_resulta\ <= \Mult2~473_RESULTA_bus\(0);
\Mult2~474\ <= \Mult2~473_RESULTA_bus\(1);
\Mult2~475\ <= \Mult2~473_RESULTA_bus\(2);
\Mult2~476\ <= \Mult2~473_RESULTA_bus\(3);
\Mult2~477\ <= \Mult2~473_RESULTA_bus\(4);
\Mult2~478\ <= \Mult2~473_RESULTA_bus\(5);
\Mult2~479\ <= \Mult2~473_RESULTA_bus\(6);
\Mult2~480\ <= \Mult2~473_RESULTA_bus\(7);
\Mult2~481\ <= \Mult2~473_RESULTA_bus\(8);
\Mult2~482\ <= \Mult2~473_RESULTA_bus\(9);
\Mult2~483\ <= \Mult2~473_RESULTA_bus\(10);
\Mult2~484\ <= \Mult2~473_RESULTA_bus\(11);
\Mult2~485\ <= \Mult2~473_RESULTA_bus\(12);
\Mult2~486\ <= \Mult2~473_RESULTA_bus\(13);
\Mult2~487\ <= \Mult2~473_RESULTA_bus\(14);
\Mult2~488\ <= \Mult2~473_RESULTA_bus\(15);
\Mult2~489\ <= \Mult2~473_RESULTA_bus\(16);
\Mult2~490\ <= \Mult2~473_RESULTA_bus\(17);
\Mult2~491\ <= \Mult2~473_RESULTA_bus\(18);
\Mult2~492\ <= \Mult2~473_RESULTA_bus\(19);
\Mult2~493\ <= \Mult2~473_RESULTA_bus\(20);
\Mult2~494\ <= \Mult2~473_RESULTA_bus\(21);
\Mult2~495\ <= \Mult2~473_RESULTA_bus\(22);
\Mult2~496\ <= \Mult2~473_RESULTA_bus\(23);
\Mult2~497\ <= \Mult2~473_RESULTA_bus\(24);
\Mult2~498\ <= \Mult2~473_RESULTA_bus\(25);
\Mult2~499\ <= \Mult2~473_RESULTA_bus\(26);
\Mult2~500\ <= \Mult2~473_RESULTA_bus\(27);
\Mult2~501\ <= \Mult2~473_RESULTA_bus\(28);
\Mult2~502\ <= \Mult2~473_RESULTA_bus\(29);
\Mult2~503\ <= \Mult2~473_RESULTA_bus\(30);
\Mult2~504\ <= \Mult2~473_RESULTA_bus\(31);
\Mult2~505\ <= \Mult2~473_RESULTA_bus\(32);
\Mult2~506\ <= \Mult2~473_RESULTA_bus\(33);
\Mult2~507\ <= \Mult2~473_RESULTA_bus\(34);
\Mult2~508\ <= \Mult2~473_RESULTA_bus\(35);
\Mult2~509\ <= \Mult2~473_RESULTA_bus\(36);
\Mult2~510\ <= \Mult2~473_RESULTA_bus\(37);
\Mult2~511\ <= \Mult2~473_RESULTA_bus\(38);
\Mult2~512\ <= \Mult2~473_RESULTA_bus\(39);
\Mult2~513\ <= \Mult2~473_RESULTA_bus\(40);
\Mult2~514\ <= \Mult2~473_RESULTA_bus\(41);
\Mult2~515\ <= \Mult2~473_RESULTA_bus\(42);
\Mult2~516\ <= \Mult2~473_RESULTA_bus\(43);
\Mult2~517\ <= \Mult2~473_RESULTA_bus\(44);
\Mult2~518\ <= \Mult2~473_RESULTA_bus\(45);
\Mult2~519\ <= \Mult2~473_RESULTA_bus\(46);
\Mult2~520\ <= \Mult2~473_RESULTA_bus\(47);
\Mult2~521\ <= \Mult2~473_RESULTA_bus\(48);
\Mult2~522\ <= \Mult2~473_RESULTA_bus\(49);
\Mult2~523\ <= \Mult2~473_RESULTA_bus\(50);
\Mult2~524\ <= \Mult2~473_RESULTA_bus\(51);
\Mult2~525\ <= \Mult2~473_RESULTA_bus\(52);
\Mult2~526\ <= \Mult2~473_RESULTA_bus\(53);
\Mult2~527\ <= \Mult2~473_RESULTA_bus\(54);
\Mult2~528\ <= \Mult2~473_RESULTA_bus\(55);
\Mult2~529\ <= \Mult2~473_RESULTA_bus\(56);
\Mult2~530\ <= \Mult2~473_RESULTA_bus\(57);
\Mult2~531\ <= \Mult2~473_RESULTA_bus\(58);
\Mult2~532\ <= \Mult2~473_RESULTA_bus\(59);
\Mult2~533\ <= \Mult2~473_RESULTA_bus\(60);
\Mult2~534\ <= \Mult2~473_RESULTA_bus\(61);
\Mult2~535\ <= \Mult2~473_RESULTA_bus\(62);
\Mult2~536\ <= \Mult2~473_RESULTA_bus\(63);

\Mult1~405_AX_bus\ <= (\Add5~33_sumout\ & \Add5~33_sumout\ & \Add5~33_sumout\ & \Add5~33_sumout\ & \Add5~33_sumout\ & \Add5~33_sumout\ & \Add5~33_sumout\ & \Add5~33_sumout\ & \Add5~33_sumout\ & \Add5~33_sumout\ & \Add5~33_sumout\ & \Add5~33_sumout\ & 
\Add5~33_sumout\ & \Add5~33_sumout\);

\Mult1~405_AY_bus\ <= (\Add5~33_sumout\ & \Add5~33_sumout\ & \Add5~33_sumout\ & \Add5~33_sumout\ & \Add5~33_sumout\ & \Add5~33_sumout\ & \Add5~33_sumout\ & \Add5~33_sumout\ & \Add5~29_sumout\ & \Add5~25_sumout\ & \Add5~21_sumout\ & \Add5~17_sumout\ & 
\Add5~13_sumout\ & \Add5~9_sumout\ & \Add5~5_sumout\ & \Add5~1_sumout\ & \y[1]~1_combout\ & \y[0]~2_combout\);

\Mult1~405_BX_bus\ <= (\Add5~33_sumout\ & \Add5~33_sumout\ & \Add5~33_sumout\ & \Add5~33_sumout\ & \Add5~33_sumout\ & \Add5~33_sumout\ & \Add5~33_sumout\ & \Add5~33_sumout\ & \Add5~33_sumout\ & \Add5~33_sumout\ & \Add5~33_sumout\ & \Add5~33_sumout\ & 
\Add5~33_sumout\ & \Add5~33_sumout\);

\Mult1~405_BY_bus\ <= (\Add5~33_sumout\ & \Add5~33_sumout\ & \Add5~33_sumout\ & \Add5~33_sumout\ & \Add5~33_sumout\ & \Add5~33_sumout\ & \Add5~33_sumout\ & \Add5~33_sumout\ & \Add5~29_sumout\ & \Add5~25_sumout\ & \Add5~21_sumout\ & \Add5~17_sumout\ & 
\Add5~13_sumout\ & \Add5~9_sumout\ & \Add5~5_sumout\ & \Add5~1_sumout\ & \y[1]~1_combout\ & \y[0]~2_combout\);

\Mult1~405_resulta\ <= \Mult1~405_RESULTA_bus\(0);
\Mult1~406\ <= \Mult1~405_RESULTA_bus\(1);
\Mult1~407\ <= \Mult1~405_RESULTA_bus\(2);
\Mult1~408\ <= \Mult1~405_RESULTA_bus\(3);
\Mult1~409\ <= \Mult1~405_RESULTA_bus\(4);
\Mult1~410\ <= \Mult1~405_RESULTA_bus\(5);
\Mult1~411\ <= \Mult1~405_RESULTA_bus\(6);
\Mult1~412\ <= \Mult1~405_RESULTA_bus\(7);
\Mult1~413\ <= \Mult1~405_RESULTA_bus\(8);
\Mult1~414\ <= \Mult1~405_RESULTA_bus\(9);
\Mult1~415\ <= \Mult1~405_RESULTA_bus\(10);
\Mult1~416\ <= \Mult1~405_RESULTA_bus\(11);
\Mult1~417\ <= \Mult1~405_RESULTA_bus\(12);
\Mult1~418\ <= \Mult1~405_RESULTA_bus\(13);
\Mult1~419\ <= \Mult1~405_RESULTA_bus\(14);
\Mult1~420\ <= \Mult1~405_RESULTA_bus\(15);
\Mult1~421\ <= \Mult1~405_RESULTA_bus\(16);
\Mult1~422\ <= \Mult1~405_RESULTA_bus\(17);
\Mult1~423\ <= \Mult1~405_RESULTA_bus\(18);
\Mult1~424\ <= \Mult1~405_RESULTA_bus\(19);
\Mult1~425\ <= \Mult1~405_RESULTA_bus\(20);
\Mult1~426\ <= \Mult1~405_RESULTA_bus\(21);
\Mult1~427\ <= \Mult1~405_RESULTA_bus\(22);
\Mult1~428\ <= \Mult1~405_RESULTA_bus\(23);
\Mult1~429\ <= \Mult1~405_RESULTA_bus\(24);
\Mult1~430\ <= \Mult1~405_RESULTA_bus\(25);
\Mult1~431\ <= \Mult1~405_RESULTA_bus\(26);
\Mult1~432\ <= \Mult1~405_RESULTA_bus\(27);
\Mult1~433\ <= \Mult1~405_RESULTA_bus\(28);
\Mult1~434\ <= \Mult1~405_RESULTA_bus\(29);
\Mult1~435\ <= \Mult1~405_RESULTA_bus\(30);
\Mult1~436\ <= \Mult1~405_RESULTA_bus\(31);
\Mult1~437\ <= \Mult1~405_RESULTA_bus\(32);
\Mult1~438\ <= \Mult1~405_RESULTA_bus\(33);
\Mult1~439\ <= \Mult1~405_RESULTA_bus\(34);
\Mult1~440\ <= \Mult1~405_RESULTA_bus\(35);
\Mult1~441\ <= \Mult1~405_RESULTA_bus\(36);
\Mult1~442\ <= \Mult1~405_RESULTA_bus\(37);
\Mult1~443\ <= \Mult1~405_RESULTA_bus\(38);
\Mult1~444\ <= \Mult1~405_RESULTA_bus\(39);
\Mult1~445\ <= \Mult1~405_RESULTA_bus\(40);
\Mult1~446\ <= \Mult1~405_RESULTA_bus\(41);
\Mult1~447\ <= \Mult1~405_RESULTA_bus\(42);
\Mult1~448\ <= \Mult1~405_RESULTA_bus\(43);
\Mult1~449\ <= \Mult1~405_RESULTA_bus\(44);
\Mult1~450\ <= \Mult1~405_RESULTA_bus\(45);
\Mult1~451\ <= \Mult1~405_RESULTA_bus\(46);
\Mult1~452\ <= \Mult1~405_RESULTA_bus\(47);
\Mult1~453\ <= \Mult1~405_RESULTA_bus\(48);
\Mult1~454\ <= \Mult1~405_RESULTA_bus\(49);
\Mult1~455\ <= \Mult1~405_RESULTA_bus\(50);
\Mult1~456\ <= \Mult1~405_RESULTA_bus\(51);
\Mult1~457\ <= \Mult1~405_RESULTA_bus\(52);
\Mult1~458\ <= \Mult1~405_RESULTA_bus\(53);
\Mult1~459\ <= \Mult1~405_RESULTA_bus\(54);
\Mult1~460\ <= \Mult1~405_RESULTA_bus\(55);
\Mult1~461\ <= \Mult1~405_RESULTA_bus\(56);
\Mult1~462\ <= \Mult1~405_RESULTA_bus\(57);
\Mult1~463\ <= \Mult1~405_RESULTA_bus\(58);
\Mult1~464\ <= \Mult1~405_RESULTA_bus\(59);
\Mult1~465\ <= \Mult1~405_RESULTA_bus\(60);
\Mult1~466\ <= \Mult1~405_RESULTA_bus\(61);
\Mult1~467\ <= \Mult1~405_RESULTA_bus\(62);
\Mult1~468\ <= \Mult1~405_RESULTA_bus\(63);

\Mult3~405_AX_bus\ <= (\Add5~33_sumout\ & \Add5~33_sumout\ & \Add5~33_sumout\ & \Add5~33_sumout\ & \Add5~33_sumout\ & \Add5~33_sumout\ & \Add5~33_sumout\ & \Add5~33_sumout\ & \Add5~33_sumout\ & \Add5~33_sumout\ & \Add5~33_sumout\ & \Add5~33_sumout\ & 
\Add5~33_sumout\ & \Add5~33_sumout\);

\Mult3~405_AY_bus\ <= (\Add5~33_sumout\ & \Add5~33_sumout\ & \Add5~33_sumout\ & \Add5~33_sumout\ & \Add5~33_sumout\ & \Add5~33_sumout\ & \Add5~33_sumout\ & \Add5~33_sumout\ & \Add5~29_sumout\ & \Add5~25_sumout\ & \Add5~21_sumout\ & \Add5~17_sumout\ & 
\Add5~13_sumout\ & \Add5~9_sumout\ & \Add5~5_sumout\ & \Add5~1_sumout\ & \y[1]~1_combout\ & \y[0]~2_combout\);

\Mult3~405_BX_bus\ <= (\Add5~33_sumout\ & \Add5~33_sumout\ & \Add5~33_sumout\ & \Add5~33_sumout\ & \Add5~33_sumout\ & \Add5~33_sumout\ & \Add5~33_sumout\ & \Add5~33_sumout\ & \Add5~33_sumout\ & \Add5~33_sumout\ & \Add5~33_sumout\ & \Add5~33_sumout\ & 
\Add5~33_sumout\ & \Add5~33_sumout\);

\Mult3~405_BY_bus\ <= (\Add5~33_sumout\ & \Add5~33_sumout\ & \Add5~33_sumout\ & \Add5~33_sumout\ & \Add5~33_sumout\ & \Add5~33_sumout\ & \Add5~33_sumout\ & \Add5~33_sumout\ & \Add5~29_sumout\ & \Add5~25_sumout\ & \Add5~21_sumout\ & \Add5~17_sumout\ & 
\Add5~13_sumout\ & \Add5~9_sumout\ & \Add5~5_sumout\ & \Add5~1_sumout\ & \y[1]~1_combout\ & \y[0]~2_combout\);

\Mult3~405_resulta\ <= \Mult3~405_RESULTA_bus\(0);
\Mult3~406\ <= \Mult3~405_RESULTA_bus\(1);
\Mult3~407\ <= \Mult3~405_RESULTA_bus\(2);
\Mult3~408\ <= \Mult3~405_RESULTA_bus\(3);
\Mult3~409\ <= \Mult3~405_RESULTA_bus\(4);
\Mult3~410\ <= \Mult3~405_RESULTA_bus\(5);
\Mult3~411\ <= \Mult3~405_RESULTA_bus\(6);
\Mult3~412\ <= \Mult3~405_RESULTA_bus\(7);
\Mult3~413\ <= \Mult3~405_RESULTA_bus\(8);
\Mult3~414\ <= \Mult3~405_RESULTA_bus\(9);
\Mult3~415\ <= \Mult3~405_RESULTA_bus\(10);
\Mult3~416\ <= \Mult3~405_RESULTA_bus\(11);
\Mult3~417\ <= \Mult3~405_RESULTA_bus\(12);
\Mult3~418\ <= \Mult3~405_RESULTA_bus\(13);
\Mult3~419\ <= \Mult3~405_RESULTA_bus\(14);
\Mult3~420\ <= \Mult3~405_RESULTA_bus\(15);
\Mult3~421\ <= \Mult3~405_RESULTA_bus\(16);
\Mult3~422\ <= \Mult3~405_RESULTA_bus\(17);
\Mult3~423\ <= \Mult3~405_RESULTA_bus\(18);
\Mult3~424\ <= \Mult3~405_RESULTA_bus\(19);
\Mult3~425\ <= \Mult3~405_RESULTA_bus\(20);
\Mult3~426\ <= \Mult3~405_RESULTA_bus\(21);
\Mult3~427\ <= \Mult3~405_RESULTA_bus\(22);
\Mult3~428\ <= \Mult3~405_RESULTA_bus\(23);
\Mult3~429\ <= \Mult3~405_RESULTA_bus\(24);
\Mult3~430\ <= \Mult3~405_RESULTA_bus\(25);
\Mult3~431\ <= \Mult3~405_RESULTA_bus\(26);
\Mult3~432\ <= \Mult3~405_RESULTA_bus\(27);
\Mult3~433\ <= \Mult3~405_RESULTA_bus\(28);
\Mult3~434\ <= \Mult3~405_RESULTA_bus\(29);
\Mult3~435\ <= \Mult3~405_RESULTA_bus\(30);
\Mult3~436\ <= \Mult3~405_RESULTA_bus\(31);
\Mult3~437\ <= \Mult3~405_RESULTA_bus\(32);
\Mult3~438\ <= \Mult3~405_RESULTA_bus\(33);
\Mult3~439\ <= \Mult3~405_RESULTA_bus\(34);
\Mult3~440\ <= \Mult3~405_RESULTA_bus\(35);
\Mult3~441\ <= \Mult3~405_RESULTA_bus\(36);
\Mult3~442\ <= \Mult3~405_RESULTA_bus\(37);
\Mult3~443\ <= \Mult3~405_RESULTA_bus\(38);
\Mult3~444\ <= \Mult3~405_RESULTA_bus\(39);
\Mult3~445\ <= \Mult3~405_RESULTA_bus\(40);
\Mult3~446\ <= \Mult3~405_RESULTA_bus\(41);
\Mult3~447\ <= \Mult3~405_RESULTA_bus\(42);
\Mult3~448\ <= \Mult3~405_RESULTA_bus\(43);
\Mult3~449\ <= \Mult3~405_RESULTA_bus\(44);
\Mult3~450\ <= \Mult3~405_RESULTA_bus\(45);
\Mult3~451\ <= \Mult3~405_RESULTA_bus\(46);
\Mult3~452\ <= \Mult3~405_RESULTA_bus\(47);
\Mult3~453\ <= \Mult3~405_RESULTA_bus\(48);
\Mult3~454\ <= \Mult3~405_RESULTA_bus\(49);
\Mult3~455\ <= \Mult3~405_RESULTA_bus\(50);
\Mult3~456\ <= \Mult3~405_RESULTA_bus\(51);
\Mult3~457\ <= \Mult3~405_RESULTA_bus\(52);
\Mult3~458\ <= \Mult3~405_RESULTA_bus\(53);
\Mult3~459\ <= \Mult3~405_RESULTA_bus\(54);
\Mult3~460\ <= \Mult3~405_RESULTA_bus\(55);
\Mult3~461\ <= \Mult3~405_RESULTA_bus\(56);
\Mult3~462\ <= \Mult3~405_RESULTA_bus\(57);
\Mult3~463\ <= \Mult3~405_RESULTA_bus\(58);
\Mult3~464\ <= \Mult3~405_RESULTA_bus\(59);
\Mult3~465\ <= \Mult3~405_RESULTA_bus\(60);
\Mult3~466\ <= \Mult3~405_RESULTA_bus\(61);
\Mult3~467\ <= \Mult3~405_RESULTA_bus\(62);
\Mult3~468\ <= \Mult3~405_RESULTA_bus\(63);
\ALT_INV_Mult1~362_sumout\ <= NOT \Mult1~362_sumout\;
\ALT_INV_Mult1~358_sumout\ <= NOT \Mult1~358_sumout\;
\ALT_INV_Mult1~354_sumout\ <= NOT \Mult1~354_sumout\;
\ALT_INV_Mult1~350_sumout\ <= NOT \Mult1~350_sumout\;
\ALT_INV_Mult1~346_sumout\ <= NOT \Mult1~346_sumout\;
\ALT_INV_Mult0~490\ <= NOT \Mult0~490\;
\ALT_INV_Mult0~489\ <= NOT \Mult0~489\;
\ALT_INV_Mult0~488\ <= NOT \Mult0~488\;
\ALT_INV_Mult0~487\ <= NOT \Mult0~487\;
\ALT_INV_Mult0~486\ <= NOT \Mult0~486\;
\ALT_INV_Mult0~485\ <= NOT \Mult0~485\;
\ALT_INV_Mult0~484\ <= NOT \Mult0~484\;
\ALT_INV_Mult0~483\ <= NOT \Mult0~483\;
\ALT_INV_Mult0~482\ <= NOT \Mult0~482\;
\ALT_INV_Mult0~481\ <= NOT \Mult0~481\;
\ALT_INV_Mult0~480\ <= NOT \Mult0~480\;
\ALT_INV_Mult0~479\ <= NOT \Mult0~479\;
\ALT_INV_Mult0~478\ <= NOT \Mult0~478\;
\ALT_INV_Mult0~477_resulta\ <= NOT \Mult0~477_resulta\;
\ALT_INV_Mult1~342_sumout\ <= NOT \Mult1~342_sumout\;
\ALT_INV_Mult1~39\ <= NOT \Mult1~39\;
\ALT_INV_Mult1~38\ <= NOT \Mult1~38\;
\ALT_INV_Mult1~37\ <= NOT \Mult1~37\;
\ALT_INV_Mult1~36\ <= NOT \Mult1~36\;
\ALT_INV_Mult1~35\ <= NOT \Mult1~35\;
\ALT_INV_Mult1~34\ <= NOT \Mult1~34\;
\ALT_INV_Mult1~33\ <= NOT \Mult1~33\;
\ALT_INV_Mult1~32\ <= NOT \Mult1~32\;
\ALT_INV_Mult1~31\ <= NOT \Mult1~31\;
\ALT_INV_Mult1~30\ <= NOT \Mult1~30\;
\ALT_INV_Mult1~29\ <= NOT \Mult1~29\;
\ALT_INV_Mult1~28\ <= NOT \Mult1~28\;
\ALT_INV_Mult1~27\ <= NOT \Mult1~27\;
\ALT_INV_Mult1~26\ <= NOT \Mult1~26\;
\ALT_INV_Mult1~25\ <= NOT \Mult1~25\;
\ALT_INV_Mult1~24\ <= NOT \Mult1~24\;
\ALT_INV_Mult1~23\ <= NOT \Mult1~23\;
\ALT_INV_Mult1~22\ <= NOT \Mult1~22\;
\ALT_INV_Mult1~21\ <= NOT \Mult1~21\;
\ALT_INV_Mult1~20\ <= NOT \Mult1~20\;
\ALT_INV_Mult1~19\ <= NOT \Mult1~19\;
\ALT_INV_Mult1~18\ <= NOT \Mult1~18\;
\ALT_INV_Mult1~17\ <= NOT \Mult1~17\;
\ALT_INV_Mult1~16\ <= NOT \Mult1~16\;
\ALT_INV_Mult1~15\ <= NOT \Mult1~15\;
\ALT_INV_Mult1~14\ <= NOT \Mult1~14\;
\ALT_INV_Mult1~13\ <= NOT \Mult1~13\;
\ALT_INV_Mult1~12\ <= NOT \Mult1~12\;
\ALT_INV_Mult1~11\ <= NOT \Mult1~11\;
\ALT_INV_Mult1~10\ <= NOT \Mult1~10\;
\ALT_INV_Mult1~9\ <= NOT \Mult1~9\;
\ALT_INV_Mult1~8_resulta\ <= NOT \Mult1~8_resulta\;
\ALT_INV_Mult0~167\ <= NOT \Mult0~167\;
\ALT_INV_Mult0~166\ <= NOT \Mult0~166\;
\ALT_INV_Mult0~165\ <= NOT \Mult0~165\;
\ALT_INV_Mult0~164\ <= NOT \Mult0~164\;
\ALT_INV_Mult0~163\ <= NOT \Mult0~163\;
\ALT_INV_Mult0~162\ <= NOT \Mult0~162\;
\ALT_INV_Mult0~161\ <= NOT \Mult0~161\;
\ALT_INV_Mult0~160\ <= NOT \Mult0~160\;
\ALT_INV_Mult0~159\ <= NOT \Mult0~159\;
\ALT_INV_Mult0~158\ <= NOT \Mult0~158\;
\ALT_INV_Mult0~157\ <= NOT \Mult0~157\;
\ALT_INV_Mult0~156\ <= NOT \Mult0~156\;
\ALT_INV_Mult0~155\ <= NOT \Mult0~155\;
\ALT_INV_Mult0~154\ <= NOT \Mult0~154\;
\ALT_INV_Mult0~153\ <= NOT \Mult0~153\;
\ALT_INV_Mult0~152\ <= NOT \Mult0~152\;
\ALT_INV_Mult0~151\ <= NOT \Mult0~151\;
\ALT_INV_Mult0~150\ <= NOT \Mult0~150\;
\ALT_INV_Mult0~149\ <= NOT \Mult0~149\;
\ALT_INV_Mult0~148\ <= NOT \Mult0~148\;
\ALT_INV_Mult0~147\ <= NOT \Mult0~147\;
\ALT_INV_Mult0~146\ <= NOT \Mult0~146\;
\ALT_INV_Mult0~145\ <= NOT \Mult0~145\;
\ALT_INV_Mult0~144\ <= NOT \Mult0~144\;
\ALT_INV_Mult0~143\ <= NOT \Mult0~143\;
\ALT_INV_Mult0~142\ <= NOT \Mult0~142\;
\ALT_INV_Mult0~141\ <= NOT \Mult0~141\;
\ALT_INV_Mult0~140\ <= NOT \Mult0~140\;
\ALT_INV_Mult0~139\ <= NOT \Mult0~139\;
\ALT_INV_Mult0~138\ <= NOT \Mult0~138\;
\ALT_INV_Mult0~137\ <= NOT \Mult0~137\;
\ALT_INV_Mult0~136_resulta\ <= NOT \Mult0~136_resulta\;
ALT_INV_c_counter(12) <= NOT c_counter(12);
ALT_INV_c_counter(13) <= NOT c_counter(13);
ALT_INV_c_counter(14) <= NOT c_counter(14);
ALT_INV_c_counter(15) <= NOT c_counter(15);
ALT_INV_c_counter(16) <= NOT c_counter(16);
ALT_INV_c_counter(17) <= NOT c_counter(17);
ALT_INV_c_counter(18) <= NOT c_counter(18);
ALT_INV_c_counter(19) <= NOT c_counter(19);
ALT_INV_c_counter(20) <= NOT c_counter(20);
ALT_INV_c_counter(21) <= NOT c_counter(21);
ALT_INV_c_counter(22) <= NOT c_counter(22);
ALT_INV_c_counter(23) <= NOT c_counter(23);
ALT_INV_c_counter(24) <= NOT c_counter(24);
ALT_INV_c_counter(25) <= NOT c_counter(25);
ALT_INV_c_counter(26) <= NOT c_counter(26);
ALT_INV_c_counter(27) <= NOT c_counter(27);
ALT_INV_c_counter(28) <= NOT c_counter(28);
ALT_INV_c_counter(29) <= NOT c_counter(29);
ALT_INV_c_counter(30) <= NOT c_counter(30);
ALT_INV_c_counter(31) <= NOT c_counter(31);
ALT_INV_c_counter(8) <= NOT c_counter(8);
ALT_INV_c_counter(0) <= NOT c_counter(0);
ALT_INV_c_counter(1) <= NOT c_counter(1);
ALT_INV_c_counter(2) <= NOT c_counter(2);
ALT_INV_c_counter(3) <= NOT c_counter(3);
ALT_INV_c_counter(4) <= NOT c_counter(4);
ALT_INV_c_counter(5) <= NOT c_counter(5);
ALT_INV_c_counter(6) <= NOT c_counter(6);
ALT_INV_c_counter(7) <= NOT c_counter(7);
ALT_INV_c_counter(9) <= NOT c_counter(9);
ALT_INV_c_counter(10) <= NOT c_counter(10);
ALT_INV_c_counter(11) <= NOT c_counter(11);
\vga_v|ALT_INV_y_c\(14) <= NOT \vga_v|y_c\(14);
\vga_v|ALT_INV_y_c\(13) <= NOT \vga_v|y_c\(13);
\vga_v|ALT_INV_y_c\(12) <= NOT \vga_v|y_c\(12);
\vga_v|ALT_INV_y_c\(11) <= NOT \vga_v|y_c\(11);
\vga_v|ALT_INV_y_c\(10) <= NOT \vga_v|y_c\(10);
\vga_v|ALT_INV_y_c\(15) <= NOT \vga_v|y_c\(15);
\vga_h|ALT_INV_x_c\(10) <= NOT \vga_h|x_c\(10);
\vga_h|ALT_INV_x_c\(13) <= NOT \vga_h|x_c\(13);
\vga_h|ALT_INV_x_c\(14) <= NOT \vga_h|x_c\(14);
\vga_h|ALT_INV_x_c\(15) <= NOT \vga_h|x_c\(15);
\vga_h|ALT_INV_x_c\(12) <= NOT \vga_h|x_c\(12);
\vga_h|ALT_INV_x_c\(11) <= NOT \vga_h|x_c\(11);
\ALT_INV_Mult2~121_sumout\ <= NOT \Mult2~121_sumout\;
\ALT_INV_Mult2~117_sumout\ <= NOT \Mult2~117_sumout\;
\ALT_INV_Mult2~113_sumout\ <= NOT \Mult2~113_sumout\;
\ALT_INV_Mult2~109_sumout\ <= NOT \Mult2~109_sumout\;
\ALT_INV_Mult2~105_sumout\ <= NOT \Mult2~105_sumout\;
\ALT_INV_Mult2~101_sumout\ <= NOT \Mult2~101_sumout\;
\ALT_INV_Mult2~97_sumout\ <= NOT \Mult2~97_sumout\;
\ALT_INV_Mult2~93_sumout\ <= NOT \Mult2~93_sumout\;
\ALT_INV_Mult2~89_sumout\ <= NOT \Mult2~89_sumout\;
\ALT_INV_Mult2~85_sumout\ <= NOT \Mult2~85_sumout\;
\ALT_INV_Mult2~81_sumout\ <= NOT \Mult2~81_sumout\;
\ALT_INV_Mult2~77_sumout\ <= NOT \Mult2~77_sumout\;
\ALT_INV_Mult2~73_sumout\ <= NOT \Mult2~73_sumout\;
\ALT_INV_Mult2~69_sumout\ <= NOT \Mult2~69_sumout\;
\ALT_INV_Mult2~65_sumout\ <= NOT \Mult2~65_sumout\;
\ALT_INV_Mult2~61_sumout\ <= NOT \Mult2~61_sumout\;
\ALT_INV_Mult2~57_sumout\ <= NOT \Mult2~57_sumout\;
\ALT_INV_Mult2~53_sumout\ <= NOT \Mult2~53_sumout\;
\ALT_INV_Mult2~49_sumout\ <= NOT \Mult2~49_sumout\;
\ALT_INV_Mult2~45_sumout\ <= NOT \Mult2~45_sumout\;
\ALT_INV_Mult2~41_sumout\ <= NOT \Mult2~41_sumout\;
\ALT_INV_Mult2~37_sumout\ <= NOT \Mult2~37_sumout\;
\ALT_INV_Mult2~33_sumout\ <= NOT \Mult2~33_sumout\;
\ALT_INV_Mult2~29_sumout\ <= NOT \Mult2~29_sumout\;
\ALT_INV_Mult2~25_sumout\ <= NOT \Mult2~25_sumout\;
\ALT_INV_Mult2~21_sumout\ <= NOT \Mult2~21_sumout\;
\ALT_INV_Mult2~17_sumout\ <= NOT \Mult2~17_sumout\;
\ALT_INV_Mult2~13_sumout\ <= NOT \Mult2~13_sumout\;
\ALT_INV_Mult2~9_sumout\ <= NOT \Mult2~9_sumout\;
\ALT_INV_Mult2~5_sumout\ <= NOT \Mult2~5_sumout\;
\ALT_INV_Mult2~1_sumout\ <= NOT \Mult2~1_sumout\;
\ALT_INV_Mult0~125_sumout\ <= NOT \Mult0~125_sumout\;
\ALT_INV_Mult0~121_sumout\ <= NOT \Mult0~121_sumout\;
\ALT_INV_Mult0~117_sumout\ <= NOT \Mult0~117_sumout\;
\ALT_INV_Mult0~113_sumout\ <= NOT \Mult0~113_sumout\;
\ALT_INV_Mult0~109_sumout\ <= NOT \Mult0~109_sumout\;
\ALT_INV_Mult0~105_sumout\ <= NOT \Mult0~105_sumout\;
\ALT_INV_Mult0~101_sumout\ <= NOT \Mult0~101_sumout\;
\ALT_INV_Mult0~97_sumout\ <= NOT \Mult0~97_sumout\;
\ALT_INV_Mult0~93_sumout\ <= NOT \Mult0~93_sumout\;
\ALT_INV_Mult0~89_sumout\ <= NOT \Mult0~89_sumout\;
\ALT_INV_Mult0~85_sumout\ <= NOT \Mult0~85_sumout\;
\ALT_INV_Mult0~81_sumout\ <= NOT \Mult0~81_sumout\;
\ALT_INV_Mult0~77_sumout\ <= NOT \Mult0~77_sumout\;
\ALT_INV_Mult0~73_sumout\ <= NOT \Mult0~73_sumout\;
\ALT_INV_Mult0~69_sumout\ <= NOT \Mult0~69_sumout\;
\ALT_INV_Mult0~65_sumout\ <= NOT \Mult0~65_sumout\;
\ALT_INV_Mult0~61_sumout\ <= NOT \Mult0~61_sumout\;
\ALT_INV_Mult0~57_sumout\ <= NOT \Mult0~57_sumout\;
\ALT_INV_Mult0~53_sumout\ <= NOT \Mult0~53_sumout\;
\ALT_INV_Mult0~49_sumout\ <= NOT \Mult0~49_sumout\;
\ALT_INV_Mult0~45_sumout\ <= NOT \Mult0~45_sumout\;
\ALT_INV_Mult0~41_sumout\ <= NOT \Mult0~41_sumout\;
\ALT_INV_Mult0~37_sumout\ <= NOT \Mult0~37_sumout\;
\ALT_INV_Mult0~33_sumout\ <= NOT \Mult0~33_sumout\;
\ALT_INV_Mult0~29_sumout\ <= NOT \Mult0~29_sumout\;
\ALT_INV_Mult0~25_sumout\ <= NOT \Mult0~25_sumout\;
\ALT_INV_Mult0~21_sumout\ <= NOT \Mult0~21_sumout\;
\ALT_INV_Mult0~17_sumout\ <= NOT \Mult0~17_sumout\;
\ALT_INV_Mult0~13_sumout\ <= NOT \Mult0~13_sumout\;
\ALT_INV_Mult0~9_sumout\ <= NOT \Mult0~9_sumout\;
\ALT_INV_Mult0~5_sumout\ <= NOT \Mult0~5_sumout\;
\ALT_INV_Mult0~1_sumout\ <= NOT \Mult0~1_sumout\;
\ALT_INV_Add1~37_sumout\ <= NOT \Add1~37_sumout\;
\ALT_INV_Add2~29_sumout\ <= NOT \Add2~29_sumout\;
\ALT_INV_Add2~25_sumout\ <= NOT \Add2~25_sumout\;
\ALT_INV_Add2~21_sumout\ <= NOT \Add2~21_sumout\;
\ALT_INV_Add2~17_sumout\ <= NOT \Add2~17_sumout\;
\ALT_INV_Add2~13_sumout\ <= NOT \Add2~13_sumout\;
\ALT_INV_Add2~9_sumout\ <= NOT \Add2~9_sumout\;
\vga_v|ALT_INV_y_c\(0) <= NOT \vga_v|y_c\(0);
\ALT_INV_Add2~5_sumout\ <= NOT \Add2~5_sumout\;
\ALT_INV_Add2~1_sumout\ <= NOT \Add2~1_sumout\;
\ALT_INV_Add1~33_sumout\ <= NOT \Add1~33_sumout\;
\ALT_INV_Add1~29_sumout\ <= NOT \Add1~29_sumout\;
\ALT_INV_Add1~25_sumout\ <= NOT \Add1~25_sumout\;
\ALT_INV_Add1~21_sumout\ <= NOT \Add1~21_sumout\;
\ALT_INV_Add1~17_sumout\ <= NOT \Add1~17_sumout\;
\ALT_INV_Add1~13_sumout\ <= NOT \Add1~13_sumout\;
\ALT_INV_Add1~9_sumout\ <= NOT \Add1~9_sumout\;
\ALT_INV_Add1~5_sumout\ <= NOT \Add1~5_sumout\;
\ALT_INV_Add1~1_sumout\ <= NOT \Add1~1_sumout\;
\vga_h|ALT_INV_x_c\(0) <= NOT \vga_h|x_c\(0);
\vga_h|ALT_INV_x_c\(1) <= NOT \vga_h|x_c\(1);
\vga_h|ALT_INV_x_c\(2) <= NOT \vga_h|x_c\(2);
\vga_h|ALT_INV_x_c\(3) <= NOT \vga_h|x_c\(3);
\vga_h|ALT_INV_x_c\(4) <= NOT \vga_h|x_c\(4);
\vga_v|ALT_INV_y_c\(6) <= NOT \vga_v|y_c\(6);
\vga_v|ALT_INV_y_c\(7) <= NOT \vga_v|y_c\(7);
\vga_v|ALT_INV_y_c\(8) <= NOT \vga_v|y_c\(8);
\vga_v|ALT_INV_y_c\(4) <= NOT \vga_v|y_c\(4);
\vga_v|ALT_INV_y_c\(5) <= NOT \vga_v|y_c\(5);
\vga_v|ALT_INV_y_c\(3) <= NOT \vga_v|y_c\(3);
\vga_v|ALT_INV_y_c\(2) <= NOT \vga_v|y_c\(2);
\vga_v|ALT_INV_y_c\(9) <= NOT \vga_v|y_c\(9);
\vga_v|ALT_INV_y_c\(1) <= NOT \vga_v|y_c\(1);
\vga_h|ALT_INV_x_c\(7) <= NOT \vga_h|x_c\(7);
\vga_h|ALT_INV_x_c\(8) <= NOT \vga_h|x_c\(8);
\vga_h|ALT_INV_x_c\(6) <= NOT \vga_h|x_c\(6);
\vga_h|ALT_INV_x_c\(5) <= NOT \vga_h|x_c\(5);
\vga_h|ALT_INV_x_c\(9) <= NOT \vga_h|x_c\(9);
\vga_v|ALT_INV_y_c[6]~DUPLICATE_q\ <= NOT \vga_v|y_c[6]~DUPLICATE_q\;
\vga_h|ALT_INV_x_c[7]~DUPLICATE_q\ <= NOT \vga_h|x_c[7]~DUPLICATE_q\;
\vga_h|ALT_INV_x_c[8]~DUPLICATE_q\ <= NOT \vga_h|x_c[8]~DUPLICATE_q\;
\vga_h|ALT_INV_x_c[6]~DUPLICATE_q\ <= NOT \vga_h|x_c[6]~DUPLICATE_q\;
\vga_h|ALT_INV_x_c[9]~DUPLICATE_q\ <= NOT \vga_h|x_c[9]~DUPLICATE_q\;
\ALT_INV_LessThan4~2_combout\ <= NOT \LessThan4~2_combout\;
\ALT_INV_LessThan3~0_combout\ <= NOT \LessThan3~0_combout\;
\ALT_INV_LessThan2~1_combout\ <= NOT \LessThan2~1_combout\;
\ALT_INV_Equal0~6_combout\ <= NOT \Equal0~6_combout\;
\ALT_INV_Equal0~5_combout\ <= NOT \Equal0~5_combout\;
\ALT_INV_Equal0~4_combout\ <= NOT \Equal0~4_combout\;
\ALT_INV_Equal0~3_combout\ <= NOT \Equal0~3_combout\;
\ALT_INV_Equal0~2_combout\ <= NOT \Equal0~2_combout\;
\ALT_INV_Equal0~1_combout\ <= NOT \Equal0~1_combout\;
\ALT_INV_Equal0~0_combout\ <= NOT \Equal0~0_combout\;
\vga_h|ALT_INV_v_enable~q\ <= NOT \vga_h|v_enable~q\;
\vga_v|ALT_INV_LessThan0~1_combout\ <= NOT \vga_v|LessThan0~1_combout\;
\vga_h|ALT_INV_clk_enable\(0) <= NOT \vga_h|clk_enable\(0);
\vga_h|ALT_INV_LessThan0~3_combout\ <= NOT \vga_h|LessThan0~3_combout\;
\vga_h|ALT_INV_LessThan0~2_combout\ <= NOT \vga_h|LessThan0~2_combout\;
\vga_h|ALT_INV_LessThan0~1_combout\ <= NOT \vga_h|LessThan0~1_combout\;
\ALT_INV_kale~9_combout\ <= NOT \kale~9_combout\;
\ALT_INV_kale~8_combout\ <= NOT \kale~8_combout\;
\ALT_INV_kale~7_combout\ <= NOT \kale~7_combout\;
\ALT_INV_kale~6_combout\ <= NOT \kale~6_combout\;
\ALT_INV_kale~5_combout\ <= NOT \kale~5_combout\;
\ALT_INV_kale~4_combout\ <= NOT \kale~4_combout\;
\ALT_INV_kale~3_combout\ <= NOT \kale~3_combout\;
\ALT_INV_kale~2_combout\ <= NOT \kale~2_combout\;
\ALT_INV_kale~1_combout\ <= NOT \kale~1_combout\;
\ALT_INV_kale~0_combout\ <= NOT \kale~0_combout\;
\ALT_INV_LessThan6~6_combout\ <= NOT \LessThan6~6_combout\;
\ALT_INV_LessThan6~5_combout\ <= NOT \LessThan6~5_combout\;
\ALT_INV_LessThan6~4_combout\ <= NOT \LessThan6~4_combout\;
\ALT_INV_LessThan6~3_combout\ <= NOT \LessThan6~3_combout\;
\ALT_INV_LessThan6~2_combout\ <= NOT \LessThan6~2_combout\;
\ALT_INV_LessThan6~1_combout\ <= NOT \LessThan6~1_combout\;
\ALT_INV_LessThan6~0_combout\ <= NOT \LessThan6~0_combout\;
\ALT_INV_red~6_combout\ <= NOT \red~6_combout\;
\ALT_INV_red~5_combout\ <= NOT \red~5_combout\;
\ALT_INV_border~8_combout\ <= NOT \border~8_combout\;
\ALT_INV_x[9]~1_combout\ <= NOT \x[9]~1_combout\;
\ALT_INV_red~4_combout\ <= NOT \red~4_combout\;
\ALT_INV_red~3_combout\ <= NOT \red~3_combout\;
\ALT_INV_border~7_combout\ <= NOT \border~7_combout\;
\ALT_INV_red~2_combout\ <= NOT \red~2_combout\;
\ALT_INV_red~1_combout\ <= NOT \red~1_combout\;
\ALT_INV_red~0_combout\ <= NOT \red~0_combout\;
\ALT_INV_y[1]~1_combout\ <= NOT \y[1]~1_combout\;
\ALT_INV_border~6_combout\ <= NOT \border~6_combout\;
\ALT_INV_border~5_combout\ <= NOT \border~5_combout\;
\ALT_INV_border~4_combout\ <= NOT \border~4_combout\;
\ALT_INV_LessThan15~0_combout\ <= NOT \LessThan15~0_combout\;
\ALT_INV_border~3_combout\ <= NOT \border~3_combout\;
\ALT_INV_border~2_combout\ <= NOT \border~2_combout\;
\ALT_INV_border~1_combout\ <= NOT \border~1_combout\;
\ALT_INV_border~0_combout\ <= NOT \border~0_combout\;
\ALT_INV_LessThan14~0_combout\ <= NOT \LessThan14~0_combout\;
\ALT_INV_x~0_combout\ <= NOT \x~0_combout\;
\vga_h|ALT_INV_LessThan0~0_combout\ <= NOT \vga_h|LessThan0~0_combout\;
\ALT_INV_LessThan2~0_combout\ <= NOT \LessThan2~0_combout\;
\ALT_INV_y~0_combout\ <= NOT \y~0_combout\;
\ALT_INV_LessThan4~1_combout\ <= NOT \LessThan4~1_combout\;
\ALT_INV_LessThan1~0_combout\ <= NOT \LessThan1~0_combout\;
\vga_v|ALT_INV_LessThan0~0_combout\ <= NOT \vga_v|LessThan0~0_combout\;
\ALT_INV_LessThan4~0_combout\ <= NOT \LessThan4~0_combout\;
\ALT_INV_LessThan0~0_combout\ <= NOT \LessThan0~0_combout\;
\ALT_INV_Mult3~418\ <= NOT \Mult3~418\;
\ALT_INV_Mult3~417\ <= NOT \Mult3~417\;
\ALT_INV_Mult3~416\ <= NOT \Mult3~416\;
\ALT_INV_Mult3~415\ <= NOT \Mult3~415\;
\ALT_INV_Mult3~414\ <= NOT \Mult3~414\;
\ALT_INV_Mult3~413\ <= NOT \Mult3~413\;
\ALT_INV_Mult3~412\ <= NOT \Mult3~412\;
\ALT_INV_Mult3~411\ <= NOT \Mult3~411\;
\ALT_INV_Mult3~410\ <= NOT \Mult3~410\;
\ALT_INV_Mult3~409\ <= NOT \Mult3~409\;
\ALT_INV_Mult3~408\ <= NOT \Mult3~408\;
\ALT_INV_Mult3~407\ <= NOT \Mult3~407\;
\ALT_INV_Mult3~406\ <= NOT \Mult3~406\;
\ALT_INV_Mult3~405_resulta\ <= NOT \Mult3~405_resulta\;
\ALT_INV_Mult1~418\ <= NOT \Mult1~418\;
\ALT_INV_Mult1~417\ <= NOT \Mult1~417\;
\ALT_INV_Mult1~416\ <= NOT \Mult1~416\;
\ALT_INV_Mult1~415\ <= NOT \Mult1~415\;
\ALT_INV_Mult1~414\ <= NOT \Mult1~414\;
\ALT_INV_Mult1~413\ <= NOT \Mult1~413\;
\ALT_INV_Mult1~412\ <= NOT \Mult1~412\;
\ALT_INV_Mult1~411\ <= NOT \Mult1~411\;
\ALT_INV_Mult1~410\ <= NOT \Mult1~410\;
\ALT_INV_Mult1~409\ <= NOT \Mult1~409\;
\ALT_INV_Mult1~408\ <= NOT \Mult1~408\;
\ALT_INV_Mult1~407\ <= NOT \Mult1~407\;
\ALT_INV_Mult1~406\ <= NOT \Mult1~406\;
\ALT_INV_Mult1~405_resulta\ <= NOT \Mult1~405_resulta\;
\ALT_INV_Mult3~394_sumout\ <= NOT \Mult3~394_sumout\;
\ALT_INV_Mult3~390_sumout\ <= NOT \Mult3~390_sumout\;
\ALT_INV_Mult3~386_sumout\ <= NOT \Mult3~386_sumout\;
\ALT_INV_Mult3~382_sumout\ <= NOT \Mult3~382_sumout\;
\ALT_INV_Mult3~378_sumout\ <= NOT \Mult3~378_sumout\;
\ALT_INV_Mult3~374_sumout\ <= NOT \Mult3~374_sumout\;
\ALT_INV_Mult3~370_sumout\ <= NOT \Mult3~370_sumout\;
\ALT_INV_Mult3~366_sumout\ <= NOT \Mult3~366_sumout\;
\ALT_INV_Mult3~362_sumout\ <= NOT \Mult3~362_sumout\;
\ALT_INV_Mult3~358_sumout\ <= NOT \Mult3~358_sumout\;
\ALT_INV_Mult3~354_sumout\ <= NOT \Mult3~354_sumout\;
\ALT_INV_Mult3~350_sumout\ <= NOT \Mult3~350_sumout\;
\ALT_INV_Mult3~346_sumout\ <= NOT \Mult3~346_sumout\;
\ALT_INV_Mult2~486\ <= NOT \Mult2~486\;
\ALT_INV_Mult2~485\ <= NOT \Mult2~485\;
\ALT_INV_Mult2~484\ <= NOT \Mult2~484\;
\ALT_INV_Mult2~483\ <= NOT \Mult2~483\;
\ALT_INV_Mult2~482\ <= NOT \Mult2~482\;
\ALT_INV_Mult2~481\ <= NOT \Mult2~481\;
\ALT_INV_Mult2~480\ <= NOT \Mult2~480\;
\ALT_INV_Mult2~479\ <= NOT \Mult2~479\;
\ALT_INV_Mult2~478\ <= NOT \Mult2~478\;
\ALT_INV_Mult2~477\ <= NOT \Mult2~477\;
\ALT_INV_Mult2~476\ <= NOT \Mult2~476\;
\ALT_INV_Mult2~475\ <= NOT \Mult2~475\;
\ALT_INV_Mult2~474\ <= NOT \Mult2~474\;
\ALT_INV_Mult2~473_resulta\ <= NOT \Mult2~473_resulta\;
\ALT_INV_Mult3~342_sumout\ <= NOT \Mult3~342_sumout\;
\ALT_INV_Mult3~39\ <= NOT \Mult3~39\;
\ALT_INV_Mult3~38\ <= NOT \Mult3~38\;
\ALT_INV_Mult3~37\ <= NOT \Mult3~37\;
\ALT_INV_Mult3~36\ <= NOT \Mult3~36\;
\ALT_INV_Mult3~35\ <= NOT \Mult3~35\;
\ALT_INV_Mult3~34\ <= NOT \Mult3~34\;
\ALT_INV_Mult3~33\ <= NOT \Mult3~33\;
\ALT_INV_Mult3~32\ <= NOT \Mult3~32\;
\ALT_INV_Mult3~31\ <= NOT \Mult3~31\;
\ALT_INV_Mult3~30\ <= NOT \Mult3~30\;
\ALT_INV_Mult3~29\ <= NOT \Mult3~29\;
\ALT_INV_Mult3~28\ <= NOT \Mult3~28\;
\ALT_INV_Mult3~27\ <= NOT \Mult3~27\;
\ALT_INV_Mult3~26\ <= NOT \Mult3~26\;
\ALT_INV_Mult3~25\ <= NOT \Mult3~25\;
\ALT_INV_Mult3~24\ <= NOT \Mult3~24\;
\ALT_INV_Mult3~23\ <= NOT \Mult3~23\;
\ALT_INV_Mult3~22\ <= NOT \Mult3~22\;
\ALT_INV_Mult3~21\ <= NOT \Mult3~21\;
\ALT_INV_Mult3~20\ <= NOT \Mult3~20\;
\ALT_INV_Mult3~19\ <= NOT \Mult3~19\;
\ALT_INV_Mult3~18\ <= NOT \Mult3~18\;
\ALT_INV_Mult3~17\ <= NOT \Mult3~17\;
\ALT_INV_Mult3~16\ <= NOT \Mult3~16\;
\ALT_INV_Mult3~15\ <= NOT \Mult3~15\;
\ALT_INV_Mult3~14\ <= NOT \Mult3~14\;
\ALT_INV_Mult3~13\ <= NOT \Mult3~13\;
\ALT_INV_Mult3~12\ <= NOT \Mult3~12\;
\ALT_INV_Mult3~11\ <= NOT \Mult3~11\;
\ALT_INV_Mult3~10\ <= NOT \Mult3~10\;
\ALT_INV_Mult3~9\ <= NOT \Mult3~9\;
\ALT_INV_Mult3~8_resulta\ <= NOT \Mult3~8_resulta\;
\ALT_INV_Mult2~163\ <= NOT \Mult2~163\;
\ALT_INV_Mult2~162\ <= NOT \Mult2~162\;
\ALT_INV_Mult2~161\ <= NOT \Mult2~161\;
\ALT_INV_Mult2~160\ <= NOT \Mult2~160\;
\ALT_INV_Mult2~159\ <= NOT \Mult2~159\;
\ALT_INV_Mult2~158\ <= NOT \Mult2~158\;
\ALT_INV_Mult2~157\ <= NOT \Mult2~157\;
\ALT_INV_Mult2~156\ <= NOT \Mult2~156\;
\ALT_INV_Mult2~155\ <= NOT \Mult2~155\;
\ALT_INV_Mult2~154\ <= NOT \Mult2~154\;
\ALT_INV_Mult2~153\ <= NOT \Mult2~153\;
\ALT_INV_Mult2~152\ <= NOT \Mult2~152\;
\ALT_INV_Mult2~151\ <= NOT \Mult2~151\;
\ALT_INV_Mult2~150\ <= NOT \Mult2~150\;
\ALT_INV_Mult2~149\ <= NOT \Mult2~149\;
\ALT_INV_Mult2~148\ <= NOT \Mult2~148\;
\ALT_INV_Mult2~147\ <= NOT \Mult2~147\;
\ALT_INV_Mult2~146\ <= NOT \Mult2~146\;
\ALT_INV_Mult2~145\ <= NOT \Mult2~145\;
\ALT_INV_Mult2~144\ <= NOT \Mult2~144\;
\ALT_INV_Mult2~143\ <= NOT \Mult2~143\;
\ALT_INV_Mult2~142\ <= NOT \Mult2~142\;
\ALT_INV_Mult2~141\ <= NOT \Mult2~141\;
\ALT_INV_Mult2~140\ <= NOT \Mult2~140\;
\ALT_INV_Mult2~139\ <= NOT \Mult2~139\;
\ALT_INV_Mult2~138\ <= NOT \Mult2~138\;
\ALT_INV_Mult2~137\ <= NOT \Mult2~137\;
\ALT_INV_Mult2~136\ <= NOT \Mult2~136\;
\ALT_INV_Mult2~135\ <= NOT \Mult2~135\;
\ALT_INV_Mult2~134\ <= NOT \Mult2~134\;
\ALT_INV_Mult2~133\ <= NOT \Mult2~133\;
\ALT_INV_Mult2~132_resulta\ <= NOT \Mult2~132_resulta\;
\ALT_INV_Mult1~394_sumout\ <= NOT \Mult1~394_sumout\;
\ALT_INV_Mult1~390_sumout\ <= NOT \Mult1~390_sumout\;
\ALT_INV_Mult1~386_sumout\ <= NOT \Mult1~386_sumout\;
\ALT_INV_Mult1~382_sumout\ <= NOT \Mult1~382_sumout\;
\ALT_INV_Mult1~378_sumout\ <= NOT \Mult1~378_sumout\;
\ALT_INV_Mult1~374_sumout\ <= NOT \Mult1~374_sumout\;
\ALT_INV_Mult1~370_sumout\ <= NOT \Mult1~370_sumout\;
\ALT_INV_Mult1~366_sumout\ <= NOT \Mult1~366_sumout\;

-- Location: IOOBUF_X36_Y81_N53
\hsync~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_LessThan0~0_combout\,
	devoe => ww_devoe,
	o => ww_hsync);

-- Location: IOOBUF_X34_Y81_N42
\vsync~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \LessThan1~1_combout\,
	devoe => ww_devoe,
	o => ww_vsync);

-- Location: IOOBUF_X38_Y81_N36
\clk_25~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \clk_25~reg0_q\,
	devoe => ww_devoe,
	o => ww_clk_25);

-- Location: IOOBUF_X40_Y81_N53
\red[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \red~7_combout\,
	devoe => ww_devoe,
	o => ww_red(0));

-- Location: IOOBUF_X38_Y81_N2
\red[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \red~7_combout\,
	devoe => ww_devoe,
	o => ww_red(1));

-- Location: IOOBUF_X26_Y81_N59
\red[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \red~7_combout\,
	devoe => ww_devoe,
	o => ww_red(2));

-- Location: IOOBUF_X38_Y81_N19
\red[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \red~7_combout\,
	devoe => ww_devoe,
	o => ww_red(3));

-- Location: IOOBUF_X36_Y81_N36
\red[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \red~7_combout\,
	devoe => ww_devoe,
	o => ww_red(4));

-- Location: IOOBUF_X22_Y81_N19
\red[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \red~7_combout\,
	devoe => ww_devoe,
	o => ww_red(5));

-- Location: IOOBUF_X22_Y81_N2
\red[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \red~7_combout\,
	devoe => ww_devoe,
	o => ww_red(6));

-- Location: IOOBUF_X26_Y81_N42
\red[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \red~7_combout\,
	devoe => ww_devoe,
	o => ww_red(7));

-- Location: IOOBUF_X4_Y81_N19
\green[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_kale~9_combout\,
	devoe => ww_devoe,
	o => ww_green(0));

-- Location: IOOBUF_X4_Y81_N2
\green[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_kale~9_combout\,
	devoe => ww_devoe,
	o => ww_green(1));

-- Location: IOOBUF_X20_Y81_N19
\green[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_kale~9_combout\,
	devoe => ww_devoe,
	o => ww_green(2));

-- Location: IOOBUF_X6_Y81_N2
\green[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_kale~9_combout\,
	devoe => ww_devoe,
	o => ww_green(3));

-- Location: IOOBUF_X10_Y81_N59
\green[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_kale~9_combout\,
	devoe => ww_devoe,
	o => ww_green(4));

-- Location: IOOBUF_X10_Y81_N42
\green[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_kale~9_combout\,
	devoe => ww_devoe,
	o => ww_green(5));

-- Location: IOOBUF_X18_Y81_N42
\green[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_kale~9_combout\,
	devoe => ww_devoe,
	o => ww_green(6));

-- Location: IOOBUF_X18_Y81_N59
\green[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_kale~9_combout\,
	devoe => ww_devoe,
	o => ww_green(7));

-- Location: IOOBUF_X40_Y81_N36
\blue[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_kale~9_combout\,
	devoe => ww_devoe,
	o => ww_blue(0));

-- Location: IOOBUF_X28_Y81_N19
\blue[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_kale~9_combout\,
	devoe => ww_devoe,
	o => ww_blue(1));

-- Location: IOOBUF_X20_Y81_N2
\blue[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_kale~9_combout\,
	devoe => ww_devoe,
	o => ww_blue(2));

-- Location: IOOBUF_X36_Y81_N19
\blue[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_kale~9_combout\,
	devoe => ww_devoe,
	o => ww_blue(3));

-- Location: IOOBUF_X28_Y81_N2
\blue[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_kale~9_combout\,
	devoe => ww_devoe,
	o => ww_blue(4));

-- Location: IOOBUF_X36_Y81_N2
\blue[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_kale~9_combout\,
	devoe => ww_devoe,
	o => ww_blue(5));

-- Location: IOOBUF_X40_Y81_N19
\blue[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_kale~9_combout\,
	devoe => ww_devoe,
	o => ww_blue(6));

-- Location: IOOBUF_X32_Y81_N19
\blue[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_kale~9_combout\,
	devoe => ww_devoe,
	o => ww_blue(7));

-- Location: IOIBUF_X32_Y0_N1
\clk~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G6
\clk~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \clk~input_o\,
	outclk => \clk~inputCLKENA0_outclk\);

-- Location: MLABCELL_X34_Y52_N0
\Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~41_sumout\ = SUM(( c_counter(0) ) + ( VCC ) + ( !VCC ))
-- \Add0~42\ = CARRY(( c_counter(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_c_counter(0),
	cin => GND,
	sumout => \Add0~41_sumout\,
	cout => \Add0~42\);

-- Location: FF_X34_Y52_N2
\c_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~41_sumout\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => c_counter(0));

-- Location: MLABCELL_X34_Y52_N3
\Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~37_sumout\ = SUM(( c_counter(1) ) + ( GND ) + ( \Add0~42\ ))
-- \Add0~38\ = CARRY(( c_counter(1) ) + ( GND ) + ( \Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_c_counter(1),
	cin => \Add0~42\,
	sumout => \Add0~37_sumout\,
	cout => \Add0~38\);

-- Location: FF_X34_Y52_N5
\c_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~37_sumout\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => c_counter(1));

-- Location: MLABCELL_X34_Y52_N6
\Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~33_sumout\ = SUM(( c_counter(2) ) + ( GND ) + ( \Add0~38\ ))
-- \Add0~34\ = CARRY(( c_counter(2) ) + ( GND ) + ( \Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_c_counter(2),
	cin => \Add0~38\,
	sumout => \Add0~33_sumout\,
	cout => \Add0~34\);

-- Location: FF_X34_Y52_N8
\c_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~33_sumout\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => c_counter(2));

-- Location: MLABCELL_X34_Y52_N9
\Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~29_sumout\ = SUM(( c_counter(3) ) + ( GND ) + ( \Add0~34\ ))
-- \Add0~30\ = CARRY(( c_counter(3) ) + ( GND ) + ( \Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_c_counter(3),
	cin => \Add0~34\,
	sumout => \Add0~29_sumout\,
	cout => \Add0~30\);

-- Location: FF_X34_Y52_N10
\c_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~29_sumout\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => c_counter(3));

-- Location: MLABCELL_X34_Y52_N12
\Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~25_sumout\ = SUM(( c_counter(4) ) + ( GND ) + ( \Add0~30\ ))
-- \Add0~26\ = CARRY(( c_counter(4) ) + ( GND ) + ( \Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_c_counter(4),
	cin => \Add0~30\,
	sumout => \Add0~25_sumout\,
	cout => \Add0~26\);

-- Location: FF_X34_Y52_N14
\c_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~25_sumout\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => c_counter(4));

-- Location: MLABCELL_X34_Y52_N15
\Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~21_sumout\ = SUM(( c_counter(5) ) + ( GND ) + ( \Add0~26\ ))
-- \Add0~22\ = CARRY(( c_counter(5) ) + ( GND ) + ( \Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_c_counter(5),
	cin => \Add0~26\,
	sumout => \Add0~21_sumout\,
	cout => \Add0~22\);

-- Location: FF_X34_Y52_N17
\c_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~21_sumout\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => c_counter(5));

-- Location: MLABCELL_X34_Y52_N18
\Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~17_sumout\ = SUM(( c_counter(6) ) + ( GND ) + ( \Add0~22\ ))
-- \Add0~18\ = CARRY(( c_counter(6) ) + ( GND ) + ( \Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_c_counter(6),
	cin => \Add0~22\,
	sumout => \Add0~17_sumout\,
	cout => \Add0~18\);

-- Location: FF_X34_Y52_N20
\c_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~17_sumout\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => c_counter(6));

-- Location: MLABCELL_X34_Y52_N21
\Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~13_sumout\ = SUM(( c_counter(7) ) + ( GND ) + ( \Add0~18\ ))
-- \Add0~14\ = CARRY(( c_counter(7) ) + ( GND ) + ( \Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_c_counter(7),
	cin => \Add0~18\,
	sumout => \Add0~13_sumout\,
	cout => \Add0~14\);

-- Location: FF_X34_Y52_N23
\c_counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~13_sumout\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => c_counter(7));

-- Location: MLABCELL_X34_Y52_N24
\Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~45_sumout\ = SUM(( c_counter(8) ) + ( GND ) + ( \Add0~14\ ))
-- \Add0~46\ = CARRY(( c_counter(8) ) + ( GND ) + ( \Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_c_counter(8),
	cin => \Add0~14\,
	sumout => \Add0~45_sumout\,
	cout => \Add0~46\);

-- Location: FF_X34_Y52_N26
\c_counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~45_sumout\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => c_counter(8));

-- Location: LABCELL_X33_Y52_N48
\Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = ( !c_counter(1) & ( !c_counter(8) & ( (!c_counter(2) & (!c_counter(4) & (c_counter(0) & !c_counter(3)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_c_counter(2),
	datab => ALT_INV_c_counter(4),
	datac => ALT_INV_c_counter(0),
	datad => ALT_INV_c_counter(3),
	datae => ALT_INV_c_counter(1),
	dataf => ALT_INV_c_counter(8),
	combout => \Equal0~1_combout\);

-- Location: MLABCELL_X34_Y52_N27
\Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~9_sumout\ = SUM(( c_counter(9) ) + ( GND ) + ( \Add0~46\ ))
-- \Add0~10\ = CARRY(( c_counter(9) ) + ( GND ) + ( \Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_c_counter(9),
	cin => \Add0~46\,
	sumout => \Add0~9_sumout\,
	cout => \Add0~10\);

-- Location: FF_X34_Y52_N29
\c_counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~9_sumout\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => c_counter(9));

-- Location: MLABCELL_X34_Y52_N30
\Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~5_sumout\ = SUM(( c_counter(10) ) + ( GND ) + ( \Add0~10\ ))
-- \Add0~6\ = CARRY(( c_counter(10) ) + ( GND ) + ( \Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_c_counter(10),
	cin => \Add0~10\,
	sumout => \Add0~5_sumout\,
	cout => \Add0~6\);

-- Location: FF_X34_Y52_N32
\c_counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~5_sumout\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => c_counter(10));

-- Location: MLABCELL_X34_Y52_N33
\Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~1_sumout\ = SUM(( c_counter(11) ) + ( GND ) + ( \Add0~6\ ))
-- \Add0~2\ = CARRY(( c_counter(11) ) + ( GND ) + ( \Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_c_counter(11),
	cin => \Add0~6\,
	sumout => \Add0~1_sumout\,
	cout => \Add0~2\);

-- Location: FF_X34_Y52_N35
\c_counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~1_sumout\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => c_counter(11));

-- Location: MLABCELL_X34_Y52_N36
\Add0~125\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~125_sumout\ = SUM(( c_counter(12) ) + ( GND ) + ( \Add0~2\ ))
-- \Add0~126\ = CARRY(( c_counter(12) ) + ( GND ) + ( \Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_c_counter(12),
	cin => \Add0~2\,
	sumout => \Add0~125_sumout\,
	cout => \Add0~126\);

-- Location: FF_X34_Y52_N38
\c_counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~125_sumout\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => c_counter(12));

-- Location: MLABCELL_X34_Y52_N39
\Add0~121\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~121_sumout\ = SUM(( c_counter(13) ) + ( GND ) + ( \Add0~126\ ))
-- \Add0~122\ = CARRY(( c_counter(13) ) + ( GND ) + ( \Add0~126\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_c_counter(13),
	cin => \Add0~126\,
	sumout => \Add0~121_sumout\,
	cout => \Add0~122\);

-- Location: FF_X34_Y52_N41
\c_counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~121_sumout\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => c_counter(13));

-- Location: LABCELL_X33_Y52_N30
\Equal0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~5_combout\ = ( !c_counter(12) & ( !c_counter(13) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => ALT_INV_c_counter(12),
	dataf => ALT_INV_c_counter(13),
	combout => \Equal0~5_combout\);

-- Location: LABCELL_X33_Y52_N54
\Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = ( !c_counter(5) & ( !c_counter(10) & ( (!c_counter(7) & (!c_counter(6) & (!c_counter(11) & !c_counter(9)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_c_counter(7),
	datab => ALT_INV_c_counter(6),
	datac => ALT_INV_c_counter(11),
	datad => ALT_INV_c_counter(9),
	datae => ALT_INV_c_counter(5),
	dataf => ALT_INV_c_counter(10),
	combout => \Equal0~0_combout\);

-- Location: MLABCELL_X34_Y52_N42
\Add0~117\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~117_sumout\ = SUM(( c_counter(14) ) + ( GND ) + ( \Add0~122\ ))
-- \Add0~118\ = CARRY(( c_counter(14) ) + ( GND ) + ( \Add0~122\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_c_counter(14),
	cin => \Add0~122\,
	sumout => \Add0~117_sumout\,
	cout => \Add0~118\);

-- Location: FF_X34_Y52_N44
\c_counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~117_sumout\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => c_counter(14));

-- Location: MLABCELL_X34_Y52_N45
\Add0~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~113_sumout\ = SUM(( c_counter(15) ) + ( GND ) + ( \Add0~118\ ))
-- \Add0~114\ = CARRY(( c_counter(15) ) + ( GND ) + ( \Add0~118\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_c_counter(15),
	cin => \Add0~118\,
	sumout => \Add0~113_sumout\,
	cout => \Add0~114\);

-- Location: FF_X34_Y52_N47
\c_counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~113_sumout\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => c_counter(15));

-- Location: MLABCELL_X34_Y52_N48
\Add0~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~109_sumout\ = SUM(( c_counter(16) ) + ( GND ) + ( \Add0~114\ ))
-- \Add0~110\ = CARRY(( c_counter(16) ) + ( GND ) + ( \Add0~114\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_c_counter(16),
	cin => \Add0~114\,
	sumout => \Add0~109_sumout\,
	cout => \Add0~110\);

-- Location: FF_X34_Y52_N50
\c_counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~109_sumout\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => c_counter(16));

-- Location: MLABCELL_X34_Y52_N51
\Add0~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~105_sumout\ = SUM(( c_counter(17) ) + ( GND ) + ( \Add0~110\ ))
-- \Add0~106\ = CARRY(( c_counter(17) ) + ( GND ) + ( \Add0~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_c_counter(17),
	cin => \Add0~110\,
	sumout => \Add0~105_sumout\,
	cout => \Add0~106\);

-- Location: FF_X34_Y52_N53
\c_counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~105_sumout\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => c_counter(17));

-- Location: MLABCELL_X34_Y52_N54
\Add0~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~101_sumout\ = SUM(( c_counter(18) ) + ( GND ) + ( \Add0~106\ ))
-- \Add0~102\ = CARRY(( c_counter(18) ) + ( GND ) + ( \Add0~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_c_counter(18),
	cin => \Add0~106\,
	sumout => \Add0~101_sumout\,
	cout => \Add0~102\);

-- Location: FF_X34_Y52_N56
\c_counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~101_sumout\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => c_counter(18));

-- Location: MLABCELL_X34_Y52_N57
\Add0~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~97_sumout\ = SUM(( c_counter(19) ) + ( GND ) + ( \Add0~102\ ))
-- \Add0~98\ = CARRY(( c_counter(19) ) + ( GND ) + ( \Add0~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_c_counter(19),
	cin => \Add0~102\,
	sumout => \Add0~97_sumout\,
	cout => \Add0~98\);

-- Location: FF_X34_Y52_N59
\c_counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~97_sumout\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => c_counter(19));

-- Location: LABCELL_X33_Y52_N42
\Equal0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = ( !c_counter(16) & ( !c_counter(14) & ( (!c_counter(17) & (!c_counter(18) & (!c_counter(15) & !c_counter(19)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_c_counter(17),
	datab => ALT_INV_c_counter(18),
	datac => ALT_INV_c_counter(15),
	datad => ALT_INV_c_counter(19),
	datae => ALT_INV_c_counter(16),
	dataf => ALT_INV_c_counter(14),
	combout => \Equal0~4_combout\);

-- Location: MLABCELL_X34_Y51_N0
\Add0~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~93_sumout\ = SUM(( c_counter(20) ) + ( GND ) + ( \Add0~98\ ))
-- \Add0~94\ = CARRY(( c_counter(20) ) + ( GND ) + ( \Add0~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_c_counter(20),
	cin => \Add0~98\,
	sumout => \Add0~93_sumout\,
	cout => \Add0~94\);

-- Location: FF_X34_Y51_N2
\c_counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~93_sumout\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => c_counter(20));

-- Location: MLABCELL_X34_Y51_N3
\Add0~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~89_sumout\ = SUM(( c_counter(21) ) + ( GND ) + ( \Add0~94\ ))
-- \Add0~90\ = CARRY(( c_counter(21) ) + ( GND ) + ( \Add0~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_c_counter(21),
	cin => \Add0~94\,
	sumout => \Add0~89_sumout\,
	cout => \Add0~90\);

-- Location: FF_X34_Y51_N5
\c_counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~89_sumout\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => c_counter(21));

-- Location: MLABCELL_X34_Y51_N6
\Add0~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~85_sumout\ = SUM(( c_counter(22) ) + ( GND ) + ( \Add0~90\ ))
-- \Add0~86\ = CARRY(( c_counter(22) ) + ( GND ) + ( \Add0~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_c_counter(22),
	cin => \Add0~90\,
	sumout => \Add0~85_sumout\,
	cout => \Add0~86\);

-- Location: FF_X34_Y51_N7
\c_counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~85_sumout\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => c_counter(22));

-- Location: MLABCELL_X34_Y51_N9
\Add0~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~81_sumout\ = SUM(( c_counter(23) ) + ( GND ) + ( \Add0~86\ ))
-- \Add0~82\ = CARRY(( c_counter(23) ) + ( GND ) + ( \Add0~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_c_counter(23),
	cin => \Add0~86\,
	sumout => \Add0~81_sumout\,
	cout => \Add0~82\);

-- Location: FF_X34_Y51_N11
\c_counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~81_sumout\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => c_counter(23));

-- Location: MLABCELL_X34_Y51_N12
\Add0~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~77_sumout\ = SUM(( c_counter(24) ) + ( GND ) + ( \Add0~82\ ))
-- \Add0~78\ = CARRY(( c_counter(24) ) + ( GND ) + ( \Add0~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_c_counter(24),
	cin => \Add0~82\,
	sumout => \Add0~77_sumout\,
	cout => \Add0~78\);

-- Location: FF_X34_Y51_N14
\c_counter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~77_sumout\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => c_counter(24));

-- Location: MLABCELL_X34_Y51_N15
\Add0~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~73_sumout\ = SUM(( c_counter(25) ) + ( GND ) + ( \Add0~78\ ))
-- \Add0~74\ = CARRY(( c_counter(25) ) + ( GND ) + ( \Add0~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_c_counter(25),
	cin => \Add0~78\,
	sumout => \Add0~73_sumout\,
	cout => \Add0~74\);

-- Location: FF_X34_Y51_N17
\c_counter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~73_sumout\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => c_counter(25));

-- Location: MLABCELL_X34_Y51_N54
\Equal0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = ( !c_counter(22) & ( !c_counter(23) & ( (!c_counter(20) & (!c_counter(24) & (!c_counter(21) & !c_counter(25)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_c_counter(20),
	datab => ALT_INV_c_counter(24),
	datac => ALT_INV_c_counter(21),
	datad => ALT_INV_c_counter(25),
	datae => ALT_INV_c_counter(22),
	dataf => ALT_INV_c_counter(23),
	combout => \Equal0~3_combout\);

-- Location: MLABCELL_X34_Y51_N18
\Add0~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~69_sumout\ = SUM(( c_counter(26) ) + ( GND ) + ( \Add0~74\ ))
-- \Add0~70\ = CARRY(( c_counter(26) ) + ( GND ) + ( \Add0~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_c_counter(26),
	cin => \Add0~74\,
	sumout => \Add0~69_sumout\,
	cout => \Add0~70\);

-- Location: FF_X34_Y51_N20
\c_counter[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~69_sumout\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => c_counter(26));

-- Location: MLABCELL_X34_Y51_N21
\Add0~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~65_sumout\ = SUM(( c_counter(27) ) + ( GND ) + ( \Add0~70\ ))
-- \Add0~66\ = CARRY(( c_counter(27) ) + ( GND ) + ( \Add0~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_c_counter(27),
	cin => \Add0~70\,
	sumout => \Add0~65_sumout\,
	cout => \Add0~66\);

-- Location: FF_X34_Y51_N23
\c_counter[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~65_sumout\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => c_counter(27));

-- Location: MLABCELL_X34_Y51_N24
\Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~61_sumout\ = SUM(( c_counter(28) ) + ( GND ) + ( \Add0~66\ ))
-- \Add0~62\ = CARRY(( c_counter(28) ) + ( GND ) + ( \Add0~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_c_counter(28),
	cin => \Add0~66\,
	sumout => \Add0~61_sumout\,
	cout => \Add0~62\);

-- Location: FF_X34_Y51_N26
\c_counter[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~61_sumout\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => c_counter(28));

-- Location: MLABCELL_X34_Y51_N27
\Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~57_sumout\ = SUM(( c_counter(29) ) + ( GND ) + ( \Add0~62\ ))
-- \Add0~58\ = CARRY(( c_counter(29) ) + ( GND ) + ( \Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_c_counter(29),
	cin => \Add0~62\,
	sumout => \Add0~57_sumout\,
	cout => \Add0~58\);

-- Location: FF_X34_Y51_N28
\c_counter[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~57_sumout\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => c_counter(29));

-- Location: MLABCELL_X34_Y51_N30
\Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~53_sumout\ = SUM(( c_counter(30) ) + ( GND ) + ( \Add0~58\ ))
-- \Add0~54\ = CARRY(( c_counter(30) ) + ( GND ) + ( \Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_c_counter(30),
	cin => \Add0~58\,
	sumout => \Add0~53_sumout\,
	cout => \Add0~54\);

-- Location: FF_X34_Y51_N32
\c_counter[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~53_sumout\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => c_counter(30));

-- Location: MLABCELL_X34_Y51_N33
\Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~49_sumout\ = SUM(( c_counter(31) ) + ( GND ) + ( \Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_c_counter(31),
	cin => \Add0~54\,
	sumout => \Add0~49_sumout\);

-- Location: FF_X34_Y51_N35
\c_counter[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~49_sumout\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => c_counter(31));

-- Location: MLABCELL_X34_Y51_N48
\Equal0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = ( !c_counter(27) & ( !c_counter(26) & ( (!c_counter(31) & (!c_counter(29) & (!c_counter(28) & !c_counter(30)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_c_counter(31),
	datab => ALT_INV_c_counter(29),
	datac => ALT_INV_c_counter(28),
	datad => ALT_INV_c_counter(30),
	datae => ALT_INV_c_counter(27),
	dataf => ALT_INV_c_counter(26),
	combout => \Equal0~2_combout\);

-- Location: LABCELL_X33_Y52_N6
\Equal0~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~6_combout\ = ( \Equal0~3_combout\ & ( \Equal0~2_combout\ & ( (\Equal0~1_combout\ & (\Equal0~5_combout\ & (\Equal0~0_combout\ & \Equal0~4_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~1_combout\,
	datab => \ALT_INV_Equal0~5_combout\,
	datac => \ALT_INV_Equal0~0_combout\,
	datad => \ALT_INV_Equal0~4_combout\,
	datae => \ALT_INV_Equal0~3_combout\,
	dataf => \ALT_INV_Equal0~2_combout\,
	combout => \Equal0~6_combout\);

-- Location: LABCELL_X33_Y49_N9
\vga_h|clk_enable[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \vga_h|clk_enable[0]~feeder_combout\ = ( \Equal0~6_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Equal0~6_combout\,
	combout => \vga_h|clk_enable[0]~feeder_combout\);

-- Location: FF_X33_Y49_N11
\vga_h|clk_enable[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \vga_h|clk_enable[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_h|clk_enable\(0));

-- Location: FF_X33_Y33_N22
\vga_h|x_c[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \vga_h|Add1~17_sumout\,
	sclr => \vga_h|LessThan0~4_combout\,
	ena => \vga_h|clk_enable\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_h|x_c\(7));

-- Location: LABCELL_X33_Y33_N0
\vga_h|Add1~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \vga_h|Add1~37_sumout\ = SUM(( \vga_h|x_c\(0) ) + ( VCC ) + ( !VCC ))
-- \vga_h|Add1~38\ = CARRY(( \vga_h|x_c\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \vga_h|ALT_INV_x_c\(0),
	cin => GND,
	sumout => \vga_h|Add1~37_sumout\,
	cout => \vga_h|Add1~38\);

-- Location: FF_X33_Y33_N1
\vga_h|x_c[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \vga_h|Add1~37_sumout\,
	sclr => \vga_h|LessThan0~4_combout\,
	ena => \vga_h|clk_enable\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_h|x_c\(0));

-- Location: LABCELL_X33_Y33_N3
\vga_h|Add1~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \vga_h|Add1~33_sumout\ = SUM(( \vga_h|x_c\(1) ) + ( GND ) + ( \vga_h|Add1~38\ ))
-- \vga_h|Add1~34\ = CARRY(( \vga_h|x_c\(1) ) + ( GND ) + ( \vga_h|Add1~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \vga_h|ALT_INV_x_c\(1),
	cin => \vga_h|Add1~38\,
	sumout => \vga_h|Add1~33_sumout\,
	cout => \vga_h|Add1~34\);

-- Location: FF_X33_Y33_N4
\vga_h|x_c[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \vga_h|Add1~33_sumout\,
	sclr => \vga_h|LessThan0~4_combout\,
	ena => \vga_h|clk_enable\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_h|x_c\(1));

-- Location: LABCELL_X33_Y33_N6
\vga_h|Add1~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \vga_h|Add1~29_sumout\ = SUM(( \vga_h|x_c\(2) ) + ( GND ) + ( \vga_h|Add1~34\ ))
-- \vga_h|Add1~30\ = CARRY(( \vga_h|x_c\(2) ) + ( GND ) + ( \vga_h|Add1~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \vga_h|ALT_INV_x_c\(2),
	cin => \vga_h|Add1~34\,
	sumout => \vga_h|Add1~29_sumout\,
	cout => \vga_h|Add1~30\);

-- Location: FF_X33_Y33_N7
\vga_h|x_c[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \vga_h|Add1~29_sumout\,
	sclr => \vga_h|LessThan0~4_combout\,
	ena => \vga_h|clk_enable\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_h|x_c\(2));

-- Location: LABCELL_X33_Y33_N9
\vga_h|Add1~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \vga_h|Add1~25_sumout\ = SUM(( \vga_h|x_c\(3) ) + ( GND ) + ( \vga_h|Add1~30\ ))
-- \vga_h|Add1~26\ = CARRY(( \vga_h|x_c\(3) ) + ( GND ) + ( \vga_h|Add1~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \vga_h|ALT_INV_x_c\(3),
	cin => \vga_h|Add1~30\,
	sumout => \vga_h|Add1~25_sumout\,
	cout => \vga_h|Add1~26\);

-- Location: FF_X33_Y33_N10
\vga_h|x_c[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \vga_h|Add1~25_sumout\,
	sclr => \vga_h|LessThan0~4_combout\,
	ena => \vga_h|clk_enable\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_h|x_c\(3));

-- Location: LABCELL_X33_Y33_N12
\vga_h|Add1~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \vga_h|Add1~21_sumout\ = SUM(( \vga_h|x_c\(4) ) + ( GND ) + ( \vga_h|Add1~26\ ))
-- \vga_h|Add1~22\ = CARRY(( \vga_h|x_c\(4) ) + ( GND ) + ( \vga_h|Add1~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \vga_h|ALT_INV_x_c\(4),
	cin => \vga_h|Add1~26\,
	sumout => \vga_h|Add1~21_sumout\,
	cout => \vga_h|Add1~22\);

-- Location: FF_X33_Y33_N13
\vga_h|x_c[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \vga_h|Add1~21_sumout\,
	sclr => \vga_h|LessThan0~4_combout\,
	ena => \vga_h|clk_enable\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_h|x_c\(4));

-- Location: LABCELL_X33_Y33_N15
\vga_h|Add1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \vga_h|Add1~5_sumout\ = SUM(( \vga_h|x_c\(5) ) + ( GND ) + ( \vga_h|Add1~22\ ))
-- \vga_h|Add1~6\ = CARRY(( \vga_h|x_c\(5) ) + ( GND ) + ( \vga_h|Add1~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \vga_h|ALT_INV_x_c\(5),
	cin => \vga_h|Add1~22\,
	sumout => \vga_h|Add1~5_sumout\,
	cout => \vga_h|Add1~6\);

-- Location: FF_X33_Y33_N16
\vga_h|x_c[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \vga_h|Add1~5_sumout\,
	sclr => \vga_h|LessThan0~4_combout\,
	ena => \vga_h|clk_enable\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_h|x_c\(5));

-- Location: LABCELL_X33_Y33_N18
\vga_h|Add1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \vga_h|Add1~9_sumout\ = SUM(( \vga_h|x_c\(6) ) + ( GND ) + ( \vga_h|Add1~6\ ))
-- \vga_h|Add1~10\ = CARRY(( \vga_h|x_c\(6) ) + ( GND ) + ( \vga_h|Add1~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \vga_h|ALT_INV_x_c\(6),
	cin => \vga_h|Add1~6\,
	sumout => \vga_h|Add1~9_sumout\,
	cout => \vga_h|Add1~10\);

-- Location: LABCELL_X33_Y33_N21
\vga_h|Add1~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \vga_h|Add1~17_sumout\ = SUM(( \vga_h|x_c\(7) ) + ( GND ) + ( \vga_h|Add1~10\ ))
-- \vga_h|Add1~18\ = CARRY(( \vga_h|x_c\(7) ) + ( GND ) + ( \vga_h|Add1~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \vga_h|ALT_INV_x_c\(7),
	cin => \vga_h|Add1~10\,
	sumout => \vga_h|Add1~17_sumout\,
	cout => \vga_h|Add1~18\);

-- Location: FF_X33_Y33_N23
\vga_h|x_c[7]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \vga_h|Add1~17_sumout\,
	sclr => \vga_h|LessThan0~4_combout\,
	ena => \vga_h|clk_enable\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_h|x_c[7]~DUPLICATE_q\);

-- Location: LABCELL_X33_Y33_N51
\vga_h|LessThan0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \vga_h|LessThan0~1_combout\ = ( !\vga_h|x_c\(5) & ( (!\vga_h|x_c\(6) & !\vga_h|x_c[7]~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \vga_h|ALT_INV_x_c\(6),
	datad => \vga_h|ALT_INV_x_c[7]~DUPLICATE_q\,
	dataf => \vga_h|ALT_INV_x_c\(5),
	combout => \vga_h|LessThan0~1_combout\);

-- Location: LABCELL_X33_Y33_N24
\vga_h|Add1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \vga_h|Add1~13_sumout\ = SUM(( \vga_h|x_c\(8) ) + ( GND ) + ( \vga_h|Add1~18\ ))
-- \vga_h|Add1~14\ = CARRY(( \vga_h|x_c\(8) ) + ( GND ) + ( \vga_h|Add1~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \vga_h|ALT_INV_x_c\(8),
	cin => \vga_h|Add1~18\,
	sumout => \vga_h|Add1~13_sumout\,
	cout => \vga_h|Add1~14\);

-- Location: FF_X33_Y33_N25
\vga_h|x_c[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \vga_h|Add1~13_sumout\,
	sclr => \vga_h|LessThan0~4_combout\,
	ena => \vga_h|clk_enable\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_h|x_c\(8));

-- Location: LABCELL_X33_Y33_N27
\vga_h|Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \vga_h|Add1~1_sumout\ = SUM(( \vga_h|x_c\(9) ) + ( GND ) + ( \vga_h|Add1~14\ ))
-- \vga_h|Add1~2\ = CARRY(( \vga_h|x_c\(9) ) + ( GND ) + ( \vga_h|Add1~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \vga_h|ALT_INV_x_c\(9),
	cin => \vga_h|Add1~14\,
	sumout => \vga_h|Add1~1_sumout\,
	cout => \vga_h|Add1~2\);

-- Location: FF_X33_Y33_N28
\vga_h|x_c[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \vga_h|Add1~1_sumout\,
	sclr => \vga_h|LessThan0~4_combout\,
	ena => \vga_h|clk_enable\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_h|x_c\(9));

-- Location: LABCELL_X33_Y33_N30
\vga_h|Add1~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \vga_h|Add1~61_sumout\ = SUM(( \vga_h|x_c\(10) ) + ( GND ) + ( \vga_h|Add1~2\ ))
-- \vga_h|Add1~62\ = CARRY(( \vga_h|x_c\(10) ) + ( GND ) + ( \vga_h|Add1~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \vga_h|ALT_INV_x_c\(10),
	cin => \vga_h|Add1~2\,
	sumout => \vga_h|Add1~61_sumout\,
	cout => \vga_h|Add1~62\);

-- Location: FF_X33_Y33_N31
\vga_h|x_c[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \vga_h|Add1~61_sumout\,
	sclr => \vga_h|LessThan0~4_combout\,
	ena => \vga_h|clk_enable\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_h|x_c\(10));

-- Location: LABCELL_X33_Y33_N33
\vga_h|Add1~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \vga_h|Add1~41_sumout\ = SUM(( \vga_h|x_c\(11) ) + ( GND ) + ( \vga_h|Add1~62\ ))
-- \vga_h|Add1~42\ = CARRY(( \vga_h|x_c\(11) ) + ( GND ) + ( \vga_h|Add1~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \vga_h|ALT_INV_x_c\(11),
	cin => \vga_h|Add1~62\,
	sumout => \vga_h|Add1~41_sumout\,
	cout => \vga_h|Add1~42\);

-- Location: FF_X33_Y33_N35
\vga_h|x_c[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \vga_h|Add1~41_sumout\,
	sclr => \vga_h|LessThan0~4_combout\,
	ena => \vga_h|clk_enable\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_h|x_c\(11));

-- Location: MLABCELL_X34_Y33_N48
\vga_h|LessThan0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \vga_h|LessThan0~2_combout\ = ( \vga_h|x_c\(3) & ( (\vga_h|x_c\(4) & (\vga_h|x_c\(0) & (\vga_h|x_c\(2) & \vga_h|x_c\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000010000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \vga_h|ALT_INV_x_c\(4),
	datab => \vga_h|ALT_INV_x_c\(0),
	datac => \vga_h|ALT_INV_x_c\(2),
	datad => \vga_h|ALT_INV_x_c\(1),
	dataf => \vga_h|ALT_INV_x_c\(3),
	combout => \vga_h|LessThan0~2_combout\);

-- Location: LABCELL_X33_Y33_N36
\vga_h|Add1~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \vga_h|Add1~45_sumout\ = SUM(( \vga_h|x_c\(12) ) + ( GND ) + ( \vga_h|Add1~42\ ))
-- \vga_h|Add1~46\ = CARRY(( \vga_h|x_c\(12) ) + ( GND ) + ( \vga_h|Add1~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \vga_h|ALT_INV_x_c\(12),
	cin => \vga_h|Add1~42\,
	sumout => \vga_h|Add1~45_sumout\,
	cout => \vga_h|Add1~46\);

-- Location: FF_X33_Y33_N38
\vga_h|x_c[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \vga_h|Add1~45_sumout\,
	sclr => \vga_h|LessThan0~4_combout\,
	ena => \vga_h|clk_enable\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_h|x_c\(12));

-- Location: LABCELL_X33_Y33_N39
\vga_h|Add1~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \vga_h|Add1~57_sumout\ = SUM(( \vga_h|x_c\(13) ) + ( GND ) + ( \vga_h|Add1~46\ ))
-- \vga_h|Add1~58\ = CARRY(( \vga_h|x_c\(13) ) + ( GND ) + ( \vga_h|Add1~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \vga_h|ALT_INV_x_c\(13),
	cin => \vga_h|Add1~46\,
	sumout => \vga_h|Add1~57_sumout\,
	cout => \vga_h|Add1~58\);

-- Location: FF_X33_Y33_N41
\vga_h|x_c[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \vga_h|Add1~57_sumout\,
	sclr => \vga_h|LessThan0~4_combout\,
	ena => \vga_h|clk_enable\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_h|x_c\(13));

-- Location: LABCELL_X33_Y33_N42
\vga_h|Add1~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \vga_h|Add1~53_sumout\ = SUM(( \vga_h|x_c\(14) ) + ( GND ) + ( \vga_h|Add1~58\ ))
-- \vga_h|Add1~54\ = CARRY(( \vga_h|x_c\(14) ) + ( GND ) + ( \vga_h|Add1~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \vga_h|ALT_INV_x_c\(14),
	cin => \vga_h|Add1~58\,
	sumout => \vga_h|Add1~53_sumout\,
	cout => \vga_h|Add1~54\);

-- Location: FF_X33_Y33_N44
\vga_h|x_c[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \vga_h|Add1~53_sumout\,
	sclr => \vga_h|LessThan0~4_combout\,
	ena => \vga_h|clk_enable\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_h|x_c\(14));

-- Location: LABCELL_X33_Y33_N45
\vga_h|Add1~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \vga_h|Add1~49_sumout\ = SUM(( \vga_h|x_c\(15) ) + ( GND ) + ( \vga_h|Add1~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \vga_h|ALT_INV_x_c\(15),
	cin => \vga_h|Add1~54\,
	sumout => \vga_h|Add1~49_sumout\);

-- Location: FF_X33_Y33_N47
\vga_h|x_c[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \vga_h|Add1~49_sumout\,
	sclr => \vga_h|LessThan0~4_combout\,
	ena => \vga_h|clk_enable\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_h|x_c\(15));

-- Location: LABCELL_X33_Y33_N48
\vga_h|LessThan0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \vga_h|LessThan0~3_combout\ = ( !\vga_h|x_c\(14) & ( (!\vga_h|x_c\(12) & (!\vga_h|x_c\(13) & (!\vga_h|x_c\(10) & !\vga_h|x_c\(15)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \vga_h|ALT_INV_x_c\(12),
	datab => \vga_h|ALT_INV_x_c\(13),
	datac => \vga_h|ALT_INV_x_c\(10),
	datad => \vga_h|ALT_INV_x_c\(15),
	dataf => \vga_h|ALT_INV_x_c\(14),
	combout => \vga_h|LessThan0~3_combout\);

-- Location: LABCELL_X33_Y33_N54
\vga_h|LessThan0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \vga_h|LessThan0~4_combout\ = ( \vga_h|LessThan0~2_combout\ & ( \vga_h|LessThan0~3_combout\ & ( ((\vga_h|x_c\(8) & \vga_h|x_c\(9))) # (\vga_h|x_c\(11)) ) ) ) # ( !\vga_h|LessThan0~2_combout\ & ( \vga_h|LessThan0~3_combout\ & ( 
-- ((!\vga_h|LessThan0~1_combout\ & (\vga_h|x_c\(8) & \vga_h|x_c\(9)))) # (\vga_h|x_c\(11)) ) ) ) # ( \vga_h|LessThan0~2_combout\ & ( !\vga_h|LessThan0~3_combout\ ) ) # ( !\vga_h|LessThan0~2_combout\ & ( !\vga_h|LessThan0~3_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100001111001011110000111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \vga_h|ALT_INV_LessThan0~1_combout\,
	datab => \vga_h|ALT_INV_x_c\(8),
	datac => \vga_h|ALT_INV_x_c\(11),
	datad => \vga_h|ALT_INV_x_c\(9),
	datae => \vga_h|ALT_INV_LessThan0~2_combout\,
	dataf => \vga_h|ALT_INV_LessThan0~3_combout\,
	combout => \vga_h|LessThan0~4_combout\);

-- Location: FF_X33_Y33_N19
\vga_h|x_c[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \vga_h|Add1~9_sumout\,
	sclr => \vga_h|LessThan0~4_combout\,
	ena => \vga_h|clk_enable\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_h|x_c\(6));

-- Location: FF_X33_Y33_N20
\vga_h|x_c[6]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \vga_h|Add1~9_sumout\,
	sclr => \vga_h|LessThan0~4_combout\,
	ena => \vga_h|clk_enable\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_h|x_c[6]~DUPLICATE_q\);

-- Location: MLABCELL_X34_Y33_N30
\LessThan0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = ( \vga_h|x_c\(5) & ( (!\vga_h|x_c[6]~DUPLICATE_q\ & (!\vga_h|x_c\(8) & (!\vga_h|x_c\(7) & !\vga_h|x_c\(9)))) ) ) # ( !\vga_h|x_c\(5) & ( (!\vga_h|x_c\(8) & (!\vga_h|x_c\(7) & !\vga_h|x_c\(9))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000000000110000000000000010000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \vga_h|ALT_INV_x_c[6]~DUPLICATE_q\,
	datab => \vga_h|ALT_INV_x_c\(8),
	datac => \vga_h|ALT_INV_x_c\(7),
	datad => \vga_h|ALT_INV_x_c\(9),
	dataf => \vga_h|ALT_INV_x_c\(5),
	combout => \LessThan0~0_combout\);

-- Location: LABCELL_X31_Y36_N0
\vga_v|Add1~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \vga_v|Add1~37_sumout\ = SUM(( \vga_v|y_c\(0) ) + ( VCC ) + ( !VCC ))
-- \vga_v|Add1~38\ = CARRY(( \vga_v|y_c\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \vga_v|ALT_INV_y_c\(0),
	cin => GND,
	sumout => \vga_v|Add1~37_sumout\,
	cout => \vga_v|Add1~38\);

-- Location: LABCELL_X31_Y36_N3
\vga_v|Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \vga_v|Add1~1_sumout\ = SUM(( \vga_v|y_c\(1) ) + ( GND ) + ( \vga_v|Add1~38\ ))
-- \vga_v|Add1~2\ = CARRY(( \vga_v|y_c\(1) ) + ( GND ) + ( \vga_v|Add1~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \vga_v|ALT_INV_y_c\(1),
	cin => \vga_v|Add1~38\,
	sumout => \vga_v|Add1~1_sumout\,
	cout => \vga_v|Add1~2\);

-- Location: LABCELL_X31_Y36_N6
\vga_v|Add1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \vga_v|Add1~9_sumout\ = SUM(( \vga_v|y_c\(2) ) + ( GND ) + ( \vga_v|Add1~2\ ))
-- \vga_v|Add1~10\ = CARRY(( \vga_v|y_c\(2) ) + ( GND ) + ( \vga_v|Add1~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \vga_v|ALT_INV_y_c\(2),
	cin => \vga_v|Add1~2\,
	sumout => \vga_v|Add1~9_sumout\,
	cout => \vga_v|Add1~10\);

-- Location: FF_X33_Y33_N59
\vga_h|v_enable\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \vga_h|LessThan0~4_combout\,
	sload => VCC,
	ena => \vga_h|clk_enable\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_h|v_enable~q\);

-- Location: LABCELL_X31_Y36_N51
\vga_v|y_c[9]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \vga_v|y_c[9]~0_combout\ = ( \vga_h|clk_enable\(0) & ( \vga_h|v_enable~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \vga_h|ALT_INV_v_enable~q\,
	dataf => \vga_h|ALT_INV_clk_enable\(0),
	combout => \vga_v|y_c[9]~0_combout\);

-- Location: FF_X31_Y36_N7
\vga_v|y_c[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \vga_v|Add1~9_sumout\,
	sclr => \vga_v|LessThan0~2_combout\,
	ena => \vga_v|y_c[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_v|y_c\(2));

-- Location: LABCELL_X31_Y36_N9
\vga_v|Add1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \vga_v|Add1~13_sumout\ = SUM(( \vga_v|y_c\(3) ) + ( GND ) + ( \vga_v|Add1~10\ ))
-- \vga_v|Add1~14\ = CARRY(( \vga_v|y_c\(3) ) + ( GND ) + ( \vga_v|Add1~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \vga_v|ALT_INV_y_c\(3),
	cin => \vga_v|Add1~10\,
	sumout => \vga_v|Add1~13_sumout\,
	cout => \vga_v|Add1~14\);

-- Location: FF_X31_Y36_N11
\vga_v|y_c[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \vga_v|Add1~13_sumout\,
	sclr => \vga_v|LessThan0~2_combout\,
	ena => \vga_v|y_c[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_v|y_c\(3));

-- Location: LABCELL_X31_Y36_N12
\vga_v|Add1~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \vga_v|Add1~21_sumout\ = SUM(( \vga_v|y_c\(4) ) + ( GND ) + ( \vga_v|Add1~14\ ))
-- \vga_v|Add1~22\ = CARRY(( \vga_v|y_c\(4) ) + ( GND ) + ( \vga_v|Add1~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \vga_v|ALT_INV_y_c\(4),
	cin => \vga_v|Add1~14\,
	sumout => \vga_v|Add1~21_sumout\,
	cout => \vga_v|Add1~22\);

-- Location: FF_X31_Y36_N13
\vga_v|y_c[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \vga_v|Add1~21_sumout\,
	sclr => \vga_v|LessThan0~2_combout\,
	ena => \vga_v|y_c[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_v|y_c\(4));

-- Location: LABCELL_X31_Y36_N15
\vga_v|Add1~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \vga_v|Add1~17_sumout\ = SUM(( \vga_v|y_c\(5) ) + ( GND ) + ( \vga_v|Add1~22\ ))
-- \vga_v|Add1~18\ = CARRY(( \vga_v|y_c\(5) ) + ( GND ) + ( \vga_v|Add1~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \vga_v|ALT_INV_y_c\(5),
	cin => \vga_v|Add1~22\,
	sumout => \vga_v|Add1~17_sumout\,
	cout => \vga_v|Add1~18\);

-- Location: FF_X31_Y36_N17
\vga_v|y_c[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \vga_v|Add1~17_sumout\,
	sclr => \vga_v|LessThan0~2_combout\,
	ena => \vga_v|y_c[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_v|y_c\(5));

-- Location: LABCELL_X31_Y36_N18
\vga_v|Add1~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \vga_v|Add1~33_sumout\ = SUM(( \vga_v|y_c\(6) ) + ( GND ) + ( \vga_v|Add1~18\ ))
-- \vga_v|Add1~34\ = CARRY(( \vga_v|y_c\(6) ) + ( GND ) + ( \vga_v|Add1~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \vga_v|ALT_INV_y_c\(6),
	cin => \vga_v|Add1~18\,
	sumout => \vga_v|Add1~33_sumout\,
	cout => \vga_v|Add1~34\);

-- Location: FF_X31_Y36_N19
\vga_v|y_c[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \vga_v|Add1~33_sumout\,
	sclr => \vga_v|LessThan0~2_combout\,
	ena => \vga_v|y_c[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_v|y_c\(6));

-- Location: LABCELL_X31_Y36_N21
\vga_v|Add1~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \vga_v|Add1~29_sumout\ = SUM(( \vga_v|y_c\(7) ) + ( GND ) + ( \vga_v|Add1~34\ ))
-- \vga_v|Add1~30\ = CARRY(( \vga_v|y_c\(7) ) + ( GND ) + ( \vga_v|Add1~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \vga_v|ALT_INV_y_c\(7),
	cin => \vga_v|Add1~34\,
	sumout => \vga_v|Add1~29_sumout\,
	cout => \vga_v|Add1~30\);

-- Location: FF_X31_Y36_N23
\vga_v|y_c[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \vga_v|Add1~29_sumout\,
	sclr => \vga_v|LessThan0~2_combout\,
	ena => \vga_v|y_c[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_v|y_c\(7));

-- Location: LABCELL_X31_Y36_N24
\vga_v|Add1~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \vga_v|Add1~25_sumout\ = SUM(( \vga_v|y_c\(8) ) + ( GND ) + ( \vga_v|Add1~30\ ))
-- \vga_v|Add1~26\ = CARRY(( \vga_v|y_c\(8) ) + ( GND ) + ( \vga_v|Add1~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \vga_v|ALT_INV_y_c\(8),
	cin => \vga_v|Add1~30\,
	sumout => \vga_v|Add1~25_sumout\,
	cout => \vga_v|Add1~26\);

-- Location: FF_X31_Y36_N26
\vga_v|y_c[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \vga_v|Add1~25_sumout\,
	sclr => \vga_v|LessThan0~2_combout\,
	ena => \vga_v|y_c[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_v|y_c\(8));

-- Location: LABCELL_X31_Y36_N27
\vga_v|Add1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \vga_v|Add1~5_sumout\ = SUM(( \vga_v|y_c\(9) ) + ( GND ) + ( \vga_v|Add1~26\ ))
-- \vga_v|Add1~6\ = CARRY(( \vga_v|y_c\(9) ) + ( GND ) + ( \vga_v|Add1~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \vga_v|ALT_INV_y_c\(9),
	cin => \vga_v|Add1~26\,
	sumout => \vga_v|Add1~5_sumout\,
	cout => \vga_v|Add1~6\);

-- Location: FF_X31_Y36_N28
\vga_v|y_c[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \vga_v|Add1~5_sumout\,
	sclr => \vga_v|LessThan0~2_combout\,
	ena => \vga_v|y_c[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_v|y_c\(9));

-- Location: FF_X31_Y36_N20
\vga_v|y_c[6]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \vga_v|Add1~33_sumout\,
	sclr => \vga_v|LessThan0~2_combout\,
	ena => \vga_v|y_c[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_v|y_c[6]~DUPLICATE_q\);

-- Location: LABCELL_X31_Y36_N48
\vga_v|LessThan0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \vga_v|LessThan0~0_combout\ = ( !\vga_v|y_c\(5) & ( (!\vga_v|y_c[6]~DUPLICATE_q\ & (!\vga_v|y_c\(4) & (!\vga_v|y_c\(8) & !\vga_v|y_c\(7)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \vga_v|ALT_INV_y_c[6]~DUPLICATE_q\,
	datab => \vga_v|ALT_INV_y_c\(4),
	datac => \vga_v|ALT_INV_y_c\(8),
	datad => \vga_v|ALT_INV_y_c\(7),
	dataf => \vga_v|ALT_INV_y_c\(5),
	combout => \vga_v|LessThan0~0_combout\);

-- Location: LABCELL_X31_Y36_N30
\vga_v|Add1~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \vga_v|Add1~45_sumout\ = SUM(( \vga_v|y_c\(10) ) + ( GND ) + ( \vga_v|Add1~6\ ))
-- \vga_v|Add1~46\ = CARRY(( \vga_v|y_c\(10) ) + ( GND ) + ( \vga_v|Add1~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \vga_v|ALT_INV_y_c\(10),
	cin => \vga_v|Add1~6\,
	sumout => \vga_v|Add1~45_sumout\,
	cout => \vga_v|Add1~46\);

-- Location: FF_X31_Y36_N32
\vga_v|y_c[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \vga_v|Add1~45_sumout\,
	sclr => \vga_v|LessThan0~2_combout\,
	ena => \vga_v|y_c[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_v|y_c\(10));

-- Location: LABCELL_X31_Y36_N33
\vga_v|Add1~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \vga_v|Add1~49_sumout\ = SUM(( \vga_v|y_c\(11) ) + ( GND ) + ( \vga_v|Add1~46\ ))
-- \vga_v|Add1~50\ = CARRY(( \vga_v|y_c\(11) ) + ( GND ) + ( \vga_v|Add1~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \vga_v|ALT_INV_y_c\(11),
	cin => \vga_v|Add1~46\,
	sumout => \vga_v|Add1~49_sumout\,
	cout => \vga_v|Add1~50\);

-- Location: FF_X31_Y36_N35
\vga_v|y_c[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \vga_v|Add1~49_sumout\,
	sclr => \vga_v|LessThan0~2_combout\,
	ena => \vga_v|y_c[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_v|y_c\(11));

-- Location: LABCELL_X31_Y36_N36
\vga_v|Add1~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \vga_v|Add1~53_sumout\ = SUM(( \vga_v|y_c\(12) ) + ( GND ) + ( \vga_v|Add1~50\ ))
-- \vga_v|Add1~54\ = CARRY(( \vga_v|y_c\(12) ) + ( GND ) + ( \vga_v|Add1~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \vga_v|ALT_INV_y_c\(12),
	cin => \vga_v|Add1~50\,
	sumout => \vga_v|Add1~53_sumout\,
	cout => \vga_v|Add1~54\);

-- Location: FF_X31_Y36_N37
\vga_v|y_c[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \vga_v|Add1~53_sumout\,
	sclr => \vga_v|LessThan0~2_combout\,
	ena => \vga_v|y_c[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_v|y_c\(12));

-- Location: LABCELL_X31_Y36_N39
\vga_v|Add1~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \vga_v|Add1~57_sumout\ = SUM(( \vga_v|y_c\(13) ) + ( GND ) + ( \vga_v|Add1~54\ ))
-- \vga_v|Add1~58\ = CARRY(( \vga_v|y_c\(13) ) + ( GND ) + ( \vga_v|Add1~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \vga_v|ALT_INV_y_c\(13),
	cin => \vga_v|Add1~54\,
	sumout => \vga_v|Add1~57_sumout\,
	cout => \vga_v|Add1~58\);

-- Location: FF_X31_Y36_N40
\vga_v|y_c[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \vga_v|Add1~57_sumout\,
	sclr => \vga_v|LessThan0~2_combout\,
	ena => \vga_v|y_c[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_v|y_c\(13));

-- Location: LABCELL_X31_Y36_N42
\vga_v|Add1~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \vga_v|Add1~61_sumout\ = SUM(( \vga_v|y_c\(14) ) + ( GND ) + ( \vga_v|Add1~58\ ))
-- \vga_v|Add1~62\ = CARRY(( \vga_v|y_c\(14) ) + ( GND ) + ( \vga_v|Add1~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \vga_v|ALT_INV_y_c\(14),
	cin => \vga_v|Add1~58\,
	sumout => \vga_v|Add1~61_sumout\,
	cout => \vga_v|Add1~62\);

-- Location: FF_X31_Y36_N44
\vga_v|y_c[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \vga_v|Add1~61_sumout\,
	sclr => \vga_v|LessThan0~2_combout\,
	ena => \vga_v|y_c[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_v|y_c\(14));

-- Location: LABCELL_X31_Y36_N45
\vga_v|Add1~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \vga_v|Add1~41_sumout\ = SUM(( \vga_v|y_c\(15) ) + ( GND ) + ( \vga_v|Add1~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \vga_v|ALT_INV_y_c\(15),
	cin => \vga_v|Add1~62\,
	sumout => \vga_v|Add1~41_sumout\);

-- Location: FF_X31_Y36_N47
\vga_v|y_c[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \vga_v|Add1~41_sumout\,
	sclr => \vga_v|LessThan0~2_combout\,
	ena => \vga_v|y_c[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_v|y_c\(15));

-- Location: LABCELL_X30_Y36_N30
\vga_v|LessThan0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \vga_v|LessThan0~1_combout\ = ( !\vga_v|y_c\(12) & ( (!\vga_v|y_c\(11) & (!\vga_v|y_c\(14) & (!\vga_v|y_c\(10) & !\vga_v|y_c\(13)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \vga_v|ALT_INV_y_c\(11),
	datab => \vga_v|ALT_INV_y_c\(14),
	datac => \vga_v|ALT_INV_y_c\(10),
	datad => \vga_v|ALT_INV_y_c\(13),
	dataf => \vga_v|ALT_INV_y_c\(12),
	combout => \vga_v|LessThan0~1_combout\);

-- Location: LABCELL_X31_Y36_N54
\vga_v|LessThan0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \vga_v|LessThan0~2_combout\ = ( \vga_v|y_c\(15) & ( \vga_v|LessThan0~1_combout\ ) ) # ( !\vga_v|y_c\(15) & ( \vga_v|LessThan0~1_combout\ & ( (\vga_v|y_c\(9) & ((!\vga_v|LessThan0~0_combout\) # ((\vga_v|y_c\(2) & \vga_v|y_c\(3))))) ) ) ) # ( 
-- \vga_v|y_c\(15) & ( !\vga_v|LessThan0~1_combout\ ) ) # ( !\vga_v|y_c\(15) & ( !\vga_v|LessThan0~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100110000001100011111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \vga_v|ALT_INV_y_c\(2),
	datab => \vga_v|ALT_INV_y_c\(9),
	datac => \vga_v|ALT_INV_LessThan0~0_combout\,
	datad => \vga_v|ALT_INV_y_c\(3),
	datae => \vga_v|ALT_INV_y_c\(15),
	dataf => \vga_v|ALT_INV_LessThan0~1_combout\,
	combout => \vga_v|LessThan0~2_combout\);

-- Location: FF_X31_Y36_N2
\vga_v|y_c[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \vga_v|Add1~37_sumout\,
	sclr => \vga_v|LessThan0~2_combout\,
	ena => \vga_v|y_c[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_v|y_c\(0));

-- Location: FF_X31_Y36_N4
\vga_v|y_c[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \vga_v|Add1~1_sumout\,
	sclr => \vga_v|LessThan0~2_combout\,
	ena => \vga_v|y_c[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_v|y_c\(1));

-- Location: LABCELL_X30_Y36_N24
\LessThan4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan4~0_combout\ = (!\vga_v|y_c\(3) & !\vga_v|y_c\(2))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \vga_v|ALT_INV_y_c\(3),
	datad => \vga_v|ALT_INV_y_c\(2),
	combout => \LessThan4~0_combout\);

-- Location: LABCELL_X31_Y30_N36
\LessThan1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan1~0_combout\ = ( \LessThan4~0_combout\ & ( \vga_v|LessThan0~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_LessThan4~0_combout\,
	dataf => \vga_v|ALT_INV_LessThan0~0_combout\,
	combout => \LessThan1~0_combout\);

-- Location: LABCELL_X31_Y28_N33
\LessThan1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan1~1_combout\ = ( \LessThan1~0_combout\ & ( (\vga_v|y_c\(9)) # (\vga_v|y_c\(1)) ) ) # ( !\LessThan1~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \vga_v|ALT_INV_y_c\(1),
	datad => \vga_v|ALT_INV_y_c\(9),
	dataf => \ALT_INV_LessThan1~0_combout\,
	combout => \LessThan1~1_combout\);

-- Location: FF_X33_Y52_N7
\clk_25~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_25~reg0_q\);

-- Location: LABCELL_X30_Y36_N33
\LessThan4~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan4~1_combout\ = ( !\vga_v|y_c\(8) & ( (!\vga_v|y_c\(6) & !\vga_v|y_c\(7)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \vga_v|ALT_INV_y_c\(6),
	datad => \vga_v|ALT_INV_y_c\(7),
	dataf => \vga_v|ALT_INV_y_c\(8),
	combout => \LessThan4~1_combout\);

-- Location: LABCELL_X31_Y28_N48
\y[0]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \y[0]~2_combout\ = ( \LessThan4~1_combout\ & ( \vga_v|y_c\(0) & ( (!\vga_v|y_c\(9) & (\vga_v|y_c\(5) & ((!\LessThan4~0_combout\) # (\vga_v|y_c\(4))))) # (\vga_v|y_c\(9) & (!\vga_v|y_c\(4) & (\LessThan4~0_combout\ & !\vga_v|y_c\(5)))) ) ) ) # ( 
-- !\LessThan4~1_combout\ & ( \vga_v|y_c\(0) & ( !\vga_v|y_c\(9) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001100110011000000001011000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \vga_v|ALT_INV_y_c\(4),
	datab => \vga_v|ALT_INV_y_c\(9),
	datac => \ALT_INV_LessThan4~0_combout\,
	datad => \vga_v|ALT_INV_y_c\(5),
	datae => \ALT_INV_LessThan4~1_combout\,
	dataf => \vga_v|ALT_INV_y_c\(0),
	combout => \y[0]~2_combout\);

-- Location: LABCELL_X31_Y28_N51
\y[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \y[1]~1_combout\ = ( \LessThan4~1_combout\ & ( \vga_v|y_c\(1) & ( (!\vga_v|y_c\(9) & (\vga_v|y_c\(5) & ((!\LessThan4~0_combout\) # (\vga_v|y_c\(4))))) # (\vga_v|y_c\(9) & (!\vga_v|y_c\(4) & (!\vga_v|y_c\(5) & \LessThan4~0_combout\))) ) ) ) # ( 
-- !\LessThan4~1_combout\ & ( \vga_v|y_c\(1) & ( !\vga_v|y_c\(9) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001100110011000000110000100100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \vga_v|ALT_INV_y_c\(4),
	datab => \vga_v|ALT_INV_y_c\(9),
	datac => \vga_v|ALT_INV_y_c\(5),
	datad => \ALT_INV_LessThan4~0_combout\,
	datae => \ALT_INV_LessThan4~1_combout\,
	dataf => \vga_v|ALT_INV_y_c\(1),
	combout => \y[1]~1_combout\);

-- Location: LABCELL_X31_Y28_N54
\LessThan4~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan4~2_combout\ = ( \vga_v|y_c\(5) & ( (!\vga_v|y_c\(4) & (\LessThan4~1_combout\ & \LessThan4~0_combout\)) ) ) # ( !\vga_v|y_c\(5) & ( \LessThan4~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100000010000000100000001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \vga_v|ALT_INV_y_c\(4),
	datab => \ALT_INV_LessThan4~1_combout\,
	datac => \ALT_INV_LessThan4~0_combout\,
	dataf => \vga_v|ALT_INV_y_c\(5),
	combout => \LessThan4~2_combout\);

-- Location: LABCELL_X30_Y36_N0
\Add2~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~5_sumout\ = SUM(( \vga_v|y_c\(2) ) + ( VCC ) + ( !VCC ))
-- \Add2~6\ = CARRY(( \vga_v|y_c\(2) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \vga_v|ALT_INV_y_c\(2),
	cin => GND,
	sumout => \Add2~5_sumout\,
	cout => \Add2~6\);

-- Location: LABCELL_X31_Y28_N0
\Add5~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~1_sumout\ = SUM(( (\Add2~5_sumout\ & ((!\vga_v|y_c\(9) & ((!\LessThan4~2_combout\))) # (\vga_v|y_c\(9) & (\LessThan1~0_combout\)))) ) + ( VCC ) + ( !VCC ))
-- \Add5~2\ = CARRY(( (\Add2~5_sumout\ & ((!\vga_v|y_c\(9) & ((!\LessThan4~2_combout\))) # (\vga_v|y_c\(9) & (\LessThan1~0_combout\)))) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan1~0_combout\,
	datab => \vga_v|ALT_INV_y_c\(9),
	datac => \ALT_INV_LessThan4~2_combout\,
	datad => \ALT_INV_Add2~5_sumout\,
	cin => GND,
	sumout => \Add5~1_sumout\,
	cout => \Add5~2\);

-- Location: LABCELL_X30_Y36_N3
\Add2~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~17_sumout\ = SUM(( \vga_v|y_c\(3) ) + ( VCC ) + ( \Add2~6\ ))
-- \Add2~18\ = CARRY(( \vga_v|y_c\(3) ) + ( VCC ) + ( \Add2~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \vga_v|ALT_INV_y_c\(3),
	cin => \Add2~6\,
	sumout => \Add2~17_sumout\,
	cout => \Add2~18\);

-- Location: LABCELL_X31_Y28_N3
\Add5~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~5_sumout\ = SUM(( (\Add2~17_sumout\ & ((!\vga_v|y_c\(9) & ((!\LessThan4~2_combout\))) # (\vga_v|y_c\(9) & (\LessThan1~0_combout\)))) ) + ( VCC ) + ( \Add5~2\ ))
-- \Add5~6\ = CARRY(( (\Add2~17_sumout\ & ((!\vga_v|y_c\(9) & ((!\LessThan4~2_combout\))) # (\vga_v|y_c\(9) & (\LessThan1~0_combout\)))) ) + ( VCC ) + ( \Add5~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan1~0_combout\,
	datab => \vga_v|ALT_INV_y_c\(9),
	datac => \ALT_INV_LessThan4~2_combout\,
	datad => \ALT_INV_Add2~17_sumout\,
	cin => \Add5~2\,
	sumout => \Add5~5_sumout\,
	cout => \Add5~6\);

-- Location: LABCELL_X30_Y36_N6
\Add2~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~21_sumout\ = SUM(( \vga_v|y_c\(4) ) + ( VCC ) + ( \Add2~18\ ))
-- \Add2~22\ = CARRY(( \vga_v|y_c\(4) ) + ( VCC ) + ( \Add2~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \vga_v|ALT_INV_y_c\(4),
	cin => \Add2~18\,
	sumout => \Add2~21_sumout\,
	cout => \Add2~22\);

-- Location: LABCELL_X31_Y28_N6
\Add5~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~9_sumout\ = SUM(( VCC ) + ( (\Add2~21_sumout\ & ((!\vga_v|y_c\(9) & ((!\LessThan4~2_combout\))) # (\vga_v|y_c\(9) & (\LessThan1~0_combout\)))) ) + ( \Add5~6\ ))
-- \Add5~10\ = CARRY(( VCC ) + ( (\Add2~21_sumout\ & ((!\vga_v|y_c\(9) & ((!\LessThan4~2_combout\))) # (\vga_v|y_c\(9) & (\LessThan1~0_combout\)))) ) + ( \Add5~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110010111000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan1~0_combout\,
	datab => \vga_v|ALT_INV_y_c\(9),
	datac => \ALT_INV_LessThan4~2_combout\,
	dataf => \ALT_INV_Add2~21_sumout\,
	cin => \Add5~6\,
	sumout => \Add5~9_sumout\,
	cout => \Add5~10\);

-- Location: LABCELL_X30_Y36_N9
\Add2~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~25_sumout\ = SUM(( \vga_v|y_c\(5) ) + ( GND ) + ( \Add2~22\ ))
-- \Add2~26\ = CARRY(( \vga_v|y_c\(5) ) + ( GND ) + ( \Add2~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \vga_v|ALT_INV_y_c\(5),
	cin => \Add2~22\,
	sumout => \Add2~25_sumout\,
	cout => \Add2~26\);

-- Location: LABCELL_X31_Y28_N9
\Add5~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~13_sumout\ = SUM(( (\Add2~25_sumout\ & ((!\vga_v|y_c\(9) & ((!\LessThan4~2_combout\))) # (\vga_v|y_c\(9) & (\LessThan1~0_combout\)))) ) + ( GND ) + ( \Add5~10\ ))
-- \Add5~14\ = CARRY(( (\Add2~25_sumout\ & ((!\vga_v|y_c\(9) & ((!\LessThan4~2_combout\))) # (\vga_v|y_c\(9) & (\LessThan1~0_combout\)))) ) + ( GND ) + ( \Add5~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan1~0_combout\,
	datab => \vga_v|ALT_INV_y_c\(9),
	datac => \ALT_INV_LessThan4~2_combout\,
	datad => \ALT_INV_Add2~25_sumout\,
	cin => \Add5~10\,
	sumout => \Add5~13_sumout\,
	cout => \Add5~14\);

-- Location: LABCELL_X30_Y36_N12
\Add2~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~9_sumout\ = SUM(( \vga_v|y_c\(6) ) + ( VCC ) + ( \Add2~26\ ))
-- \Add2~10\ = CARRY(( \vga_v|y_c\(6) ) + ( VCC ) + ( \Add2~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \vga_v|ALT_INV_y_c\(6),
	cin => \Add2~26\,
	sumout => \Add2~9_sumout\,
	cout => \Add2~10\);

-- Location: LABCELL_X31_Y28_N12
\Add5~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~17_sumout\ = SUM(( (\Add2~9_sumout\ & ((!\vga_v|y_c\(9) & ((!\LessThan4~2_combout\))) # (\vga_v|y_c\(9) & (\LessThan1~0_combout\)))) ) + ( GND ) + ( \Add5~14\ ))
-- \Add5~18\ = CARRY(( (\Add2~9_sumout\ & ((!\vga_v|y_c\(9) & ((!\LessThan4~2_combout\))) # (\vga_v|y_c\(9) & (\LessThan1~0_combout\)))) ) + ( GND ) + ( \Add5~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan1~0_combout\,
	datab => \vga_v|ALT_INV_y_c\(9),
	datac => \ALT_INV_LessThan4~2_combout\,
	datad => \ALT_INV_Add2~9_sumout\,
	cin => \Add5~14\,
	sumout => \Add5~17_sumout\,
	cout => \Add5~18\);

-- Location: LABCELL_X30_Y36_N15
\Add2~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~13_sumout\ = SUM(( \vga_v|y_c\(7) ) + ( VCC ) + ( \Add2~10\ ))
-- \Add2~14\ = CARRY(( \vga_v|y_c\(7) ) + ( VCC ) + ( \Add2~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \vga_v|ALT_INV_y_c\(7),
	cin => \Add2~10\,
	sumout => \Add2~13_sumout\,
	cout => \Add2~14\);

-- Location: LABCELL_X31_Y28_N15
\Add5~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~21_sumout\ = SUM(( (\Add2~13_sumout\ & ((!\vga_v|y_c\(9) & ((!\LessThan4~2_combout\))) # (\vga_v|y_c\(9) & (\LessThan1~0_combout\)))) ) + ( VCC ) + ( \Add5~18\ ))
-- \Add5~22\ = CARRY(( (\Add2~13_sumout\ & ((!\vga_v|y_c\(9) & ((!\LessThan4~2_combout\))) # (\vga_v|y_c\(9) & (\LessThan1~0_combout\)))) ) + ( VCC ) + ( \Add5~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan1~0_combout\,
	datab => \vga_v|ALT_INV_y_c\(9),
	datac => \ALT_INV_LessThan4~2_combout\,
	datad => \ALT_INV_Add2~13_sumout\,
	cin => \Add5~18\,
	sumout => \Add5~21_sumout\,
	cout => \Add5~22\);

-- Location: LABCELL_X30_Y36_N18
\Add2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~1_sumout\ = SUM(( \vga_v|y_c\(8) ) + ( VCC ) + ( \Add2~14\ ))
-- \Add2~2\ = CARRY(( \vga_v|y_c\(8) ) + ( VCC ) + ( \Add2~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \vga_v|ALT_INV_y_c\(8),
	cin => \Add2~14\,
	sumout => \Add2~1_sumout\,
	cout => \Add2~2\);

-- Location: LABCELL_X31_Y28_N18
\Add5~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~25_sumout\ = SUM(( VCC ) + ( (\Add2~1_sumout\ & ((!\vga_v|y_c\(9) & ((!\LessThan4~2_combout\))) # (\vga_v|y_c\(9) & (\LessThan1~0_combout\)))) ) + ( \Add5~22\ ))
-- \Add5~26\ = CARRY(( VCC ) + ( (\Add2~1_sumout\ & ((!\vga_v|y_c\(9) & ((!\LessThan4~2_combout\))) # (\vga_v|y_c\(9) & (\LessThan1~0_combout\)))) ) + ( \Add5~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110010111000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan1~0_combout\,
	datab => \vga_v|ALT_INV_y_c\(9),
	datac => \ALT_INV_LessThan4~2_combout\,
	dataf => \ALT_INV_Add2~1_sumout\,
	cin => \Add5~22\,
	sumout => \Add5~25_sumout\,
	cout => \Add5~26\);

-- Location: LABCELL_X30_Y36_N21
\Add2~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~29_sumout\ = SUM(( \vga_v|y_c\(9) ) + ( VCC ) + ( \Add2~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \vga_v|ALT_INV_y_c\(9),
	cin => \Add2~2\,
	sumout => \Add2~29_sumout\);

-- Location: LABCELL_X31_Y28_N21
\Add5~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~29_sumout\ = SUM(( VCC ) + ( (\Add2~29_sumout\ & ((!\vga_v|y_c\(9) & ((!\LessThan4~2_combout\))) # (\vga_v|y_c\(9) & (\LessThan1~0_combout\)))) ) + ( \Add5~26\ ))
-- \Add5~30\ = CARRY(( VCC ) + ( (\Add2~29_sumout\ & ((!\vga_v|y_c\(9) & ((!\LessThan4~2_combout\))) # (\vga_v|y_c\(9) & (\LessThan1~0_combout\)))) ) + ( \Add5~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110010111000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan1~0_combout\,
	datab => \vga_v|ALT_INV_y_c\(9),
	datac => \ALT_INV_LessThan4~2_combout\,
	dataf => \ALT_INV_Add2~29_sumout\,
	cin => \Add5~26\,
	sumout => \Add5~29_sumout\,
	cout => \Add5~30\);

-- Location: LABCELL_X31_Y28_N24
\Add5~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~33_sumout\ = SUM(( VCC ) + ( GND ) + ( \Add5~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \Add5~30\,
	sumout => \Add5~33_sumout\);

-- Location: DSP_X32_Y22_N0
\Mult3~8\ : cyclonev_mac
-- pragma translate_off
GENERIC MAP (
	accumulate_clock => "none",
	ax_clock => "none",
	ax_width => 18,
	ay_scan_in_clock => "none",
	ay_scan_in_width => 18,
	ay_use_scan_in => "false",
	az_clock => "none",
	bx_clock => "none",
	by_clock => "none",
	by_use_scan_in => "false",
	bz_clock => "none",
	coef_a_0 => 0,
	coef_a_1 => 0,
	coef_a_2 => 0,
	coef_a_3 => 0,
	coef_a_4 => 0,
	coef_a_5 => 0,
	coef_a_6 => 0,
	coef_a_7 => 0,
	coef_b_0 => 0,
	coef_b_1 => 0,
	coef_b_2 => 0,
	coef_b_3 => 0,
	coef_b_4 => 0,
	coef_b_5 => 0,
	coef_b_6 => 0,
	coef_b_7 => 0,
	coef_sel_a_clock => "none",
	coef_sel_b_clock => "none",
	delay_scan_out_ay => "false",
	delay_scan_out_by => "false",
	enable_double_accum => "false",
	load_const_clock => "none",
	load_const_value => 0,
	mode_sub_location => 0,
	negate_clock => "none",
	operand_source_max => "input",
	operand_source_may => "input",
	operand_source_mbx => "input",
	operand_source_mby => "input",
	operation_mode => "m18x18_full",
	output_clock => "none",
	preadder_subtract_a => "false",
	preadder_subtract_b => "false",
	result_a_width => 64,
	signed_max => "false",
	signed_may => "false",
	signed_mbx => "false",
	signed_mby => "false",
	sub_clock => "none",
	use_chainadder => "false")
-- pragma translate_on
PORT MAP (
	sub => GND,
	negate => GND,
	ax => \Mult3~8_AX_bus\,
	ay => \Mult3~8_AY_bus\,
	resulta => \Mult3~8_RESULTA_bus\);

-- Location: MLABCELL_X34_Y33_N51
\LessThan2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan2~0_combout\ = ( \vga_h|x_c\(3) & ( \vga_h|x_c\(4) ) ) # ( !\vga_h|x_c\(3) & ( (\vga_h|x_c\(4) & (((\vga_h|x_c\(2)) # (\vga_h|x_c\(1))) # (\vga_h|x_c\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010101010101000101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \vga_h|ALT_INV_x_c\(4),
	datab => \vga_h|ALT_INV_x_c\(0),
	datac => \vga_h|ALT_INV_x_c\(1),
	datad => \vga_h|ALT_INV_x_c\(2),
	dataf => \vga_h|ALT_INV_x_c\(3),
	combout => \LessThan2~0_combout\);

-- Location: LABCELL_X31_Y33_N24
\vga_h|LessThan0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \vga_h|LessThan0~0_combout\ = ( !\vga_h|x_c[6]~DUPLICATE_q\ & ( !\vga_h|x_c\(5) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000000000000000000011110000111100000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \vga_h|ALT_INV_x_c\(5),
	datae => \vga_h|ALT_INV_x_c[6]~DUPLICATE_q\,
	combout => \vga_h|LessThan0~0_combout\);

-- Location: MLABCELL_X34_Y33_N0
\Add1~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~33_sumout\ = SUM(( \vga_h|x_c\(0) ) + ( VCC ) + ( !VCC ))
-- \Add1~34\ = CARRY(( \vga_h|x_c\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \vga_h|ALT_INV_x_c\(0),
	cin => GND,
	sumout => \Add1~33_sumout\,
	cout => \Add1~34\);

-- Location: MLABCELL_X34_Y33_N45
\x[0]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \x[0]~2_combout\ = ( \vga_h|LessThan0~0_combout\ & ( \Add1~33_sumout\ & ( (!\vga_h|x_c\(9) & (((\LessThan2~0_combout\ & \vga_h|x_c\(7))) # (\vga_h|x_c\(8)))) # (\vga_h|x_c\(9) & ((!\vga_h|x_c\(8)) # ((!\LessThan2~0_combout\ & !\vga_h|x_c\(7))))) ) ) ) # ( 
-- !\vga_h|LessThan0~0_combout\ & ( \Add1~33_sumout\ & ( (!\vga_h|x_c\(9) & ((\vga_h|x_c\(7)) # (\vga_h|x_c\(8)))) # (\vga_h|x_c\(9) & (!\vga_h|x_c\(8))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001100110111011100111011001101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \vga_h|ALT_INV_x_c\(9),
	datab => \vga_h|ALT_INV_x_c\(8),
	datac => \ALT_INV_LessThan2~0_combout\,
	datad => \vga_h|ALT_INV_x_c\(7),
	datae => \vga_h|ALT_INV_LessThan0~0_combout\,
	dataf => \ALT_INV_Add1~33_sumout\,
	combout => \x[0]~2_combout\);

-- Location: FF_X33_Y33_N29
\vga_h|x_c[9]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \vga_h|Add1~1_sumout\,
	sclr => \vga_h|LessThan0~4_combout\,
	ena => \vga_h|clk_enable\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_h|x_c[9]~DUPLICATE_q\);

-- Location: FF_X33_Y33_N26
\vga_h|x_c[8]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \vga_h|Add1~13_sumout\,
	sclr => \vga_h|LessThan0~4_combout\,
	ena => \vga_h|clk_enable\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_h|x_c[8]~DUPLICATE_q\);

-- Location: MLABCELL_X34_Y33_N3
\Add1~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~25_sumout\ = SUM(( \vga_h|x_c\(1) ) + ( VCC ) + ( \Add1~34\ ))
-- \Add1~26\ = CARRY(( \vga_h|x_c\(1) ) + ( VCC ) + ( \Add1~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \vga_h|ALT_INV_x_c\(1),
	cin => \Add1~34\,
	sumout => \Add1~25_sumout\,
	cout => \Add1~26\);

-- Location: LABCELL_X31_Y26_N48
\x[1]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \x[1]~3_combout\ = ( \vga_h|LessThan0~0_combout\ & ( \Add1~25_sumout\ & ( (!\vga_h|x_c[9]~DUPLICATE_q\ & (((\vga_h|x_c\(7) & \LessThan2~0_combout\)) # (\vga_h|x_c[8]~DUPLICATE_q\))) # (\vga_h|x_c[9]~DUPLICATE_q\ & ((!\vga_h|x_c[8]~DUPLICATE_q\) # 
-- ((!\vga_h|x_c\(7) & !\LessThan2~0_combout\)))) ) ) ) # ( !\vga_h|LessThan0~0_combout\ & ( \Add1~25_sumout\ & ( (!\vga_h|x_c[9]~DUPLICATE_q\ & ((\vga_h|x_c[8]~DUPLICATE_q\) # (\vga_h|x_c\(7)))) # (\vga_h|x_c[9]~DUPLICATE_q\ & 
-- ((!\vga_h|x_c[8]~DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001110111110011000011011111101100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \vga_h|ALT_INV_x_c\(7),
	datab => \vga_h|ALT_INV_x_c[9]~DUPLICATE_q\,
	datac => \ALT_INV_LessThan2~0_combout\,
	datad => \vga_h|ALT_INV_x_c[8]~DUPLICATE_q\,
	datae => \vga_h|ALT_INV_LessThan0~0_combout\,
	dataf => \ALT_INV_Add1~25_sumout\,
	combout => \x[1]~3_combout\);

-- Location: MLABCELL_X34_Y33_N6
\Add1~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~21_sumout\ = SUM(( \vga_h|x_c\(2) ) + ( VCC ) + ( \Add1~26\ ))
-- \Add1~22\ = CARRY(( \vga_h|x_c\(2) ) + ( VCC ) + ( \Add1~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \vga_h|ALT_INV_x_c\(2),
	cin => \Add1~26\,
	sumout => \Add1~21_sumout\,
	cout => \Add1~22\);

-- Location: LABCELL_X31_Y26_N51
\x[2]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \x[2]~4_combout\ = ( \vga_h|LessThan0~0_combout\ & ( \Add1~21_sumout\ & ( (!\vga_h|x_c[9]~DUPLICATE_q\ & (((\vga_h|x_c\(7) & \LessThan2~0_combout\)) # (\vga_h|x_c[8]~DUPLICATE_q\))) # (\vga_h|x_c[9]~DUPLICATE_q\ & ((!\vga_h|x_c[8]~DUPLICATE_q\) # 
-- ((!\vga_h|x_c\(7) & !\LessThan2~0_combout\)))) ) ) ) # ( !\vga_h|LessThan0~0_combout\ & ( \Add1~21_sumout\ & ( (!\vga_h|x_c[9]~DUPLICATE_q\ & ((\vga_h|x_c[8]~DUPLICATE_q\) # (\vga_h|x_c\(7)))) # (\vga_h|x_c[9]~DUPLICATE_q\ & 
-- ((!\vga_h|x_c[8]~DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001111100011111000011111001111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \vga_h|ALT_INV_x_c\(7),
	datab => \vga_h|ALT_INV_x_c[9]~DUPLICATE_q\,
	datac => \vga_h|ALT_INV_x_c[8]~DUPLICATE_q\,
	datad => \ALT_INV_LessThan2~0_combout\,
	datae => \vga_h|ALT_INV_LessThan0~0_combout\,
	dataf => \ALT_INV_Add1~21_sumout\,
	combout => \x[2]~4_combout\);

-- Location: LABCELL_X31_Y26_N54
\LessThan2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan2~1_combout\ = ( \vga_h|LessThan0~0_combout\ & ( \LessThan2~0_combout\ & ( (!\vga_h|x_c[8]~DUPLICATE_q\ & !\vga_h|x_c\(7)) ) ) ) # ( !\vga_h|LessThan0~0_combout\ & ( \LessThan2~0_combout\ & ( (!\vga_h|x_c[8]~DUPLICATE_q\ & !\vga_h|x_c\(7)) ) ) ) 
-- # ( \vga_h|LessThan0~0_combout\ & ( !\LessThan2~0_combout\ & ( !\vga_h|x_c[8]~DUPLICATE_q\ ) ) ) # ( !\vga_h|LessThan0~0_combout\ & ( !\LessThan2~0_combout\ & ( (!\vga_h|x_c[8]~DUPLICATE_q\ & !\vga_h|x_c\(7)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000010100000101010101010101010100000101000001010000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \vga_h|ALT_INV_x_c[8]~DUPLICATE_q\,
	datac => \vga_h|ALT_INV_x_c\(7),
	datae => \vga_h|ALT_INV_LessThan0~0_combout\,
	dataf => \ALT_INV_LessThan2~0_combout\,
	combout => \LessThan2~1_combout\);

-- Location: LABCELL_X31_Y26_N30
\LessThan3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan3~0_combout\ = ( \LessThan2~0_combout\ & ( \vga_h|x_c[8]~DUPLICATE_q\ ) ) # ( !\LessThan2~0_combout\ & ( (!\vga_h|LessThan0~1_combout\ & \vga_h|x_c[8]~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \vga_h|ALT_INV_LessThan0~1_combout\,
	datad => \vga_h|ALT_INV_x_c[8]~DUPLICATE_q\,
	dataf => \ALT_INV_LessThan2~0_combout\,
	combout => \LessThan3~0_combout\);

-- Location: MLABCELL_X34_Y33_N9
\Add1~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~17_sumout\ = SUM(( \vga_h|x_c\(3) ) + ( VCC ) + ( \Add1~22\ ))
-- \Add1~18\ = CARRY(( \vga_h|x_c\(3) ) + ( VCC ) + ( \Add1~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \vga_h|ALT_INV_x_c\(3),
	cin => \Add1~22\,
	sumout => \Add1~17_sumout\,
	cout => \Add1~18\);

-- Location: LABCELL_X31_Y26_N0
\Add4~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~1_sumout\ = SUM(( VCC ) + ( (\Add1~17_sumout\ & ((!\vga_h|x_c[9]~DUPLICATE_q\ & (!\LessThan2~1_combout\)) # (\vga_h|x_c[9]~DUPLICATE_q\ & ((!\LessThan3~0_combout\))))) ) + ( !VCC ))
-- \Add4~2\ = CARRY(( VCC ) + ( (\Add1~17_sumout\ & ((!\vga_h|x_c[9]~DUPLICATE_q\ & (!\LessThan2~1_combout\)) # (\vga_h|x_c[9]~DUPLICATE_q\ & ((!\LessThan3~0_combout\))))) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110101001100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan2~1_combout\,
	datab => \ALT_INV_LessThan3~0_combout\,
	datac => \vga_h|ALT_INV_x_c[9]~DUPLICATE_q\,
	dataf => \ALT_INV_Add1~17_sumout\,
	cin => GND,
	sumout => \Add4~1_sumout\,
	cout => \Add4~2\);

-- Location: MLABCELL_X34_Y33_N12
\Add1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~13_sumout\ = SUM(( \vga_h|x_c\(4) ) + ( GND ) + ( \Add1~18\ ))
-- \Add1~14\ = CARRY(( \vga_h|x_c\(4) ) + ( GND ) + ( \Add1~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \vga_h|ALT_INV_x_c\(4),
	cin => \Add1~18\,
	sumout => \Add1~13_sumout\,
	cout => \Add1~14\);

-- Location: LABCELL_X31_Y26_N3
\Add4~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~5_sumout\ = SUM(( VCC ) + ( (\Add1~13_sumout\ & ((!\vga_h|x_c[9]~DUPLICATE_q\ & (!\LessThan2~1_combout\)) # (\vga_h|x_c[9]~DUPLICATE_q\ & ((!\LessThan3~0_combout\))))) ) + ( \Add4~2\ ))
-- \Add4~6\ = CARRY(( VCC ) + ( (\Add1~13_sumout\ & ((!\vga_h|x_c[9]~DUPLICATE_q\ & (!\LessThan2~1_combout\)) # (\vga_h|x_c[9]~DUPLICATE_q\ & ((!\LessThan3~0_combout\))))) ) + ( \Add4~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110101001100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan2~1_combout\,
	datab => \ALT_INV_LessThan3~0_combout\,
	datac => \vga_h|ALT_INV_x_c[9]~DUPLICATE_q\,
	dataf => \ALT_INV_Add1~13_sumout\,
	cin => \Add4~2\,
	sumout => \Add4~5_sumout\,
	cout => \Add4~6\);

-- Location: MLABCELL_X34_Y33_N15
\Add1~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~29_sumout\ = SUM(( \vga_h|x_c\(5) ) + ( VCC ) + ( \Add1~14\ ))
-- \Add1~30\ = CARRY(( \vga_h|x_c\(5) ) + ( VCC ) + ( \Add1~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \vga_h|ALT_INV_x_c\(5),
	cin => \Add1~14\,
	sumout => \Add1~29_sumout\,
	cout => \Add1~30\);

-- Location: LABCELL_X31_Y26_N6
\Add4~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~9_sumout\ = SUM(( (\Add1~29_sumout\ & ((!\vga_h|x_c[9]~DUPLICATE_q\ & (!\LessThan2~1_combout\)) # (\vga_h|x_c[9]~DUPLICATE_q\ & ((!\LessThan3~0_combout\))))) ) + ( VCC ) + ( \Add4~6\ ))
-- \Add4~10\ = CARRY(( (\Add1~29_sumout\ & ((!\vga_h|x_c[9]~DUPLICATE_q\ & (!\LessThan2~1_combout\)) # (\vga_h|x_c[9]~DUPLICATE_q\ & ((!\LessThan3~0_combout\))))) ) + ( VCC ) + ( \Add4~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000010101100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan2~1_combout\,
	datab => \ALT_INV_LessThan3~0_combout\,
	datac => \vga_h|ALT_INV_x_c[9]~DUPLICATE_q\,
	datad => \ALT_INV_Add1~29_sumout\,
	cin => \Add4~6\,
	sumout => \Add4~9_sumout\,
	cout => \Add4~10\);

-- Location: MLABCELL_X34_Y33_N18
\Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~1_sumout\ = SUM(( \vga_h|x_c\(6) ) + ( VCC ) + ( \Add1~30\ ))
-- \Add1~2\ = CARRY(( \vga_h|x_c\(6) ) + ( VCC ) + ( \Add1~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \vga_h|ALT_INV_x_c\(6),
	cin => \Add1~30\,
	sumout => \Add1~1_sumout\,
	cout => \Add1~2\);

-- Location: LABCELL_X31_Y26_N9
\Add4~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~13_sumout\ = SUM(( (\Add1~1_sumout\ & ((!\vga_h|x_c[9]~DUPLICATE_q\ & (!\LessThan2~1_combout\)) # (\vga_h|x_c[9]~DUPLICATE_q\ & ((!\LessThan3~0_combout\))))) ) + ( GND ) + ( \Add4~10\ ))
-- \Add4~14\ = CARRY(( (\Add1~1_sumout\ & ((!\vga_h|x_c[9]~DUPLICATE_q\ & (!\LessThan2~1_combout\)) # (\vga_h|x_c[9]~DUPLICATE_q\ & ((!\LessThan3~0_combout\))))) ) + ( GND ) + ( \Add4~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000010101100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan2~1_combout\,
	datab => \ALT_INV_LessThan3~0_combout\,
	datac => \vga_h|ALT_INV_x_c[9]~DUPLICATE_q\,
	datad => \ALT_INV_Add1~1_sumout\,
	cin => \Add4~10\,
	sumout => \Add4~13_sumout\,
	cout => \Add4~14\);

-- Location: MLABCELL_X34_Y33_N21
\Add1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~5_sumout\ = SUM(( \vga_h|x_c\(7) ) + ( GND ) + ( \Add1~2\ ))
-- \Add1~6\ = CARRY(( \vga_h|x_c\(7) ) + ( GND ) + ( \Add1~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \vga_h|ALT_INV_x_c\(7),
	cin => \Add1~2\,
	sumout => \Add1~5_sumout\,
	cout => \Add1~6\);

-- Location: LABCELL_X31_Y26_N12
\Add4~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~17_sumout\ = SUM(( GND ) + ( (\Add1~5_sumout\ & ((!\vga_h|x_c[9]~DUPLICATE_q\ & (!\LessThan2~1_combout\)) # (\vga_h|x_c[9]~DUPLICATE_q\ & ((!\LessThan3~0_combout\))))) ) + ( \Add4~14\ ))
-- \Add4~18\ = CARRY(( GND ) + ( (\Add1~5_sumout\ & ((!\vga_h|x_c[9]~DUPLICATE_q\ & (!\LessThan2~1_combout\)) # (\vga_h|x_c[9]~DUPLICATE_q\ & ((!\LessThan3~0_combout\))))) ) + ( \Add4~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110101001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan2~1_combout\,
	datab => \ALT_INV_LessThan3~0_combout\,
	datac => \vga_h|ALT_INV_x_c[9]~DUPLICATE_q\,
	dataf => \ALT_INV_Add1~5_sumout\,
	cin => \Add4~14\,
	sumout => \Add4~17_sumout\,
	cout => \Add4~18\);

-- Location: MLABCELL_X34_Y33_N24
\Add1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~9_sumout\ = SUM(( \vga_h|x_c\(8) ) + ( VCC ) + ( \Add1~6\ ))
-- \Add1~10\ = CARRY(( \vga_h|x_c\(8) ) + ( VCC ) + ( \Add1~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \vga_h|ALT_INV_x_c\(8),
	cin => \Add1~6\,
	sumout => \Add1~9_sumout\,
	cout => \Add1~10\);

-- Location: LABCELL_X31_Y26_N15
\Add4~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~21_sumout\ = SUM(( VCC ) + ( (\Add1~9_sumout\ & ((!\vga_h|x_c[9]~DUPLICATE_q\ & (!\LessThan2~1_combout\)) # (\vga_h|x_c[9]~DUPLICATE_q\ & ((!\LessThan3~0_combout\))))) ) + ( \Add4~18\ ))
-- \Add4~22\ = CARRY(( VCC ) + ( (\Add1~9_sumout\ & ((!\vga_h|x_c[9]~DUPLICATE_q\ & (!\LessThan2~1_combout\)) # (\vga_h|x_c[9]~DUPLICATE_q\ & ((!\LessThan3~0_combout\))))) ) + ( \Add4~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110101001100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan2~1_combout\,
	datab => \ALT_INV_LessThan3~0_combout\,
	datac => \vga_h|ALT_INV_x_c[9]~DUPLICATE_q\,
	dataf => \ALT_INV_Add1~9_sumout\,
	cin => \Add4~18\,
	sumout => \Add4~21_sumout\,
	cout => \Add4~22\);

-- Location: MLABCELL_X34_Y33_N27
\Add1~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~37_sumout\ = SUM(( \vga_h|x_c\(9) ) + ( VCC ) + ( \Add1~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \vga_h|ALT_INV_x_c\(9),
	cin => \Add1~10\,
	sumout => \Add1~37_sumout\);

-- Location: LABCELL_X31_Y26_N18
\Add4~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~25_sumout\ = SUM(( (\Add1~37_sumout\ & ((!\vga_h|x_c[9]~DUPLICATE_q\ & (!\LessThan2~1_combout\)) # (\vga_h|x_c[9]~DUPLICATE_q\ & ((!\LessThan3~0_combout\))))) ) + ( VCC ) + ( \Add4~22\ ))
-- \Add4~26\ = CARRY(( (\Add1~37_sumout\ & ((!\vga_h|x_c[9]~DUPLICATE_q\ & (!\LessThan2~1_combout\)) # (\vga_h|x_c[9]~DUPLICATE_q\ & ((!\LessThan3~0_combout\))))) ) + ( VCC ) + ( \Add4~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000010101100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan2~1_combout\,
	datab => \ALT_INV_LessThan3~0_combout\,
	datac => \vga_h|ALT_INV_x_c[9]~DUPLICATE_q\,
	datad => \ALT_INV_Add1~37_sumout\,
	cin => \Add4~22\,
	sumout => \Add4~25_sumout\,
	cout => \Add4~26\);

-- Location: LABCELL_X31_Y26_N21
\Add4~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~29_sumout\ = SUM(( VCC ) + ( GND ) + ( \Add4~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \Add4~26\,
	sumout => \Add4~29_sumout\);

-- Location: DSP_X32_Y24_N0
\Mult2~132\ : cyclonev_mac
-- pragma translate_off
GENERIC MAP (
	accumulate_clock => "none",
	ax_clock => "none",
	ax_width => 18,
	ay_scan_in_clock => "none",
	ay_scan_in_width => 18,
	ay_use_scan_in => "false",
	az_clock => "none",
	bx_clock => "none",
	by_clock => "none",
	by_use_scan_in => "false",
	bz_clock => "none",
	coef_a_0 => 0,
	coef_a_1 => 0,
	coef_a_2 => 0,
	coef_a_3 => 0,
	coef_a_4 => 0,
	coef_a_5 => 0,
	coef_a_6 => 0,
	coef_a_7 => 0,
	coef_b_0 => 0,
	coef_b_1 => 0,
	coef_b_2 => 0,
	coef_b_3 => 0,
	coef_b_4 => 0,
	coef_b_5 => 0,
	coef_b_6 => 0,
	coef_b_7 => 0,
	coef_sel_a_clock => "none",
	coef_sel_b_clock => "none",
	delay_scan_out_ay => "false",
	delay_scan_out_by => "false",
	enable_double_accum => "false",
	load_const_clock => "none",
	load_const_value => 0,
	mode_sub_location => 0,
	negate_clock => "none",
	operand_source_max => "input",
	operand_source_may => "input",
	operand_source_mbx => "input",
	operand_source_mby => "input",
	operation_mode => "m18x18_full",
	output_clock => "none",
	preadder_subtract_a => "false",
	preadder_subtract_b => "false",
	result_a_width => 64,
	signed_max => "false",
	signed_may => "false",
	signed_mbx => "false",
	signed_mby => "false",
	sub_clock => "none",
	use_chainadder => "false")
-- pragma translate_on
PORT MAP (
	sub => GND,
	negate => GND,
	ax => \Mult2~132_AX_bus\,
	ay => \Mult2~132_AY_bus\,
	resulta => \Mult2~132_RESULTA_bus\);

-- Location: DSP_X20_Y22_N0
\Mult3~405\ : cyclonev_mac
-- pragma translate_off
GENERIC MAP (
	accumulate_clock => "none",
	ax_clock => "none",
	ax_width => 14,
	ay_scan_in_clock => "none",
	ay_scan_in_width => 18,
	ay_use_scan_in => "false",
	az_clock => "none",
	bx_clock => "none",
	bx_width => 14,
	by_clock => "none",
	by_use_scan_in => "false",
	by_width => 18,
	bz_clock => "none",
	coef_a_0 => 0,
	coef_a_1 => 0,
	coef_a_2 => 0,
	coef_a_3 => 0,
	coef_a_4 => 0,
	coef_a_5 => 0,
	coef_a_6 => 0,
	coef_a_7 => 0,
	coef_b_0 => 0,
	coef_b_1 => 0,
	coef_b_2 => 0,
	coef_b_3 => 0,
	coef_b_4 => 0,
	coef_b_5 => 0,
	coef_b_6 => 0,
	coef_b_7 => 0,
	coef_sel_a_clock => "none",
	coef_sel_b_clock => "none",
	delay_scan_out_ay => "false",
	delay_scan_out_by => "false",
	enable_double_accum => "false",
	load_const_clock => "none",
	load_const_value => 0,
	mode_sub_location => 0,
	negate_clock => "none",
	operand_source_max => "input",
	operand_source_may => "input",
	operand_source_mbx => "input",
	operand_source_mby => "input",
	operation_mode => "m18x18_sumof2",
	output_clock => "none",
	preadder_subtract_a => "false",
	preadder_subtract_b => "false",
	result_a_width => 64,
	signed_max => "false",
	signed_may => "false",
	signed_mbx => "false",
	signed_mby => "false",
	sub_clock => "none",
	use_chainadder => "false")
-- pragma translate_on
PORT MAP (
	sub => GND,
	negate => GND,
	ax => \Mult3~405_AX_bus\,
	ay => \Mult3~405_AY_bus\,
	bx => \Mult3~405_BX_bus\,
	by => \Mult3~405_BY_bus\,
	resulta => \Mult3~405_RESULTA_bus\);

-- Location: LABCELL_X31_Y22_N0
\Mult3~382\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mult3~382_sumout\ = SUM(( !\Mult2~150\ $ (!\Mult3~405_resulta\ $ (\Mult3~26\)) ) + ( !VCC ) + ( !VCC ))
-- \Mult3~383\ = CARRY(( !\Mult2~150\ $ (!\Mult3~405_resulta\ $ (\Mult3~26\)) ) + ( !VCC ) + ( !VCC ))
-- \Mult3~384\ = SHARE((!\Mult2~150\ & (\Mult3~405_resulta\ & \Mult3~26\)) # (\Mult2~150\ & ((\Mult3~26\) # (\Mult3~405_resulta\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110011111100000000000000000011110011000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Mult2~150\,
	datac => \ALT_INV_Mult3~405_resulta\,
	datad => \ALT_INV_Mult3~26\,
	cin => GND,
	sharein => GND,
	sumout => \Mult3~382_sumout\,
	cout => \Mult3~383\,
	shareout => \Mult3~384\);

-- Location: LABCELL_X31_Y22_N3
\Mult3~386\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mult3~386_sumout\ = SUM(( !\Mult3~406\ $ (!\Mult2~151\ $ (\Mult3~27\)) ) + ( \Mult3~384\ ) + ( \Mult3~383\ ))
-- \Mult3~387\ = CARRY(( !\Mult3~406\ $ (!\Mult2~151\ $ (\Mult3~27\)) ) + ( \Mult3~384\ ) + ( \Mult3~383\ ))
-- \Mult3~388\ = SHARE((!\Mult3~406\ & (\Mult2~151\ & \Mult3~27\)) # (\Mult3~406\ & ((\Mult3~27\) # (\Mult2~151\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010101111100000000000000000101101010100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mult3~406\,
	datac => \ALT_INV_Mult2~151\,
	datad => \ALT_INV_Mult3~27\,
	cin => \Mult3~383\,
	sharein => \Mult3~384\,
	sumout => \Mult3~386_sumout\,
	cout => \Mult3~387\,
	shareout => \Mult3~388\);

-- Location: LABCELL_X31_Y22_N6
\Mult3~390\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mult3~390_sumout\ = SUM(( !\Mult3~28\ $ (!\Mult3~407\ $ (\Mult2~152\)) ) + ( \Mult3~388\ ) + ( \Mult3~387\ ))
-- \Mult3~391\ = CARRY(( !\Mult3~28\ $ (!\Mult3~407\ $ (\Mult2~152\)) ) + ( \Mult3~388\ ) + ( \Mult3~387\ ))
-- \Mult3~392\ = SHARE((!\Mult3~28\ & (\Mult3~407\ & \Mult2~152\)) # (\Mult3~28\ & ((\Mult2~152\) # (\Mult3~407\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110011111100000000000000000011110011000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Mult3~28\,
	datac => \ALT_INV_Mult3~407\,
	datad => \ALT_INV_Mult2~152\,
	cin => \Mult3~387\,
	sharein => \Mult3~388\,
	sumout => \Mult3~390_sumout\,
	cout => \Mult3~391\,
	shareout => \Mult3~392\);

-- Location: LABCELL_X31_Y22_N9
\Mult3~394\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mult3~394_sumout\ = SUM(( !\Mult3~29\ $ (!\Mult3~408\ $ (\Mult2~153\)) ) + ( \Mult3~392\ ) + ( \Mult3~391\ ))
-- \Mult3~395\ = CARRY(( !\Mult3~29\ $ (!\Mult3~408\ $ (\Mult2~153\)) ) + ( \Mult3~392\ ) + ( \Mult3~391\ ))
-- \Mult3~396\ = SHARE((!\Mult3~29\ & (\Mult3~408\ & \Mult2~153\)) # (\Mult3~29\ & ((\Mult2~153\) # (\Mult3~408\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010101111100000000000000000101101010100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mult3~29\,
	datac => \ALT_INV_Mult3~408\,
	datad => \ALT_INV_Mult2~153\,
	cin => \Mult3~391\,
	sharein => \Mult3~392\,
	sumout => \Mult3~394_sumout\,
	cout => \Mult3~395\,
	shareout => \Mult3~396\);

-- Location: LABCELL_X31_Y22_N12
\Mult3~342\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mult3~342_sumout\ = SUM(( !\Mult3~30\ $ (!\Mult3~409\ $ (\Mult2~154\)) ) + ( \Mult3~396\ ) + ( \Mult3~395\ ))
-- \Mult3~343\ = CARRY(( !\Mult3~30\ $ (!\Mult3~409\ $ (\Mult2~154\)) ) + ( \Mult3~396\ ) + ( \Mult3~395\ ))
-- \Mult3~344\ = SHARE((!\Mult3~30\ & (\Mult3~409\ & \Mult2~154\)) # (\Mult3~30\ & ((\Mult2~154\) # (\Mult3~409\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110011111100000000000000000011110011000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Mult3~30\,
	datac => \ALT_INV_Mult3~409\,
	datad => \ALT_INV_Mult2~154\,
	cin => \Mult3~395\,
	sharein => \Mult3~396\,
	sumout => \Mult3~342_sumout\,
	cout => \Mult3~343\,
	shareout => \Mult3~344\);

-- Location: LABCELL_X31_Y22_N15
\Mult3~374\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mult3~374_sumout\ = SUM(( !\Mult3~410\ $ (!\Mult3~31\ $ (\Mult2~155\)) ) + ( \Mult3~344\ ) + ( \Mult3~343\ ))
-- \Mult3~375\ = CARRY(( !\Mult3~410\ $ (!\Mult3~31\ $ (\Mult2~155\)) ) + ( \Mult3~344\ ) + ( \Mult3~343\ ))
-- \Mult3~376\ = SHARE((!\Mult3~410\ & (\Mult3~31\ & \Mult2~155\)) # (\Mult3~410\ & ((\Mult2~155\) # (\Mult3~31\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010101111100000000000000000101101010100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mult3~410\,
	datac => \ALT_INV_Mult3~31\,
	datad => \ALT_INV_Mult2~155\,
	cin => \Mult3~343\,
	sharein => \Mult3~344\,
	sumout => \Mult3~374_sumout\,
	cout => \Mult3~375\,
	shareout => \Mult3~376\);

-- Location: LABCELL_X31_Y22_N18
\Mult3~378\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mult3~378_sumout\ = SUM(( !\Mult3~32\ $ (!\Mult2~156\ $ (\Mult3~411\)) ) + ( \Mult3~376\ ) + ( \Mult3~375\ ))
-- \Mult3~379\ = CARRY(( !\Mult3~32\ $ (!\Mult2~156\ $ (\Mult3~411\)) ) + ( \Mult3~376\ ) + ( \Mult3~375\ ))
-- \Mult3~380\ = SHARE((!\Mult3~32\ & (\Mult2~156\ & \Mult3~411\)) # (\Mult3~32\ & ((\Mult3~411\) # (\Mult2~156\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110011111100000000000000000011110011000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Mult3~32\,
	datac => \ALT_INV_Mult2~156\,
	datad => \ALT_INV_Mult3~411\,
	cin => \Mult3~375\,
	sharein => \Mult3~376\,
	sumout => \Mult3~378_sumout\,
	cout => \Mult3~379\,
	shareout => \Mult3~380\);

-- Location: DSP_X32_Y26_N0
\Mult2~473\ : cyclonev_mac
-- pragma translate_off
GENERIC MAP (
	accumulate_clock => "none",
	ax_clock => "none",
	ax_width => 14,
	ay_scan_in_clock => "none",
	ay_scan_in_width => 18,
	ay_use_scan_in => "false",
	az_clock => "none",
	bx_clock => "none",
	bx_width => 14,
	by_clock => "none",
	by_use_scan_in => "false",
	by_width => 18,
	bz_clock => "none",
	coef_a_0 => 0,
	coef_a_1 => 0,
	coef_a_2 => 0,
	coef_a_3 => 0,
	coef_a_4 => 0,
	coef_a_5 => 0,
	coef_a_6 => 0,
	coef_a_7 => 0,
	coef_b_0 => 0,
	coef_b_1 => 0,
	coef_b_2 => 0,
	coef_b_3 => 0,
	coef_b_4 => 0,
	coef_b_5 => 0,
	coef_b_6 => 0,
	coef_b_7 => 0,
	coef_sel_a_clock => "none",
	coef_sel_b_clock => "none",
	delay_scan_out_ay => "false",
	delay_scan_out_by => "false",
	enable_double_accum => "false",
	load_const_clock => "none",
	load_const_value => 0,
	mode_sub_location => 0,
	negate_clock => "none",
	operand_source_max => "input",
	operand_source_may => "input",
	operand_source_mbx => "input",
	operand_source_mby => "input",
	operation_mode => "m18x18_sumof2",
	output_clock => "none",
	preadder_subtract_a => "false",
	preadder_subtract_b => "false",
	result_a_width => 64,
	signed_max => "false",
	signed_may => "false",
	signed_mbx => "false",
	signed_mby => "false",
	sub_clock => "none",
	use_chainadder => "false")
-- pragma translate_on
PORT MAP (
	sub => GND,
	negate => GND,
	ax => \Mult2~473_AX_bus\,
	ay => \Mult2~473_AY_bus\,
	bx => \Mult2~473_BX_bus\,
	by => \Mult2~473_BY_bus\,
	resulta => \Mult2~473_RESULTA_bus\);

-- Location: LABCELL_X31_Y24_N0
\Mult2~808\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mult2~808_cout\ = CARRY(( \Mult2~132_resulta\ ) + ( \Mult3~8_resulta\ ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Mult3~8_resulta\,
	datac => \ALT_INV_Mult2~132_resulta\,
	cin => GND,
	cout => \Mult2~808_cout\);

-- Location: LABCELL_X31_Y24_N3
\Mult2~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mult2~45_sumout\ = SUM(( \Mult2~133\ ) + ( \Mult3~9\ ) + ( \Mult2~808_cout\ ))
-- \Mult2~46\ = CARRY(( \Mult2~133\ ) + ( \Mult3~9\ ) + ( \Mult2~808_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mult3~9\,
	datac => \ALT_INV_Mult2~133\,
	cin => \Mult2~808_cout\,
	sumout => \Mult2~45_sumout\,
	cout => \Mult2~46\);

-- Location: LABCELL_X31_Y24_N6
\Mult2~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mult2~49_sumout\ = SUM(( \Mult2~134\ ) + ( \Mult3~10\ ) + ( \Mult2~46\ ))
-- \Mult2~50\ = CARRY(( \Mult2~134\ ) + ( \Mult3~10\ ) + ( \Mult2~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Mult2~134\,
	datac => \ALT_INV_Mult3~10\,
	cin => \Mult2~46\,
	sumout => \Mult2~49_sumout\,
	cout => \Mult2~50\);

-- Location: LABCELL_X31_Y24_N9
\Mult2~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mult2~53_sumout\ = SUM(( \Mult2~135\ ) + ( \Mult3~11\ ) + ( \Mult2~50\ ))
-- \Mult2~54\ = CARRY(( \Mult2~135\ ) + ( \Mult3~11\ ) + ( \Mult2~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mult2~135\,
	dataf => \ALT_INV_Mult3~11\,
	cin => \Mult2~50\,
	sumout => \Mult2~53_sumout\,
	cout => \Mult2~54\);

-- Location: LABCELL_X31_Y24_N12
\Mult2~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mult2~57_sumout\ = SUM(( \Mult3~12\ ) + ( \Mult2~136\ ) + ( \Mult2~54\ ))
-- \Mult2~58\ = CARRY(( \Mult3~12\ ) + ( \Mult2~136\ ) + ( \Mult2~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Mult2~136\,
	datad => \ALT_INV_Mult3~12\,
	cin => \Mult2~54\,
	sumout => \Mult2~57_sumout\,
	cout => \Mult2~58\);

-- Location: LABCELL_X31_Y24_N15
\Mult2~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mult2~41_sumout\ = SUM(( \Mult2~137\ ) + ( \Mult3~13\ ) + ( \Mult2~58\ ))
-- \Mult2~42\ = CARRY(( \Mult2~137\ ) + ( \Mult3~13\ ) + ( \Mult2~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Mult2~137\,
	datac => \ALT_INV_Mult3~13\,
	cin => \Mult2~58\,
	sumout => \Mult2~41_sumout\,
	cout => \Mult2~42\);

-- Location: LABCELL_X31_Y24_N18
\Mult2~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mult2~33_sumout\ = SUM(( \Mult2~138\ ) + ( \Mult3~14\ ) + ( \Mult2~42\ ))
-- \Mult2~34\ = CARRY(( \Mult2~138\ ) + ( \Mult3~14\ ) + ( \Mult2~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Mult2~138\,
	dataf => \ALT_INV_Mult3~14\,
	cin => \Mult2~42\,
	sumout => \Mult2~33_sumout\,
	cout => \Mult2~34\);

-- Location: LABCELL_X31_Y24_N21
\Mult2~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mult2~37_sumout\ = SUM(( \Mult2~139\ ) + ( \Mult3~15\ ) + ( \Mult2~34\ ))
-- \Mult2~38\ = CARRY(( \Mult2~139\ ) + ( \Mult3~15\ ) + ( \Mult2~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mult2~139\,
	datac => \ALT_INV_Mult3~15\,
	cin => \Mult2~34\,
	sumout => \Mult2~37_sumout\,
	cout => \Mult2~38\);

-- Location: LABCELL_X31_Y24_N24
\Mult2~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mult2~29_sumout\ = SUM(( \Mult2~140\ ) + ( \Mult3~16\ ) + ( \Mult2~38\ ))
-- \Mult2~30\ = CARRY(( \Mult2~140\ ) + ( \Mult3~16\ ) + ( \Mult2~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Mult2~140\,
	dataf => \ALT_INV_Mult3~16\,
	cin => \Mult2~38\,
	sumout => \Mult2~29_sumout\,
	cout => \Mult2~30\);

-- Location: LABCELL_X31_Y24_N27
\Mult2~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mult2~89_sumout\ = SUM(( \Mult2~141\ ) + ( \Mult3~17\ ) + ( \Mult2~30\ ))
-- \Mult2~90\ = CARRY(( \Mult2~141\ ) + ( \Mult3~17\ ) + ( \Mult2~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Mult3~17\,
	datac => \ALT_INV_Mult2~141\,
	cin => \Mult2~30\,
	sumout => \Mult2~89_sumout\,
	cout => \Mult2~90\);

-- Location: LABCELL_X31_Y24_N30
\Mult2~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mult2~93_sumout\ = SUM(( \Mult3~18\ ) + ( \Mult2~142\ ) + ( \Mult2~90\ ))
-- \Mult2~94\ = CARRY(( \Mult3~18\ ) + ( \Mult2~142\ ) + ( \Mult2~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Mult2~142\,
	datad => \ALT_INV_Mult3~18\,
	cin => \Mult2~90\,
	sumout => \Mult2~93_sumout\,
	cout => \Mult2~94\);

-- Location: LABCELL_X31_Y24_N33
\Mult2~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mult2~97_sumout\ = SUM(( \Mult2~143\ ) + ( \Mult3~19\ ) + ( \Mult2~94\ ))
-- \Mult2~98\ = CARRY(( \Mult2~143\ ) + ( \Mult3~19\ ) + ( \Mult2~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mult2~143\,
	dataf => \ALT_INV_Mult3~19\,
	cin => \Mult2~94\,
	sumout => \Mult2~97_sumout\,
	cout => \Mult2~98\);

-- Location: LABCELL_X31_Y24_N36
\Mult2~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mult2~101_sumout\ = SUM(( \Mult3~20\ ) + ( \Mult2~144\ ) + ( \Mult2~98\ ))
-- \Mult2~102\ = CARRY(( \Mult3~20\ ) + ( \Mult2~144\ ) + ( \Mult2~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_Mult3~20\,
	dataf => \ALT_INV_Mult2~144\,
	cin => \Mult2~98\,
	sumout => \Mult2~101_sumout\,
	cout => \Mult2~102\);

-- Location: LABCELL_X31_Y24_N39
\Mult2~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mult2~105_sumout\ = SUM(( \Mult2~145\ ) + ( \Mult3~21\ ) + ( \Mult2~102\ ))
-- \Mult2~106\ = CARRY(( \Mult2~145\ ) + ( \Mult3~21\ ) + ( \Mult2~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mult2~145\,
	datab => \ALT_INV_Mult3~21\,
	cin => \Mult2~102\,
	sumout => \Mult2~105_sumout\,
	cout => \Mult2~106\);

-- Location: LABCELL_X31_Y24_N42
\Mult2~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mult2~77_sumout\ = SUM(( \Mult2~146\ ) + ( \Mult3~22\ ) + ( \Mult2~106\ ))
-- \Mult2~78\ = CARRY(( \Mult2~146\ ) + ( \Mult3~22\ ) + ( \Mult2~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Mult3~22\,
	datac => \ALT_INV_Mult2~146\,
	cin => \Mult2~106\,
	sumout => \Mult2~77_sumout\,
	cout => \Mult2~78\);

-- Location: LABCELL_X31_Y24_N45
\Mult2~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mult2~21_sumout\ = SUM(( \Mult2~147\ ) + ( \Mult3~23\ ) + ( \Mult2~78\ ))
-- \Mult2~22\ = CARRY(( \Mult2~147\ ) + ( \Mult3~23\ ) + ( \Mult2~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mult3~23\,
	datac => \ALT_INV_Mult2~147\,
	cin => \Mult2~78\,
	sumout => \Mult2~21_sumout\,
	cout => \Mult2~22\);

-- Location: LABCELL_X31_Y24_N48
\Mult2~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mult2~25_sumout\ = SUM(( \Mult2~148\ ) + ( \Mult3~24\ ) + ( \Mult2~22\ ))
-- \Mult2~26\ = CARRY(( \Mult2~148\ ) + ( \Mult3~24\ ) + ( \Mult2~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Mult2~148\,
	datac => \ALT_INV_Mult3~24\,
	cin => \Mult2~22\,
	sumout => \Mult2~25_sumout\,
	cout => \Mult2~26\);

-- Location: LABCELL_X31_Y24_N51
\Mult2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mult2~1_sumout\ = SUM(( \Mult2~149\ ) + ( \Mult3~25\ ) + ( \Mult2~26\ ))
-- \Mult2~2\ = CARRY(( \Mult2~149\ ) + ( \Mult3~25\ ) + ( \Mult2~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mult2~149\,
	dataf => \ALT_INV_Mult3~25\,
	cin => \Mult2~26\,
	sumout => \Mult2~1_sumout\,
	cout => \Mult2~2\);

-- Location: LABCELL_X31_Y24_N54
\Mult2~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mult2~109_sumout\ = SUM(( \Mult3~382_sumout\ ) + ( \Mult2~473_resulta\ ) + ( \Mult2~2\ ))
-- \Mult2~110\ = CARRY(( \Mult3~382_sumout\ ) + ( \Mult2~473_resulta\ ) + ( \Mult2~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mult2~473_resulta\,
	datab => \ALT_INV_Mult3~382_sumout\,
	cin => \Mult2~2\,
	sumout => \Mult2~109_sumout\,
	cout => \Mult2~110\);

-- Location: LABCELL_X31_Y24_N57
\Mult2~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mult2~113_sumout\ = SUM(( \Mult3~386_sumout\ ) + ( \Mult2~474\ ) + ( \Mult2~110\ ))
-- \Mult2~114\ = CARRY(( \Mult3~386_sumout\ ) + ( \Mult2~474\ ) + ( \Mult2~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Mult3~386_sumout\,
	dataf => \ALT_INV_Mult2~474\,
	cin => \Mult2~110\,
	sumout => \Mult2~113_sumout\,
	cout => \Mult2~114\);

-- Location: LABCELL_X31_Y23_N0
\Mult2~117\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mult2~117_sumout\ = SUM(( \Mult2~475\ ) + ( \Mult3~390_sumout\ ) + ( \Mult2~114\ ))
-- \Mult2~118\ = CARRY(( \Mult2~475\ ) + ( \Mult3~390_sumout\ ) + ( \Mult2~114\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Mult2~475\,
	dataf => \ALT_INV_Mult3~390_sumout\,
	cin => \Mult2~114\,
	sumout => \Mult2~117_sumout\,
	cout => \Mult2~118\);

-- Location: LABCELL_X31_Y23_N3
\Mult2~121\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mult2~121_sumout\ = SUM(( \Mult3~394_sumout\ ) + ( \Mult2~476\ ) + ( \Mult2~118\ ))
-- \Mult2~122\ = CARRY(( \Mult3~394_sumout\ ) + ( \Mult2~476\ ) + ( \Mult2~118\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Mult2~476\,
	datac => \ALT_INV_Mult3~394_sumout\,
	cin => \Mult2~118\,
	sumout => \Mult2~121_sumout\,
	cout => \Mult2~122\);

-- Location: LABCELL_X31_Y23_N6
\Mult2~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mult2~5_sumout\ = SUM(( \Mult2~477\ ) + ( \Mult3~342_sumout\ ) + ( \Mult2~122\ ))
-- \Mult2~6\ = CARRY(( \Mult2~477\ ) + ( \Mult3~342_sumout\ ) + ( \Mult2~122\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Mult2~477\,
	dataf => \ALT_INV_Mult3~342_sumout\,
	cin => \Mult2~122\,
	sumout => \Mult2~5_sumout\,
	cout => \Mult2~6\);

-- Location: LABCELL_X31_Y23_N9
\Mult2~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mult2~81_sumout\ = SUM(( \Mult3~374_sumout\ ) + ( \Mult2~478\ ) + ( \Mult2~6\ ))
-- \Mult2~82\ = CARRY(( \Mult3~374_sumout\ ) + ( \Mult2~478\ ) + ( \Mult2~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mult2~478\,
	datac => \ALT_INV_Mult3~374_sumout\,
	cin => \Mult2~6\,
	sumout => \Mult2~81_sumout\,
	cout => \Mult2~82\);

-- Location: LABCELL_X31_Y23_N12
\Mult2~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mult2~85_sumout\ = SUM(( \Mult3~378_sumout\ ) + ( \Mult2~479\ ) + ( \Mult2~82\ ))
-- \Mult2~86\ = CARRY(( \Mult3~378_sumout\ ) + ( \Mult2~479\ ) + ( \Mult2~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Mult3~378_sumout\,
	datac => \ALT_INV_Mult2~479\,
	cin => \Mult2~82\,
	sumout => \Mult2~85_sumout\,
	cout => \Mult2~86\);

-- Location: LABCELL_X30_Y24_N30
\kale~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \kale~3_combout\ = ( !\Mult2~89_sumout\ & ( !\Mult2~105_sumout\ & ( (!\Mult2~97_sumout\ & (!\Mult2~101_sumout\ & !\Mult2~93_sumout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mult2~97_sumout\,
	datab => \ALT_INV_Mult2~101_sumout\,
	datac => \ALT_INV_Mult2~93_sumout\,
	datae => \ALT_INV_Mult2~89_sumout\,
	dataf => \ALT_INV_Mult2~105_sumout\,
	combout => \kale~3_combout\);

-- Location: LABCELL_X29_Y23_N24
\kale~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \kale~4_combout\ = ( !\Mult2~81_sumout\ & ( !\Mult2~77_sumout\ & ( (!\Mult2~85_sumout\ & \kale~3_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Mult2~85_sumout\,
	datac => \ALT_INV_kale~3_combout\,
	datae => \ALT_INV_Mult2~81_sumout\,
	dataf => \ALT_INV_Mult2~77_sumout\,
	combout => \kale~4_combout\);

-- Location: LABCELL_X31_Y23_N57
\kale~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \kale~5_combout\ = ( !\Mult2~113_sumout\ & ( !\Mult2~109_sumout\ & ( (!\Mult2~117_sumout\ & !\Mult2~121_sumout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mult2~117_sumout\,
	datad => \ALT_INV_Mult2~121_sumout\,
	datae => \ALT_INV_Mult2~113_sumout\,
	dataf => \ALT_INV_Mult2~109_sumout\,
	combout => \kale~5_combout\);

-- Location: LABCELL_X31_Y22_N21
\Mult3~358\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mult3~358_sumout\ = SUM(( !\Mult3~33\ $ (!\Mult2~157\ $ (\Mult3~412\)) ) + ( \Mult3~380\ ) + ( \Mult3~379\ ))
-- \Mult3~359\ = CARRY(( !\Mult3~33\ $ (!\Mult2~157\ $ (\Mult3~412\)) ) + ( \Mult3~380\ ) + ( \Mult3~379\ ))
-- \Mult3~360\ = SHARE((!\Mult3~33\ & (\Mult2~157\ & \Mult3~412\)) # (\Mult3~33\ & ((\Mult3~412\) # (\Mult2~157\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010101111100000000000000000101101010100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mult3~33\,
	datac => \ALT_INV_Mult2~157\,
	datad => \ALT_INV_Mult3~412\,
	cin => \Mult3~379\,
	sharein => \Mult3~380\,
	sumout => \Mult3~358_sumout\,
	cout => \Mult3~359\,
	shareout => \Mult3~360\);

-- Location: LABCELL_X31_Y22_N24
\Mult3~362\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mult3~362_sumout\ = SUM(( !\Mult3~413\ $ (!\Mult3~34\ $ (\Mult2~158\)) ) + ( \Mult3~360\ ) + ( \Mult3~359\ ))
-- \Mult3~363\ = CARRY(( !\Mult3~413\ $ (!\Mult3~34\ $ (\Mult2~158\)) ) + ( \Mult3~360\ ) + ( \Mult3~359\ ))
-- \Mult3~364\ = SHARE((!\Mult3~413\ & (\Mult3~34\ & \Mult2~158\)) # (\Mult3~413\ & ((\Mult2~158\) # (\Mult3~34\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110011111100000000000000000011110011000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Mult3~413\,
	datac => \ALT_INV_Mult3~34\,
	datad => \ALT_INV_Mult2~158\,
	cin => \Mult3~359\,
	sharein => \Mult3~360\,
	sumout => \Mult3~362_sumout\,
	cout => \Mult3~363\,
	shareout => \Mult3~364\);

-- Location: LABCELL_X31_Y22_N27
\Mult3~346\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mult3~346_sumout\ = SUM(( !\Mult3~35\ $ (!\Mult3~414\ $ (\Mult2~159\)) ) + ( \Mult3~364\ ) + ( \Mult3~363\ ))
-- \Mult3~347\ = CARRY(( !\Mult3~35\ $ (!\Mult3~414\ $ (\Mult2~159\)) ) + ( \Mult3~364\ ) + ( \Mult3~363\ ))
-- \Mult3~348\ = SHARE((!\Mult3~35\ & (\Mult3~414\ & \Mult2~159\)) # (\Mult3~35\ & ((\Mult2~159\) # (\Mult3~414\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010101111100000000000000000101101010100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mult3~35\,
	datac => \ALT_INV_Mult3~414\,
	datad => \ALT_INV_Mult2~159\,
	cin => \Mult3~363\,
	sharein => \Mult3~364\,
	sumout => \Mult3~346_sumout\,
	cout => \Mult3~347\,
	shareout => \Mult3~348\);

-- Location: LABCELL_X31_Y22_N30
\Mult3~350\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mult3~350_sumout\ = SUM(( !\Mult3~36\ $ (!\Mult2~160\ $ (\Mult3~415\)) ) + ( \Mult3~348\ ) + ( \Mult3~347\ ))
-- \Mult3~351\ = CARRY(( !\Mult3~36\ $ (!\Mult2~160\ $ (\Mult3~415\)) ) + ( \Mult3~348\ ) + ( \Mult3~347\ ))
-- \Mult3~352\ = SHARE((!\Mult3~36\ & (\Mult2~160\ & \Mult3~415\)) # (\Mult3~36\ & ((\Mult3~415\) # (\Mult2~160\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010101111100000000000000000101101010100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mult3~36\,
	datac => \ALT_INV_Mult2~160\,
	datad => \ALT_INV_Mult3~415\,
	cin => \Mult3~347\,
	sharein => \Mult3~348\,
	sumout => \Mult3~350_sumout\,
	cout => \Mult3~351\,
	shareout => \Mult3~352\);

-- Location: LABCELL_X31_Y22_N33
\Mult3~354\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mult3~354_sumout\ = SUM(( !\Mult3~37\ $ (!\Mult2~161\ $ (\Mult3~416\)) ) + ( \Mult3~352\ ) + ( \Mult3~351\ ))
-- \Mult3~355\ = CARRY(( !\Mult3~37\ $ (!\Mult2~161\ $ (\Mult3~416\)) ) + ( \Mult3~352\ ) + ( \Mult3~351\ ))
-- \Mult3~356\ = SHARE((!\Mult3~37\ & (\Mult2~161\ & \Mult3~416\)) # (\Mult3~37\ & ((\Mult3~416\) # (\Mult2~161\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110011111100000000000000000011110011000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Mult3~37\,
	datac => \ALT_INV_Mult2~161\,
	datad => \ALT_INV_Mult3~416\,
	cin => \Mult3~351\,
	sharein => \Mult3~352\,
	sumout => \Mult3~354_sumout\,
	cout => \Mult3~355\,
	shareout => \Mult3~356\);

-- Location: LABCELL_X31_Y22_N36
\Mult3~366\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mult3~366_sumout\ = SUM(( !\Mult3~417\ $ (!\Mult2~162\ $ (\Mult3~38\)) ) + ( \Mult3~356\ ) + ( \Mult3~355\ ))
-- \Mult3~367\ = CARRY(( !\Mult3~417\ $ (!\Mult2~162\ $ (\Mult3~38\)) ) + ( \Mult3~356\ ) + ( \Mult3~355\ ))
-- \Mult3~368\ = SHARE((!\Mult3~417\ & (\Mult2~162\ & \Mult3~38\)) # (\Mult3~417\ & ((\Mult3~38\) # (\Mult2~162\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110011111100000000000000000011110011000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Mult3~417\,
	datac => \ALT_INV_Mult2~162\,
	datad => \ALT_INV_Mult3~38\,
	cin => \Mult3~355\,
	sharein => \Mult3~356\,
	sumout => \Mult3~366_sumout\,
	cout => \Mult3~367\,
	shareout => \Mult3~368\);

-- Location: LABCELL_X31_Y23_N15
\Mult2~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mult2~61_sumout\ = SUM(( \Mult3~358_sumout\ ) + ( \Mult2~480\ ) + ( \Mult2~86\ ))
-- \Mult2~62\ = CARRY(( \Mult3~358_sumout\ ) + ( \Mult2~480\ ) + ( \Mult2~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mult2~480\,
	datac => \ALT_INV_Mult3~358_sumout\,
	cin => \Mult2~86\,
	sumout => \Mult2~61_sumout\,
	cout => \Mult2~62\);

-- Location: LABCELL_X31_Y23_N18
\Mult2~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mult2~65_sumout\ = SUM(( \Mult3~362_sumout\ ) + ( \Mult2~481\ ) + ( \Mult2~62\ ))
-- \Mult2~66\ = CARRY(( \Mult3~362_sumout\ ) + ( \Mult2~481\ ) + ( \Mult2~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Mult3~362_sumout\,
	datac => \ALT_INV_Mult2~481\,
	cin => \Mult2~62\,
	sumout => \Mult2~65_sumout\,
	cout => \Mult2~66\);

-- Location: LABCELL_X31_Y23_N21
\Mult2~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mult2~9_sumout\ = SUM(( \Mult3~346_sumout\ ) + ( \Mult2~482\ ) + ( \Mult2~66\ ))
-- \Mult2~10\ = CARRY(( \Mult3~346_sumout\ ) + ( \Mult2~482\ ) + ( \Mult2~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mult2~482\,
	datac => \ALT_INV_Mult3~346_sumout\,
	cin => \Mult2~66\,
	sumout => \Mult2~9_sumout\,
	cout => \Mult2~10\);

-- Location: LABCELL_X31_Y23_N24
\Mult2~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mult2~13_sumout\ = SUM(( \Mult3~350_sumout\ ) + ( \Mult2~483\ ) + ( \Mult2~10\ ))
-- \Mult2~14\ = CARRY(( \Mult3~350_sumout\ ) + ( \Mult2~483\ ) + ( \Mult2~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Mult3~350_sumout\,
	dataf => \ALT_INV_Mult2~483\,
	cin => \Mult2~10\,
	sumout => \Mult2~13_sumout\,
	cout => \Mult2~14\);

-- Location: LABCELL_X31_Y23_N27
\Mult2~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mult2~17_sumout\ = SUM(( \Mult3~354_sumout\ ) + ( \Mult2~484\ ) + ( \Mult2~14\ ))
-- \Mult2~18\ = CARRY(( \Mult3~354_sumout\ ) + ( \Mult2~484\ ) + ( \Mult2~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mult2~484\,
	datac => \ALT_INV_Mult3~354_sumout\,
	cin => \Mult2~14\,
	sumout => \Mult2~17_sumout\,
	cout => \Mult2~18\);

-- Location: LABCELL_X31_Y23_N30
\Mult2~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mult2~69_sumout\ = SUM(( \Mult3~366_sumout\ ) + ( \Mult2~485\ ) + ( \Mult2~18\ ))
-- \Mult2~70\ = CARRY(( \Mult3~366_sumout\ ) + ( \Mult2~485\ ) + ( \Mult2~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Mult3~366_sumout\,
	datac => \ALT_INV_Mult2~485\,
	cin => \Mult2~18\,
	sumout => \Mult2~69_sumout\,
	cout => \Mult2~70\);

-- Location: LABCELL_X31_Y22_N39
\Mult3~370\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mult3~370_sumout\ = SUM(( !\Mult2~163\ $ (!\Mult3~39\ $ (\Mult3~418\)) ) + ( \Mult3~368\ ) + ( \Mult3~367\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101101010100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mult2~163\,
	datac => \ALT_INV_Mult3~39\,
	datad => \ALT_INV_Mult3~418\,
	cin => \Mult3~367\,
	sharein => \Mult3~368\,
	sumout => \Mult3~370_sumout\);

-- Location: LABCELL_X31_Y23_N33
\Mult2~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mult2~73_sumout\ = SUM(( \Mult3~370_sumout\ ) + ( \Mult2~486\ ) + ( \Mult2~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mult2~486\,
	datac => \ALT_INV_Mult3~370_sumout\,
	cin => \Mult2~70\,
	sumout => \Mult2~73_sumout\);

-- Location: LABCELL_X29_Y23_N30
\kale~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \kale~6_combout\ = ( !\Mult2~73_sumout\ & ( !\Mult2~65_sumout\ & ( (\kale~4_combout\ & (\kale~5_combout\ & (!\Mult2~69_sumout\ & !\Mult2~61_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_kale~4_combout\,
	datab => \ALT_INV_kale~5_combout\,
	datac => \ALT_INV_Mult2~69_sumout\,
	datad => \ALT_INV_Mult2~61_sumout\,
	datae => \ALT_INV_Mult2~73_sumout\,
	dataf => \ALT_INV_Mult2~65_sumout\,
	combout => \kale~6_combout\);

-- Location: LABCELL_X33_Y24_N39
\kale~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \kale~0_combout\ = ( \Mult2~53_sumout\ & ( \Mult2~57_sumout\ & ( \Mult2~41_sumout\ ) ) ) # ( !\Mult2~53_sumout\ & ( \Mult2~57_sumout\ & ( \Mult2~41_sumout\ ) ) ) # ( \Mult2~53_sumout\ & ( !\Mult2~57_sumout\ & ( \Mult2~41_sumout\ ) ) ) # ( 
-- !\Mult2~53_sumout\ & ( !\Mult2~57_sumout\ & ( (\Mult2~41_sumout\ & ((\Mult2~49_sumout\) # (\Mult2~45_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011100000111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mult2~45_sumout\,
	datab => \ALT_INV_Mult2~49_sumout\,
	datac => \ALT_INV_Mult2~41_sumout\,
	datae => \ALT_INV_Mult2~53_sumout\,
	dataf => \ALT_INV_Mult2~57_sumout\,
	combout => \kale~0_combout\);

-- Location: LABCELL_X30_Y24_N12
\kale~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \kale~1_combout\ = ( !\Mult2~25_sumout\ & ( \kale~0_combout\ & ( (!\Mult2~29_sumout\ & !\Mult2~21_sumout\) ) ) ) # ( !\Mult2~25_sumout\ & ( !\kale~0_combout\ & ( (!\Mult2~21_sumout\ & ((!\Mult2~29_sumout\) # ((!\Mult2~37_sumout\ & !\Mult2~33_sumout\)))) ) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110000011000000000000000000000011000000110000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mult2~37_sumout\,
	datab => \ALT_INV_Mult2~29_sumout\,
	datac => \ALT_INV_Mult2~21_sumout\,
	datad => \ALT_INV_Mult2~33_sumout\,
	datae => \ALT_INV_Mult2~25_sumout\,
	dataf => \ALT_INV_kale~0_combout\,
	combout => \kale~1_combout\);

-- Location: LABCELL_X31_Y23_N36
\kale~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \kale~2_combout\ = ( !\Mult2~17_sumout\ & ( !\Mult2~13_sumout\ & ( (!\Mult2~1_sumout\ & (!\Mult2~5_sumout\ & (!\Mult2~9_sumout\ & \kale~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mult2~1_sumout\,
	datab => \ALT_INV_Mult2~5_sumout\,
	datac => \ALT_INV_Mult2~9_sumout\,
	datad => \ALT_INV_kale~1_combout\,
	datae => \ALT_INV_Mult2~17_sumout\,
	dataf => \ALT_INV_Mult2~13_sumout\,
	combout => \kale~2_combout\);

-- Location: DSP_X20_Y24_N0
\Mult0~477\ : cyclonev_mac
-- pragma translate_off
GENERIC MAP (
	accumulate_clock => "none",
	ax_clock => "none",
	ax_width => 14,
	ay_scan_in_clock => "none",
	ay_scan_in_width => 18,
	ay_use_scan_in => "false",
	az_clock => "none",
	bx_clock => "none",
	bx_width => 14,
	by_clock => "none",
	by_use_scan_in => "false",
	by_width => 18,
	bz_clock => "none",
	coef_a_0 => 0,
	coef_a_1 => 0,
	coef_a_2 => 0,
	coef_a_3 => 0,
	coef_a_4 => 0,
	coef_a_5 => 0,
	coef_a_6 => 0,
	coef_a_7 => 0,
	coef_b_0 => 0,
	coef_b_1 => 0,
	coef_b_2 => 0,
	coef_b_3 => 0,
	coef_b_4 => 0,
	coef_b_5 => 0,
	coef_b_6 => 0,
	coef_b_7 => 0,
	coef_sel_a_clock => "none",
	coef_sel_b_clock => "none",
	delay_scan_out_ay => "false",
	delay_scan_out_by => "false",
	enable_double_accum => "false",
	load_const_clock => "none",
	load_const_value => 0,
	mode_sub_location => 0,
	negate_clock => "none",
	operand_source_max => "input",
	operand_source_may => "input",
	operand_source_mbx => "input",
	operand_source_mby => "input",
	operation_mode => "m18x18_sumof2",
	output_clock => "none",
	preadder_subtract_a => "false",
	preadder_subtract_b => "false",
	result_a_width => 64,
	signed_max => "false",
	signed_may => "false",
	signed_mbx => "false",
	signed_mby => "false",
	sub_clock => "none",
	use_chainadder => "false")
-- pragma translate_on
PORT MAP (
	sub => GND,
	negate => GND,
	ax => \Mult0~477_AX_bus\,
	ay => \Mult0~477_AY_bus\,
	bx => \Mult0~477_BX_bus\,
	by => \Mult0~477_BY_bus\,
	resulta => \Mult0~477_RESULTA_bus\);

-- Location: DSP_X20_Y26_N0
\Mult0~136\ : cyclonev_mac
-- pragma translate_off
GENERIC MAP (
	accumulate_clock => "none",
	ax_clock => "none",
	ax_width => 18,
	ay_scan_in_clock => "none",
	ay_scan_in_width => 18,
	ay_use_scan_in => "false",
	az_clock => "none",
	bx_clock => "none",
	by_clock => "none",
	by_use_scan_in => "false",
	bz_clock => "none",
	coef_a_0 => 0,
	coef_a_1 => 0,
	coef_a_2 => 0,
	coef_a_3 => 0,
	coef_a_4 => 0,
	coef_a_5 => 0,
	coef_a_6 => 0,
	coef_a_7 => 0,
	coef_b_0 => 0,
	coef_b_1 => 0,
	coef_b_2 => 0,
	coef_b_3 => 0,
	coef_b_4 => 0,
	coef_b_5 => 0,
	coef_b_6 => 0,
	coef_b_7 => 0,
	coef_sel_a_clock => "none",
	coef_sel_b_clock => "none",
	delay_scan_out_ay => "false",
	delay_scan_out_by => "false",
	enable_double_accum => "false",
	load_const_clock => "none",
	load_const_value => 0,
	mode_sub_location => 0,
	negate_clock => "none",
	operand_source_max => "input",
	operand_source_may => "input",
	operand_source_mbx => "input",
	operand_source_mby => "input",
	operation_mode => "m18x18_full",
	output_clock => "none",
	preadder_subtract_a => "false",
	preadder_subtract_b => "false",
	result_a_width => 64,
	signed_max => "false",
	signed_may => "false",
	signed_mbx => "false",
	signed_mby => "false",
	sub_clock => "none",
	use_chainadder => "false")
-- pragma translate_on
PORT MAP (
	sub => GND,
	negate => GND,
	ax => \Mult0~136_AX_bus\,
	ay => \Mult0~136_AY_bus\,
	resulta => \Mult0~136_RESULTA_bus\);

-- Location: DSP_X20_Y28_N0
\Mult1~8\ : cyclonev_mac
-- pragma translate_off
GENERIC MAP (
	accumulate_clock => "none",
	ax_clock => "none",
	ax_width => 18,
	ay_scan_in_clock => "none",
	ay_scan_in_width => 18,
	ay_use_scan_in => "false",
	az_clock => "none",
	bx_clock => "none",
	by_clock => "none",
	by_use_scan_in => "false",
	bz_clock => "none",
	coef_a_0 => 0,
	coef_a_1 => 0,
	coef_a_2 => 0,
	coef_a_3 => 0,
	coef_a_4 => 0,
	coef_a_5 => 0,
	coef_a_6 => 0,
	coef_a_7 => 0,
	coef_b_0 => 0,
	coef_b_1 => 0,
	coef_b_2 => 0,
	coef_b_3 => 0,
	coef_b_4 => 0,
	coef_b_5 => 0,
	coef_b_6 => 0,
	coef_b_7 => 0,
	coef_sel_a_clock => "none",
	coef_sel_b_clock => "none",
	delay_scan_out_ay => "false",
	delay_scan_out_by => "false",
	enable_double_accum => "false",
	load_const_clock => "none",
	load_const_value => 0,
	mode_sub_location => 0,
	negate_clock => "none",
	operand_source_max => "input",
	operand_source_may => "input",
	operand_source_mbx => "input",
	operand_source_mby => "input",
	operation_mode => "m18x18_full",
	output_clock => "none",
	preadder_subtract_a => "false",
	preadder_subtract_b => "false",
	result_a_width => 64,
	signed_max => "false",
	signed_may => "false",
	signed_mbx => "false",
	signed_mby => "false",
	sub_clock => "none",
	use_chainadder => "false")
-- pragma translate_on
PORT MAP (
	sub => GND,
	negate => GND,
	ax => \Mult1~8_AX_bus\,
	ay => \Mult1~8_AY_bus\,
	resulta => \Mult1~8_RESULTA_bus\);

-- Location: DSP_X32_Y28_N0
\Mult1~405\ : cyclonev_mac
-- pragma translate_off
GENERIC MAP (
	accumulate_clock => "none",
	ax_clock => "none",
	ax_width => 14,
	ay_scan_in_clock => "none",
	ay_scan_in_width => 18,
	ay_use_scan_in => "false",
	az_clock => "none",
	bx_clock => "none",
	bx_width => 14,
	by_clock => "none",
	by_use_scan_in => "false",
	by_width => 18,
	bz_clock => "none",
	coef_a_0 => 0,
	coef_a_1 => 0,
	coef_a_2 => 0,
	coef_a_3 => 0,
	coef_a_4 => 0,
	coef_a_5 => 0,
	coef_a_6 => 0,
	coef_a_7 => 0,
	coef_b_0 => 0,
	coef_b_1 => 0,
	coef_b_2 => 0,
	coef_b_3 => 0,
	coef_b_4 => 0,
	coef_b_5 => 0,
	coef_b_6 => 0,
	coef_b_7 => 0,
	coef_sel_a_clock => "none",
	coef_sel_b_clock => "none",
	delay_scan_out_ay => "false",
	delay_scan_out_by => "false",
	enable_double_accum => "false",
	load_const_clock => "none",
	load_const_value => 0,
	mode_sub_location => 0,
	negate_clock => "none",
	operand_source_max => "input",
	operand_source_may => "input",
	operand_source_mbx => "input",
	operand_source_mby => "input",
	operation_mode => "m18x18_sumof2",
	output_clock => "none",
	preadder_subtract_a => "false",
	preadder_subtract_b => "false",
	result_a_width => 64,
	signed_max => "false",
	signed_may => "false",
	signed_mbx => "false",
	signed_mby => "false",
	sub_clock => "none",
	use_chainadder => "false")
-- pragma translate_on
PORT MAP (
	sub => GND,
	negate => GND,
	ax => \Mult1~405_AX_bus\,
	ay => \Mult1~405_AY_bus\,
	bx => \Mult1~405_BX_bus\,
	by => \Mult1~405_BY_bus\,
	resulta => \Mult1~405_RESULTA_bus\);

-- Location: MLABCELL_X21_Y28_N0
\Mult1~358\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mult1~358_sumout\ = SUM(( !\Mult1~26\ $ (!\Mult1~405_resulta\ $ (\Mult0~154\)) ) + ( !VCC ) + ( !VCC ))
-- \Mult1~359\ = CARRY(( !\Mult1~26\ $ (!\Mult1~405_resulta\ $ (\Mult0~154\)) ) + ( !VCC ) + ( !VCC ))
-- \Mult1~360\ = SHARE((!\Mult1~26\ & (\Mult1~405_resulta\ & \Mult0~154\)) # (\Mult1~26\ & ((\Mult0~154\) # (\Mult1~405_resulta\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110011111100000000000000000011110011000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Mult1~26\,
	datac => \ALT_INV_Mult1~405_resulta\,
	datad => \ALT_INV_Mult0~154\,
	cin => GND,
	sharein => GND,
	sumout => \Mult1~358_sumout\,
	cout => \Mult1~359\,
	shareout => \Mult1~360\);

-- Location: MLABCELL_X21_Y28_N3
\Mult1~362\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mult1~362_sumout\ = SUM(( !\Mult1~406\ $ (!\Mult0~155\ $ (\Mult1~27\)) ) + ( \Mult1~360\ ) + ( \Mult1~359\ ))
-- \Mult1~363\ = CARRY(( !\Mult1~406\ $ (!\Mult0~155\ $ (\Mult1~27\)) ) + ( \Mult1~360\ ) + ( \Mult1~359\ ))
-- \Mult1~364\ = SHARE((!\Mult1~406\ & (\Mult0~155\ & \Mult1~27\)) # (\Mult1~406\ & ((\Mult1~27\) # (\Mult0~155\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010101111100000000000000000101101010100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mult1~406\,
	datac => \ALT_INV_Mult0~155\,
	datad => \ALT_INV_Mult1~27\,
	cin => \Mult1~359\,
	sharein => \Mult1~360\,
	sumout => \Mult1~362_sumout\,
	cout => \Mult1~363\,
	shareout => \Mult1~364\);

-- Location: MLABCELL_X21_Y28_N6
\Mult1~366\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mult1~366_sumout\ = SUM(( !\Mult1~407\ $ (!\Mult1~28\ $ (\Mult0~156\)) ) + ( \Mult1~364\ ) + ( \Mult1~363\ ))
-- \Mult1~367\ = CARRY(( !\Mult1~407\ $ (!\Mult1~28\ $ (\Mult0~156\)) ) + ( \Mult1~364\ ) + ( \Mult1~363\ ))
-- \Mult1~368\ = SHARE((!\Mult1~407\ & (\Mult1~28\ & \Mult0~156\)) # (\Mult1~407\ & ((\Mult0~156\) # (\Mult1~28\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110011111100000000000000000011110011000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Mult1~407\,
	datac => \ALT_INV_Mult1~28\,
	datad => \ALT_INV_Mult0~156\,
	cin => \Mult1~363\,
	sharein => \Mult1~364\,
	sumout => \Mult1~366_sumout\,
	cout => \Mult1~367\,
	shareout => \Mult1~368\);

-- Location: MLABCELL_X21_Y28_N9
\Mult1~394\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mult1~394_sumout\ = SUM(( !\Mult0~157\ $ (!\Mult1~29\ $ (\Mult1~408\)) ) + ( \Mult1~368\ ) + ( \Mult1~367\ ))
-- \Mult1~395\ = CARRY(( !\Mult0~157\ $ (!\Mult1~29\ $ (\Mult1~408\)) ) + ( \Mult1~368\ ) + ( \Mult1~367\ ))
-- \Mult1~396\ = SHARE((!\Mult0~157\ & (\Mult1~29\ & \Mult1~408\)) # (\Mult0~157\ & ((\Mult1~408\) # (\Mult1~29\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010101111100000000000000000101101010100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mult0~157\,
	datac => \ALT_INV_Mult1~29\,
	datad => \ALT_INV_Mult1~408\,
	cin => \Mult1~367\,
	sharein => \Mult1~368\,
	sumout => \Mult1~394_sumout\,
	cout => \Mult1~395\,
	shareout => \Mult1~396\);

-- Location: MLABCELL_X21_Y28_N12
\Mult1~342\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mult1~342_sumout\ = SUM(( !\Mult1~30\ $ (!\Mult0~158\ $ (\Mult1~409\)) ) + ( \Mult1~396\ ) + ( \Mult1~395\ ))
-- \Mult1~343\ = CARRY(( !\Mult1~30\ $ (!\Mult0~158\ $ (\Mult1~409\)) ) + ( \Mult1~396\ ) + ( \Mult1~395\ ))
-- \Mult1~344\ = SHARE((!\Mult1~30\ & (\Mult0~158\ & \Mult1~409\)) # (\Mult1~30\ & ((\Mult1~409\) # (\Mult0~158\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110011111100000000000000000011110011000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Mult1~30\,
	datac => \ALT_INV_Mult0~158\,
	datad => \ALT_INV_Mult1~409\,
	cin => \Mult1~395\,
	sharein => \Mult1~396\,
	sumout => \Mult1~342_sumout\,
	cout => \Mult1~343\,
	shareout => \Mult1~344\);

-- Location: MLABCELL_X21_Y28_N15
\Mult1~382\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mult1~382_sumout\ = SUM(( !\Mult0~159\ $ (!\Mult1~410\ $ (\Mult1~31\)) ) + ( \Mult1~344\ ) + ( \Mult1~343\ ))
-- \Mult1~383\ = CARRY(( !\Mult0~159\ $ (!\Mult1~410\ $ (\Mult1~31\)) ) + ( \Mult1~344\ ) + ( \Mult1~343\ ))
-- \Mult1~384\ = SHARE((!\Mult0~159\ & (\Mult1~410\ & \Mult1~31\)) # (\Mult0~159\ & ((\Mult1~31\) # (\Mult1~410\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010101111100000000000000000101101010100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mult0~159\,
	datac => \ALT_INV_Mult1~410\,
	datad => \ALT_INV_Mult1~31\,
	cin => \Mult1~343\,
	sharein => \Mult1~344\,
	sumout => \Mult1~382_sumout\,
	cout => \Mult1~383\,
	shareout => \Mult1~384\);

-- Location: MLABCELL_X21_Y28_N18
\Mult1~370\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mult1~370_sumout\ = SUM(( !\Mult0~160\ $ (!\Mult1~411\ $ (\Mult1~32\)) ) + ( \Mult1~384\ ) + ( \Mult1~383\ ))
-- \Mult1~371\ = CARRY(( !\Mult0~160\ $ (!\Mult1~411\ $ (\Mult1~32\)) ) + ( \Mult1~384\ ) + ( \Mult1~383\ ))
-- \Mult1~372\ = SHARE((!\Mult0~160\ & (\Mult1~411\ & \Mult1~32\)) # (\Mult0~160\ & ((\Mult1~32\) # (\Mult1~411\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110011111100000000000000000011110011000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Mult0~160\,
	datac => \ALT_INV_Mult1~411\,
	datad => \ALT_INV_Mult1~32\,
	cin => \Mult1~383\,
	sharein => \Mult1~384\,
	sumout => \Mult1~370_sumout\,
	cout => \Mult1~371\,
	shareout => \Mult1~372\);

-- Location: MLABCELL_X21_Y28_N21
\Mult1~346\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mult1~346_sumout\ = SUM(( !\Mult1~412\ $ (!\Mult1~33\ $ (\Mult0~161\)) ) + ( \Mult1~372\ ) + ( \Mult1~371\ ))
-- \Mult1~347\ = CARRY(( !\Mult1~412\ $ (!\Mult1~33\ $ (\Mult0~161\)) ) + ( \Mult1~372\ ) + ( \Mult1~371\ ))
-- \Mult1~348\ = SHARE((!\Mult1~412\ & (\Mult1~33\ & \Mult0~161\)) # (\Mult1~412\ & ((\Mult0~161\) # (\Mult1~33\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010101111100000000000000000101101010100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mult1~412\,
	datac => \ALT_INV_Mult1~33\,
	datad => \ALT_INV_Mult0~161\,
	cin => \Mult1~371\,
	sharein => \Mult1~372\,
	sumout => \Mult1~346_sumout\,
	cout => \Mult1~347\,
	shareout => \Mult1~348\);

-- Location: MLABCELL_X21_Y28_N24
\Mult1~386\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mult1~386_sumout\ = SUM(( !\Mult1~413\ $ (!\Mult0~162\ $ (\Mult1~34\)) ) + ( \Mult1~348\ ) + ( \Mult1~347\ ))
-- \Mult1~387\ = CARRY(( !\Mult1~413\ $ (!\Mult0~162\ $ (\Mult1~34\)) ) + ( \Mult1~348\ ) + ( \Mult1~347\ ))
-- \Mult1~388\ = SHARE((!\Mult1~413\ & (\Mult0~162\ & \Mult1~34\)) # (\Mult1~413\ & ((\Mult1~34\) # (\Mult0~162\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110011111100000000000000000011110011000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Mult1~413\,
	datac => \ALT_INV_Mult0~162\,
	datad => \ALT_INV_Mult1~34\,
	cin => \Mult1~347\,
	sharein => \Mult1~348\,
	sumout => \Mult1~386_sumout\,
	cout => \Mult1~387\,
	shareout => \Mult1~388\);

-- Location: MLABCELL_X21_Y28_N27
\Mult1~350\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mult1~350_sumout\ = SUM(( !\Mult1~414\ $ (!\Mult0~163\ $ (\Mult1~35\)) ) + ( \Mult1~388\ ) + ( \Mult1~387\ ))
-- \Mult1~351\ = CARRY(( !\Mult1~414\ $ (!\Mult0~163\ $ (\Mult1~35\)) ) + ( \Mult1~388\ ) + ( \Mult1~387\ ))
-- \Mult1~352\ = SHARE((!\Mult1~414\ & (\Mult0~163\ & \Mult1~35\)) # (\Mult1~414\ & ((\Mult1~35\) # (\Mult0~163\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010101111100000000000000000101101010100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mult1~414\,
	datac => \ALT_INV_Mult0~163\,
	datad => \ALT_INV_Mult1~35\,
	cin => \Mult1~387\,
	sharein => \Mult1~388\,
	sumout => \Mult1~350_sumout\,
	cout => \Mult1~351\,
	shareout => \Mult1~352\);

-- Location: MLABCELL_X21_Y28_N30
\Mult1~354\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mult1~354_sumout\ = SUM(( !\Mult0~164\ $ (!\Mult1~36\ $ (\Mult1~415\)) ) + ( \Mult1~352\ ) + ( \Mult1~351\ ))
-- \Mult1~355\ = CARRY(( !\Mult0~164\ $ (!\Mult1~36\ $ (\Mult1~415\)) ) + ( \Mult1~352\ ) + ( \Mult1~351\ ))
-- \Mult1~356\ = SHARE((!\Mult0~164\ & (\Mult1~36\ & \Mult1~415\)) # (\Mult0~164\ & ((\Mult1~415\) # (\Mult1~36\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010101111100000000000000000101101010100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mult0~164\,
	datac => \ALT_INV_Mult1~36\,
	datad => \ALT_INV_Mult1~415\,
	cin => \Mult1~351\,
	sharein => \Mult1~352\,
	sumout => \Mult1~354_sumout\,
	cout => \Mult1~355\,
	shareout => \Mult1~356\);

-- Location: MLABCELL_X21_Y26_N0
\Mult0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mult0~45_sumout\ = SUM(( \Mult0~136_resulta\ ) + ( \Mult1~8_resulta\ ) + ( !VCC ))
-- \Mult0~46\ = CARRY(( \Mult0~136_resulta\ ) + ( \Mult1~8_resulta\ ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Mult1~8_resulta\,
	datac => \ALT_INV_Mult0~136_resulta\,
	cin => GND,
	sumout => \Mult0~45_sumout\,
	cout => \Mult0~46\);

-- Location: MLABCELL_X21_Y26_N3
\Mult0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mult0~49_sumout\ = SUM(( \Mult0~137\ ) + ( \Mult1~9\ ) + ( \Mult0~46\ ))
-- \Mult0~50\ = CARRY(( \Mult0~137\ ) + ( \Mult1~9\ ) + ( \Mult0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mult0~137\,
	datac => \ALT_INV_Mult1~9\,
	cin => \Mult0~46\,
	sumout => \Mult0~49_sumout\,
	cout => \Mult0~50\);

-- Location: MLABCELL_X21_Y26_N6
\Mult0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mult0~53_sumout\ = SUM(( \Mult0~138\ ) + ( \Mult1~10\ ) + ( \Mult0~50\ ))
-- \Mult0~54\ = CARRY(( \Mult0~138\ ) + ( \Mult1~10\ ) + ( \Mult0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mult0~138\,
	datac => \ALT_INV_Mult1~10\,
	cin => \Mult0~50\,
	sumout => \Mult0~53_sumout\,
	cout => \Mult0~54\);

-- Location: MLABCELL_X21_Y26_N9
\Mult0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mult0~57_sumout\ = SUM(( \Mult0~139\ ) + ( \Mult1~11\ ) + ( \Mult0~54\ ))
-- \Mult0~58\ = CARRY(( \Mult0~139\ ) + ( \Mult1~11\ ) + ( \Mult0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Mult0~139\,
	dataf => \ALT_INV_Mult1~11\,
	cin => \Mult0~54\,
	sumout => \Mult0~57_sumout\,
	cout => \Mult0~58\);

-- Location: MLABCELL_X21_Y26_N12
\Mult0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mult0~61_sumout\ = SUM(( \Mult1~12\ ) + ( \Mult0~140\ ) + ( \Mult0~58\ ))
-- \Mult0~62\ = CARRY(( \Mult1~12\ ) + ( \Mult0~140\ ) + ( \Mult0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Mult1~12\,
	dataf => \ALT_INV_Mult0~140\,
	cin => \Mult0~58\,
	sumout => \Mult0~61_sumout\,
	cout => \Mult0~62\);

-- Location: MLABCELL_X21_Y26_N15
\Mult0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mult0~41_sumout\ = SUM(( \Mult1~13\ ) + ( \Mult0~141\ ) + ( \Mult0~62\ ))
-- \Mult0~42\ = CARRY(( \Mult1~13\ ) + ( \Mult0~141\ ) + ( \Mult0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mult0~141\,
	datad => \ALT_INV_Mult1~13\,
	cin => \Mult0~62\,
	sumout => \Mult0~41_sumout\,
	cout => \Mult0~42\);

-- Location: MLABCELL_X21_Y26_N18
\Mult0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mult0~21_sumout\ = SUM(( \Mult1~14\ ) + ( \Mult0~142\ ) + ( \Mult0~42\ ))
-- \Mult0~22\ = CARRY(( \Mult1~14\ ) + ( \Mult0~142\ ) + ( \Mult0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Mult0~142\,
	datad => \ALT_INV_Mult1~14\,
	cin => \Mult0~42\,
	sumout => \Mult0~21_sumout\,
	cout => \Mult0~22\);

-- Location: MLABCELL_X21_Y26_N21
\Mult0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mult0~25_sumout\ = SUM(( \Mult0~143\ ) + ( \Mult1~15\ ) + ( \Mult0~22\ ))
-- \Mult0~26\ = CARRY(( \Mult0~143\ ) + ( \Mult1~15\ ) + ( \Mult0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Mult1~15\,
	datac => \ALT_INV_Mult0~143\,
	cin => \Mult0~22\,
	sumout => \Mult0~25_sumout\,
	cout => \Mult0~26\);

-- Location: MLABCELL_X21_Y26_N24
\Mult0~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mult0~113_sumout\ = SUM(( \Mult0~144\ ) + ( \Mult1~16\ ) + ( \Mult0~26\ ))
-- \Mult0~114\ = CARRY(( \Mult0~144\ ) + ( \Mult1~16\ ) + ( \Mult0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Mult0~144\,
	dataf => \ALT_INV_Mult1~16\,
	cin => \Mult0~26\,
	sumout => \Mult0~113_sumout\,
	cout => \Mult0~114\);

-- Location: MLABCELL_X21_Y26_N27
\Mult0~117\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mult0~117_sumout\ = SUM(( \Mult0~145\ ) + ( \Mult1~17\ ) + ( \Mult0~114\ ))
-- \Mult0~118\ = CARRY(( \Mult0~145\ ) + ( \Mult1~17\ ) + ( \Mult0~114\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mult1~17\,
	datac => \ALT_INV_Mult0~145\,
	cin => \Mult0~114\,
	sumout => \Mult0~117_sumout\,
	cout => \Mult0~118\);

-- Location: MLABCELL_X21_Y26_N30
\Mult0~121\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mult0~121_sumout\ = SUM(( \Mult0~146\ ) + ( \Mult1~18\ ) + ( \Mult0~118\ ))
-- \Mult0~122\ = CARRY(( \Mult0~146\ ) + ( \Mult1~18\ ) + ( \Mult0~118\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Mult0~146\,
	dataf => \ALT_INV_Mult1~18\,
	cin => \Mult0~118\,
	sumout => \Mult0~121_sumout\,
	cout => \Mult0~122\);

-- Location: MLABCELL_X21_Y26_N33
\Mult0~125\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mult0~125_sumout\ = SUM(( \Mult1~19\ ) + ( \Mult0~147\ ) + ( \Mult0~122\ ))
-- \Mult0~126\ = CARRY(( \Mult1~19\ ) + ( \Mult0~147\ ) + ( \Mult0~122\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mult1~19\,
	dataf => \ALT_INV_Mult0~147\,
	cin => \Mult0~122\,
	sumout => \Mult0~125_sumout\,
	cout => \Mult0~126\);

-- Location: MLABCELL_X21_Y26_N36
\Mult0~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mult0~101_sumout\ = SUM(( \Mult0~148\ ) + ( \Mult1~20\ ) + ( \Mult0~126\ ))
-- \Mult0~102\ = CARRY(( \Mult0~148\ ) + ( \Mult1~20\ ) + ( \Mult0~126\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Mult0~148\,
	dataf => \ALT_INV_Mult1~20\,
	cin => \Mult0~126\,
	sumout => \Mult0~101_sumout\,
	cout => \Mult0~102\);

-- Location: MLABCELL_X21_Y26_N39
\Mult0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mult0~29_sumout\ = SUM(( \Mult0~149\ ) + ( \Mult1~21\ ) + ( \Mult0~102\ ))
-- \Mult0~30\ = CARRY(( \Mult0~149\ ) + ( \Mult1~21\ ) + ( \Mult0~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mult1~21\,
	datac => \ALT_INV_Mult0~149\,
	cin => \Mult0~102\,
	sumout => \Mult0~29_sumout\,
	cout => \Mult0~30\);

-- Location: MLABCELL_X21_Y26_N42
\Mult0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mult0~33_sumout\ = SUM(( \Mult1~22\ ) + ( \Mult0~150\ ) + ( \Mult0~30\ ))
-- \Mult0~34\ = CARRY(( \Mult1~22\ ) + ( \Mult0~150\ ) + ( \Mult0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Mult0~150\,
	datad => \ALT_INV_Mult1~22\,
	cin => \Mult0~30\,
	sumout => \Mult0~33_sumout\,
	cout => \Mult0~34\);

-- Location: MLABCELL_X21_Y26_N45
\Mult0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mult0~37_sumout\ = SUM(( \Mult0~151\ ) + ( \Mult1~23\ ) + ( \Mult0~34\ ))
-- \Mult0~38\ = CARRY(( \Mult0~151\ ) + ( \Mult1~23\ ) + ( \Mult0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Mult0~151\,
	datac => \ALT_INV_Mult1~23\,
	cin => \Mult0~34\,
	sumout => \Mult0~37_sumout\,
	cout => \Mult0~38\);

-- Location: MLABCELL_X21_Y26_N48
\Mult0~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mult0~105_sumout\ = SUM(( \Mult0~152\ ) + ( \Mult1~24\ ) + ( \Mult0~38\ ))
-- \Mult0~106\ = CARRY(( \Mult0~152\ ) + ( \Mult1~24\ ) + ( \Mult0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Mult1~24\,
	datad => \ALT_INV_Mult0~152\,
	cin => \Mult0~38\,
	sumout => \Mult0~105_sumout\,
	cout => \Mult0~106\);

-- Location: MLABCELL_X21_Y26_N51
\Mult0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mult0~1_sumout\ = SUM(( \Mult0~153\ ) + ( \Mult1~25\ ) + ( \Mult0~106\ ))
-- \Mult0~2\ = CARRY(( \Mult0~153\ ) + ( \Mult1~25\ ) + ( \Mult0~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mult1~25\,
	datac => \ALT_INV_Mult0~153\,
	cin => \Mult0~106\,
	sumout => \Mult0~1_sumout\,
	cout => \Mult0~2\);

-- Location: MLABCELL_X21_Y26_N54
\Mult0~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mult0~65_sumout\ = SUM(( \Mult1~358_sumout\ ) + ( \Mult0~477_resulta\ ) + ( \Mult0~2\ ))
-- \Mult0~66\ = CARRY(( \Mult1~358_sumout\ ) + ( \Mult0~477_resulta\ ) + ( \Mult0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Mult0~477_resulta\,
	datac => \ALT_INV_Mult1~358_sumout\,
	cin => \Mult0~2\,
	sumout => \Mult0~65_sumout\,
	cout => \Mult0~66\);

-- Location: MLABCELL_X21_Y26_N57
\Mult0~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mult0~69_sumout\ = SUM(( \Mult1~362_sumout\ ) + ( \Mult0~478\ ) + ( \Mult0~66\ ))
-- \Mult0~70\ = CARRY(( \Mult1~362_sumout\ ) + ( \Mult0~478\ ) + ( \Mult0~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mult0~478\,
	datac => \ALT_INV_Mult1~362_sumout\,
	cin => \Mult0~66\,
	sumout => \Mult0~69_sumout\,
	cout => \Mult0~70\);

-- Location: MLABCELL_X21_Y25_N0
\Mult0~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mult0~73_sumout\ = SUM(( \Mult1~366_sumout\ ) + ( \Mult0~479\ ) + ( \Mult0~70\ ))
-- \Mult0~74\ = CARRY(( \Mult1~366_sumout\ ) + ( \Mult0~479\ ) + ( \Mult0~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mult0~479\,
	datac => \ALT_INV_Mult1~366_sumout\,
	cin => \Mult0~70\,
	sumout => \Mult0~73_sumout\,
	cout => \Mult0~74\);

-- Location: MLABCELL_X21_Y25_N3
\Mult0~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mult0~109_sumout\ = SUM(( \Mult1~394_sumout\ ) + ( \Mult0~480\ ) + ( \Mult0~74\ ))
-- \Mult0~110\ = CARRY(( \Mult1~394_sumout\ ) + ( \Mult0~480\ ) + ( \Mult0~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Mult1~394_sumout\,
	datac => \ALT_INV_Mult0~480\,
	cin => \Mult0~74\,
	sumout => \Mult0~109_sumout\,
	cout => \Mult0~110\);

-- Location: MLABCELL_X21_Y25_N6
\Mult0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mult0~5_sumout\ = SUM(( \Mult1~342_sumout\ ) + ( \Mult0~481\ ) + ( \Mult0~110\ ))
-- \Mult0~6\ = CARRY(( \Mult1~342_sumout\ ) + ( \Mult0~481\ ) + ( \Mult0~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Mult0~481\,
	datac => \ALT_INV_Mult1~342_sumout\,
	cin => \Mult0~110\,
	sumout => \Mult0~5_sumout\,
	cout => \Mult0~6\);

-- Location: MLABCELL_X21_Y25_N9
\Mult0~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mult0~89_sumout\ = SUM(( \Mult0~482\ ) + ( \Mult1~382_sumout\ ) + ( \Mult0~6\ ))
-- \Mult0~90\ = CARRY(( \Mult0~482\ ) + ( \Mult1~382_sumout\ ) + ( \Mult0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mult0~482\,
	dataf => \ALT_INV_Mult1~382_sumout\,
	cin => \Mult0~6\,
	sumout => \Mult0~89_sumout\,
	cout => \Mult0~90\);

-- Location: MLABCELL_X21_Y25_N12
\Mult0~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mult0~77_sumout\ = SUM(( \Mult1~370_sumout\ ) + ( \Mult0~483\ ) + ( \Mult0~90\ ))
-- \Mult0~78\ = CARRY(( \Mult1~370_sumout\ ) + ( \Mult0~483\ ) + ( \Mult0~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Mult0~483\,
	datad => \ALT_INV_Mult1~370_sumout\,
	cin => \Mult0~90\,
	sumout => \Mult0~77_sumout\,
	cout => \Mult0~78\);

-- Location: MLABCELL_X21_Y25_N15
\Mult0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mult0~9_sumout\ = SUM(( \Mult1~346_sumout\ ) + ( \Mult0~484\ ) + ( \Mult0~78\ ))
-- \Mult0~10\ = CARRY(( \Mult1~346_sumout\ ) + ( \Mult0~484\ ) + ( \Mult0~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Mult0~484\,
	datac => \ALT_INV_Mult1~346_sumout\,
	cin => \Mult0~78\,
	sumout => \Mult0~9_sumout\,
	cout => \Mult0~10\);

-- Location: MLABCELL_X21_Y25_N18
\Mult0~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mult0~93_sumout\ = SUM(( \Mult1~386_sumout\ ) + ( \Mult0~485\ ) + ( \Mult0~10\ ))
-- \Mult0~94\ = CARRY(( \Mult1~386_sumout\ ) + ( \Mult0~485\ ) + ( \Mult0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Mult0~485\,
	datad => \ALT_INV_Mult1~386_sumout\,
	cin => \Mult0~10\,
	sumout => \Mult0~93_sumout\,
	cout => \Mult0~94\);

-- Location: MLABCELL_X21_Y25_N21
\Mult0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mult0~13_sumout\ = SUM(( \Mult1~350_sumout\ ) + ( \Mult0~486\ ) + ( \Mult0~94\ ))
-- \Mult0~14\ = CARRY(( \Mult1~350_sumout\ ) + ( \Mult0~486\ ) + ( \Mult0~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mult0~486\,
	datab => \ALT_INV_Mult1~350_sumout\,
	cin => \Mult0~94\,
	sumout => \Mult0~13_sumout\,
	cout => \Mult0~14\);

-- Location: MLABCELL_X21_Y25_N24
\Mult0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mult0~17_sumout\ = SUM(( \Mult1~354_sumout\ ) + ( \Mult0~487\ ) + ( \Mult0~14\ ))
-- \Mult0~18\ = CARRY(( \Mult1~354_sumout\ ) + ( \Mult0~487\ ) + ( \Mult0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Mult0~487\,
	datac => \ALT_INV_Mult1~354_sumout\,
	cin => \Mult0~14\,
	sumout => \Mult0~17_sumout\,
	cout => \Mult0~18\);

-- Location: LABCELL_X19_Y26_N24
\LessThan6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan6~0_combout\ = ( \Mult0~41_sumout\ & ( \Mult0~49_sumout\ ) ) # ( \Mult0~41_sumout\ & ( !\Mult0~49_sumout\ & ( (((\Mult0~53_sumout\) # (\Mult0~61_sumout\)) # (\Mult0~57_sumout\)) # (\Mult0~45_sumout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000011111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mult0~45_sumout\,
	datab => \ALT_INV_Mult0~57_sumout\,
	datac => \ALT_INV_Mult0~61_sumout\,
	datad => \ALT_INV_Mult0~53_sumout\,
	datae => \ALT_INV_Mult0~41_sumout\,
	dataf => \ALT_INV_Mult0~49_sumout\,
	combout => \LessThan6~0_combout\);

-- Location: LABCELL_X19_Y26_N30
\LessThan6~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan6~1_combout\ = ( !\Mult0~29_sumout\ & ( \Mult0~21_sumout\ & ( (!\Mult0~33_sumout\ & (!\Mult0~37_sumout\ & ((!\Mult0~25_sumout\) # (!\LessThan6~0_combout\)))) ) ) ) # ( !\Mult0~29_sumout\ & ( !\Mult0~21_sumout\ & ( (!\Mult0~33_sumout\ & 
-- !\Mult0~37_sumout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000011000000000000000000000011000000100000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mult0~25_sumout\,
	datab => \ALT_INV_Mult0~33_sumout\,
	datac => \ALT_INV_Mult0~37_sumout\,
	datad => \ALT_INV_LessThan6~0_combout\,
	datae => \ALT_INV_Mult0~29_sumout\,
	dataf => \ALT_INV_Mult0~21_sumout\,
	combout => \LessThan6~1_combout\);

-- Location: MLABCELL_X21_Y25_N48
\LessThan6~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan6~2_combout\ = ( \LessThan6~1_combout\ & ( !\Mult0~9_sumout\ & ( (!\Mult0~17_sumout\ & (!\Mult0~1_sumout\ & (!\Mult0~13_sumout\ & !\Mult0~5_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mult0~17_sumout\,
	datab => \ALT_INV_Mult0~1_sumout\,
	datac => \ALT_INV_Mult0~13_sumout\,
	datad => \ALT_INV_Mult0~5_sumout\,
	datae => \ALT_INV_LessThan6~1_combout\,
	dataf => \ALT_INV_Mult0~9_sumout\,
	combout => \LessThan6~2_combout\);

-- Location: MLABCELL_X21_Y28_N33
\Mult1~374\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mult1~374_sumout\ = SUM(( !\Mult0~165\ $ (!\Mult1~416\ $ (\Mult1~37\)) ) + ( \Mult1~356\ ) + ( \Mult1~355\ ))
-- \Mult1~375\ = CARRY(( !\Mult0~165\ $ (!\Mult1~416\ $ (\Mult1~37\)) ) + ( \Mult1~356\ ) + ( \Mult1~355\ ))
-- \Mult1~376\ = SHARE((!\Mult0~165\ & (\Mult1~416\ & \Mult1~37\)) # (\Mult0~165\ & ((\Mult1~37\) # (\Mult1~416\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110011111100000000000000000011110011000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Mult0~165\,
	datac => \ALT_INV_Mult1~416\,
	datad => \ALT_INV_Mult1~37\,
	cin => \Mult1~355\,
	sharein => \Mult1~356\,
	sumout => \Mult1~374_sumout\,
	cout => \Mult1~375\,
	shareout => \Mult1~376\);

-- Location: MLABCELL_X21_Y25_N27
\Mult0~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mult0~81_sumout\ = SUM(( \Mult1~374_sumout\ ) + ( \Mult0~488\ ) + ( \Mult0~18\ ))
-- \Mult0~82\ = CARRY(( \Mult1~374_sumout\ ) + ( \Mult0~488\ ) + ( \Mult0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mult0~488\,
	datad => \ALT_INV_Mult1~374_sumout\,
	cin => \Mult0~18\,
	sumout => \Mult0~81_sumout\,
	cout => \Mult0~82\);

-- Location: MLABCELL_X21_Y28_N36
\Mult1~378\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mult1~378_sumout\ = SUM(( !\Mult1~417\ $ (!\Mult1~38\ $ (\Mult0~166\)) ) + ( \Mult1~376\ ) + ( \Mult1~375\ ))
-- \Mult1~379\ = CARRY(( !\Mult1~417\ $ (!\Mult1~38\ $ (\Mult0~166\)) ) + ( \Mult1~376\ ) + ( \Mult1~375\ ))
-- \Mult1~380\ = SHARE((!\Mult1~417\ & (\Mult1~38\ & \Mult0~166\)) # (\Mult1~417\ & ((\Mult0~166\) # (\Mult1~38\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110011111100000000000000000011110011000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Mult1~417\,
	datac => \ALT_INV_Mult1~38\,
	datad => \ALT_INV_Mult0~166\,
	cin => \Mult1~375\,
	sharein => \Mult1~376\,
	sumout => \Mult1~378_sumout\,
	cout => \Mult1~379\,
	shareout => \Mult1~380\);

-- Location: MLABCELL_X21_Y25_N30
\Mult0~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mult0~85_sumout\ = SUM(( \Mult1~378_sumout\ ) + ( \Mult0~489\ ) + ( \Mult0~82\ ))
-- \Mult0~86\ = CARRY(( \Mult1~378_sumout\ ) + ( \Mult0~489\ ) + ( \Mult0~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Mult1~378_sumout\,
	dataf => \ALT_INV_Mult0~489\,
	cin => \Mult0~82\,
	sumout => \Mult0~85_sumout\,
	cout => \Mult0~86\);

-- Location: MLABCELL_X21_Y25_N42
\LessThan6~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan6~3_combout\ = ( !\Mult0~73_sumout\ & ( !\Mult0~69_sumout\ & ( (!\Mult0~65_sumout\ & (!\Mult0~77_sumout\ & (!\Mult0~81_sumout\ & !\Mult0~85_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mult0~65_sumout\,
	datab => \ALT_INV_Mult0~77_sumout\,
	datac => \ALT_INV_Mult0~81_sumout\,
	datad => \ALT_INV_Mult0~85_sumout\,
	datae => \ALT_INV_Mult0~73_sumout\,
	dataf => \ALT_INV_Mult0~69_sumout\,
	combout => \LessThan6~3_combout\);

-- Location: MLABCELL_X34_Y33_N57
\x~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \x~0_combout\ = ( \vga_h|x_c\(8) & ( (\vga_h|x_c\(9) & ((!\vga_h|LessThan0~0_combout\) # ((\vga_h|x_c\(7)) # (\LessThan2~0_combout\)))) ) ) # ( !\vga_h|x_c\(8) & ( (!\vga_h|x_c\(9) & ((!\vga_h|x_c\(7)) # ((\vga_h|LessThan0~0_combout\ & 
-- !\LessThan2~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101000100000101010100010000001000101010101010100010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \vga_h|ALT_INV_x_c\(9),
	datab => \vga_h|ALT_INV_LessThan0~0_combout\,
	datac => \ALT_INV_LessThan2~0_combout\,
	datad => \vga_h|ALT_INV_x_c\(7),
	dataf => \vga_h|ALT_INV_x_c\(8),
	combout => \x~0_combout\);

-- Location: LABCELL_X31_Y26_N39
\border~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \border~1_combout\ = ( !\x~0_combout\ & ( ((\Add1~1_sumout\) # (\Add1~9_sumout\)) # (\Add1~29_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111111111111010111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add1~29_sumout\,
	datac => \ALT_INV_Add1~9_sumout\,
	datad => \ALT_INV_Add1~1_sumout\,
	dataf => \ALT_INV_x~0_combout\,
	combout => \border~1_combout\);

-- Location: LABCELL_X31_Y26_N24
\border~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \border~2_combout\ = ( \Add1~21_sumout\ & ( \Add1~13_sumout\ & ( !\x~0_combout\ ) ) ) # ( !\Add1~21_sumout\ & ( \Add1~13_sumout\ & ( !\x~0_combout\ ) ) ) # ( \Add1~21_sumout\ & ( !\Add1~13_sumout\ & ( (!\x~0_combout\ & (((\Add1~33_sumout\) # 
-- (\Add1~17_sumout\)) # (\Add1~25_sumout\))) ) ) ) # ( !\Add1~21_sumout\ & ( !\Add1~13_sumout\ & ( (!\x~0_combout\ & \Add1~17_sumout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010001010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_x~0_combout\,
	datab => \ALT_INV_Add1~25_sumout\,
	datac => \ALT_INV_Add1~17_sumout\,
	datad => \ALT_INV_Add1~33_sumout\,
	datae => \ALT_INV_Add1~21_sumout\,
	dataf => \ALT_INV_Add1~13_sumout\,
	combout => \border~2_combout\);

-- Location: LABCELL_X31_Y26_N36
\LessThan14~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan14~0_combout\ = ( !\Add1~13_sumout\ & ( (!\Add1~29_sumout\ & (!\Add1~25_sumout\ & (!\Add1~17_sumout\ & !\Add1~21_sumout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add1~29_sumout\,
	datab => \ALT_INV_Add1~25_sumout\,
	datac => \ALT_INV_Add1~17_sumout\,
	datad => \ALT_INV_Add1~21_sumout\,
	dataf => \ALT_INV_Add1~13_sumout\,
	combout => \LessThan14~0_combout\);

-- Location: LABCELL_X31_Y26_N42
\border~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \border~3_combout\ = ( \LessThan14~0_combout\ & ( !\Add1~5_sumout\ & ( (!\x~0_combout\ & (!\border~1_combout\ & (!\border~2_combout\ & \Add1~1_sumout\))) ) ) ) # ( !\LessThan14~0_combout\ & ( !\Add1~5_sumout\ & ( (!\x~0_combout\ & (!\border~1_combout\ & 
-- !\border~2_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010000000000000001000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_x~0_combout\,
	datab => \ALT_INV_border~1_combout\,
	datac => \ALT_INV_border~2_combout\,
	datad => \ALT_INV_Add1~1_sumout\,
	datae => \ALT_INV_LessThan14~0_combout\,
	dataf => \ALT_INV_Add1~5_sumout\,
	combout => \border~3_combout\);

-- Location: MLABCELL_X34_Y33_N36
\LessThan15~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan15~0_combout\ = ( \Add1~17_sumout\ & ( \Add1~13_sumout\ & ( !\x~0_combout\ ) ) ) # ( !\Add1~17_sumout\ & ( \Add1~13_sumout\ & ( (!\x~0_combout\ & (\Add1~21_sumout\ & ((\Add1~25_sumout\) # (\Add1~33_sumout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000001010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_x~0_combout\,
	datab => \ALT_INV_Add1~33_sumout\,
	datac => \ALT_INV_Add1~25_sumout\,
	datad => \ALT_INV_Add1~21_sumout\,
	datae => \ALT_INV_Add1~17_sumout\,
	dataf => \ALT_INV_Add1~13_sumout\,
	combout => \LessThan15~0_combout\);

-- Location: LABCELL_X33_Y34_N27
\border~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \border~4_combout\ = ( \Add1~29_sumout\ & ( !\x~0_combout\ ) ) # ( !\Add1~29_sumout\ & ( (\Add1~1_sumout\ & !\x~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010100000101000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add1~1_sumout\,
	datac => \ALT_INV_x~0_combout\,
	dataf => \ALT_INV_Add1~29_sumout\,
	combout => \border~4_combout\);

-- Location: MLABCELL_X34_Y33_N54
\border~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \border~5_combout\ = ( \Add1~13_sumout\ & ( \Add1~9_sumout\ ) ) # ( !\Add1~13_sumout\ & ( (\Add1~9_sumout\ & \Add1~29_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add1~9_sumout\,
	datad => \ALT_INV_Add1~29_sumout\,
	dataf => \ALT_INV_Add1~13_sumout\,
	combout => \border~5_combout\);

-- Location: LABCELL_X30_Y36_N27
\border~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \border~6_combout\ = ( \Add1~5_sumout\ & ( (!\x~0_combout\ & (!\LessThan15~0_combout\ & (!\border~4_combout\ & \border~5_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000100000000000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_x~0_combout\,
	datab => \ALT_INV_LessThan15~0_combout\,
	datac => \ALT_INV_border~4_combout\,
	datad => \ALT_INV_border~5_combout\,
	dataf => \ALT_INV_Add1~5_sumout\,
	combout => \border~6_combout\);

-- Location: LABCELL_X30_Y36_N48
\y~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \y~0_combout\ = ( \vga_v|y_c\(5) & ( \LessThan4~1_combout\ & ( (!\vga_v|y_c\(9) & ((!\LessThan4~0_combout\) # (\vga_v|y_c\(4)))) ) ) ) # ( !\vga_v|y_c\(5) & ( \LessThan4~1_combout\ & ( (\vga_v|y_c\(9) & (!\vga_v|y_c\(4) & \LessThan4~0_combout\)) ) ) ) # ( 
-- \vga_v|y_c\(5) & ( !\LessThan4~1_combout\ & ( !\vga_v|y_c\(9) ) ) ) # ( !\vga_v|y_c\(5) & ( !\LessThan4~1_combout\ & ( !\vga_v|y_c\(9) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101000000100000001001010001010100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \vga_v|ALT_INV_y_c\(9),
	datab => \vga_v|ALT_INV_y_c\(4),
	datac => \ALT_INV_LessThan4~0_combout\,
	datae => \vga_v|ALT_INV_y_c\(5),
	dataf => \ALT_INV_LessThan4~1_combout\,
	combout => \y~0_combout\);

-- Location: LABCELL_X31_Y28_N42
\red~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \red~2_combout\ = ( \vga_v|y_c\(1) & ( \vga_v|y_c\(0) & ( (!\Add2~5_sumout\ & (!\Add2~1_sumout\ & (!\Add2~9_sumout\ & !\Add2~13_sumout\))) ) ) ) # ( !\vga_v|y_c\(1) & ( \vga_v|y_c\(0) & ( (!\Add2~5_sumout\ & (!\Add2~1_sumout\ & (!\Add2~9_sumout\ & 
-- !\Add2~13_sumout\))) ) ) ) # ( \vga_v|y_c\(1) & ( !\vga_v|y_c\(0) & ( (!\Add2~5_sumout\ & (!\Add2~1_sumout\ & (!\Add2~9_sumout\ & !\Add2~13_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100000000000000010000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add2~5_sumout\,
	datab => \ALT_INV_Add2~1_sumout\,
	datac => \ALT_INV_Add2~9_sumout\,
	datad => \ALT_INV_Add2~13_sumout\,
	datae => \vga_v|ALT_INV_y_c\(1),
	dataf => \vga_v|ALT_INV_y_c\(0),
	combout => \red~2_combout\);

-- Location: MLABCELL_X34_Y33_N33
\border~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \border~7_combout\ = ( \Add1~9_sumout\ & ( (\Add1~5_sumout\ & !\x~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add1~5_sumout\,
	datad => \ALT_INV_x~0_combout\,
	dataf => \ALT_INV_Add1~9_sumout\,
	combout => \border~7_combout\);

-- Location: LABCELL_X31_Y28_N57
\red~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \red~0_combout\ = ( \vga_v|y_c\(0) & ( \vga_v|y_c\(1) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \vga_v|ALT_INV_y_c\(1),
	dataf => \vga_v|ALT_INV_y_c\(0),
	combout => \red~0_combout\);

-- Location: LABCELL_X31_Y28_N36
\red~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \red~1_combout\ = ( \red~0_combout\ & ( \y[1]~1_combout\ & ( (!\Add2~5_sumout\ & (\Add2~1_sumout\ & (\Add2~9_sumout\ & \Add2~13_sumout\))) ) ) ) # ( !\red~0_combout\ & ( \y[1]~1_combout\ & ( (\Add2~1_sumout\ & (\Add2~9_sumout\ & \Add2~13_sumout\)) ) ) ) # 
-- ( !\red~0_combout\ & ( !\y[1]~1_combout\ & ( (\Add2~5_sumout\ & (\Add2~1_sumout\ & (\Add2~9_sumout\ & \Add2~13_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000000000000000000000000000110000000000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add2~5_sumout\,
	datab => \ALT_INV_Add2~1_sumout\,
	datac => \ALT_INV_Add2~9_sumout\,
	datad => \ALT_INV_Add2~13_sumout\,
	datae => \ALT_INV_red~0_combout\,
	dataf => \ALT_INV_y[1]~1_combout\,
	combout => \red~1_combout\);

-- Location: LABCELL_X30_Y36_N42
\red~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \red~3_combout\ = ( \Add1~37_sumout\ & ( \x~0_combout\ & ( (!\Add2~29_sumout\ & (!\Add2~21_sumout\ & (!\Add2~17_sumout\ & !\Add2~25_sumout\))) ) ) ) # ( !\Add1~37_sumout\ & ( \x~0_combout\ & ( (!\Add2~29_sumout\ & (!\Add2~21_sumout\ & (!\Add2~17_sumout\ & 
-- !\Add2~25_sumout\))) ) ) ) # ( !\Add1~37_sumout\ & ( !\x~0_combout\ & ( (!\Add2~29_sumout\ & (!\Add2~21_sumout\ & (!\Add2~17_sumout\ & !\Add2~25_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000010000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add2~29_sumout\,
	datab => \ALT_INV_Add2~21_sumout\,
	datac => \ALT_INV_Add2~17_sumout\,
	datad => \ALT_INV_Add2~25_sumout\,
	datae => \ALT_INV_Add1~37_sumout\,
	dataf => \ALT_INV_x~0_combout\,
	combout => \red~3_combout\);

-- Location: LABCELL_X30_Y36_N36
\red~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \red~4_combout\ = ( \red~1_combout\ & ( \red~3_combout\ & ( (!\border~7_combout\) # ((!\border~4_combout\ & !\LessThan15~0_combout\)) ) ) ) # ( !\red~1_combout\ & ( \red~3_combout\ & ( (\red~2_combout\ & ((!\border~7_combout\) # ((!\border~4_combout\ & 
-- !\LessThan15~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010100010100001111110011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_red~2_combout\,
	datab => \ALT_INV_border~4_combout\,
	datac => \ALT_INV_border~7_combout\,
	datad => \ALT_INV_LessThan15~0_combout\,
	datae => \ALT_INV_red~1_combout\,
	dataf => \ALT_INV_red~3_combout\,
	combout => \red~4_combout\);

-- Location: LABCELL_X31_Y26_N33
\border~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \border~0_combout\ = ( \Add1~5_sumout\ & ( !\x~0_combout\ ) ) # ( !\Add1~5_sumout\ & ( (!\x~0_combout\ & (((!\LessThan14~0_combout\) # (\Add1~1_sumout\)) # (\Add1~9_sumout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101000101010101010100010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_x~0_combout\,
	datab => \ALT_INV_Add1~9_sumout\,
	datac => \ALT_INV_Add1~1_sumout\,
	datad => \ALT_INV_LessThan14~0_combout\,
	dataf => \ALT_INV_Add1~5_sumout\,
	combout => \border~0_combout\);

-- Location: MLABCELL_X34_Y33_N42
\x[9]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \x[9]~1_combout\ = ( \vga_h|LessThan0~0_combout\ & ( \Add1~37_sumout\ & ( (!\vga_h|x_c\(9) & (((\vga_h|x_c\(7) & \LessThan2~0_combout\)) # (\vga_h|x_c\(8)))) # (\vga_h|x_c\(9) & ((!\vga_h|x_c\(8)) # ((!\vga_h|x_c\(7) & !\LessThan2~0_combout\)))) ) ) ) # ( 
-- !\vga_h|LessThan0~0_combout\ & ( \Add1~37_sumout\ & ( (!\vga_h|x_c\(9) & ((\vga_h|x_c\(7)) # (\vga_h|x_c\(8)))) # (\vga_h|x_c\(9) & (!\vga_h|x_c\(8))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001101110011011100111011001101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \vga_h|ALT_INV_x_c\(9),
	datab => \vga_h|ALT_INV_x_c\(8),
	datac => \vga_h|ALT_INV_x_c\(7),
	datad => \ALT_INV_LessThan2~0_combout\,
	datae => \vga_h|ALT_INV_LessThan0~0_combout\,
	dataf => \ALT_INV_Add1~37_sumout\,
	combout => \x[9]~1_combout\);

-- Location: LABCELL_X31_Y28_N30
\border~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \border~8_combout\ = ( !\Add2~21_sumout\ & ( (!\Add2~5_sumout\ & (!\red~0_combout\ & (!\Add2~17_sumout\ & !\Add2~25_sumout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add2~5_sumout\,
	datab => \ALT_INV_red~0_combout\,
	datac => \ALT_INV_Add2~17_sumout\,
	datad => \ALT_INV_Add2~25_sumout\,
	dataf => \ALT_INV_Add2~21_sumout\,
	combout => \border~8_combout\);

-- Location: LABCELL_X31_Y33_N9
\red~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \red~5_combout\ = ( \border~8_combout\ & ( \Add2~1_sumout\ & ( (!\x[9]~1_combout\ & !\Add2~29_sumout\) ) ) ) # ( !\border~8_combout\ & ( \Add2~1_sumout\ & ( (!\x[9]~1_combout\ & (!\Add2~29_sumout\ & ((!\Add2~13_sumout\) # (!\Add2~9_sumout\)))) ) ) ) # ( 
-- \border~8_combout\ & ( !\Add2~1_sumout\ & ( (!\x[9]~1_combout\ & (!\Add2~29_sumout\ & ((\Add2~9_sumout\) # (\Add2~13_sumout\)))) ) ) ) # ( !\border~8_combout\ & ( !\Add2~1_sumout\ & ( (!\x[9]~1_combout\ & !\Add2~29_sumout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101000000000001010100000000010101000000000001010101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_x[9]~1_combout\,
	datab => \ALT_INV_Add2~13_sumout\,
	datac => \ALT_INV_Add2~9_sumout\,
	datad => \ALT_INV_Add2~29_sumout\,
	datae => \ALT_INV_border~8_combout\,
	dataf => \ALT_INV_Add2~1_sumout\,
	combout => \red~5_combout\);

-- Location: LABCELL_X30_Y36_N54
\red~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \red~6_combout\ = ( \border~0_combout\ & ( \red~5_combout\ & ( (\y~0_combout\ & (((\red~4_combout\) # (\border~6_combout\)) # (\border~3_combout\))) ) ) ) # ( !\border~0_combout\ & ( \red~5_combout\ & ( (\y~0_combout\ & ((\border~6_combout\) # 
-- (\border~3_combout\))) ) ) ) # ( \border~0_combout\ & ( !\red~5_combout\ & ( (\y~0_combout\ & \red~4_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000111100000111000001110000011100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_border~3_combout\,
	datab => \ALT_INV_border~6_combout\,
	datac => \ALT_INV_y~0_combout\,
	datad => \ALT_INV_red~4_combout\,
	datae => \ALT_INV_border~0_combout\,
	dataf => \ALT_INV_red~5_combout\,
	combout => \red~6_combout\);

-- Location: MLABCELL_X21_Y28_N39
\Mult1~390\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mult1~390_sumout\ = SUM(( !\Mult1~39\ $ (!\Mult1~418\ $ (\Mult0~167\)) ) + ( \Mult1~380\ ) + ( \Mult1~379\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101101010100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mult1~39\,
	datac => \ALT_INV_Mult1~418\,
	datad => \ALT_INV_Mult0~167\,
	cin => \Mult1~379\,
	sharein => \Mult1~380\,
	sumout => \Mult1~390_sumout\);

-- Location: MLABCELL_X21_Y25_N33
\Mult0~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mult0~97_sumout\ = SUM(( \Mult1~390_sumout\ ) + ( \Mult0~490\ ) + ( \Mult0~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mult0~490\,
	datac => \ALT_INV_Mult1~390_sumout\,
	cin => \Mult0~86\,
	sumout => \Mult0~97_sumout\);

-- Location: LABCELL_X19_Y26_N48
\LessThan6~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan6~4_combout\ = ( !\Mult0~121_sumout\ & ( (!\Mult0~113_sumout\ & (!\Mult0~117_sumout\ & !\Mult0~125_sumout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010000000000000000000000010000000100000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mult0~113_sumout\,
	datab => \ALT_INV_Mult0~117_sumout\,
	datac => \ALT_INV_Mult0~125_sumout\,
	datae => \ALT_INV_Mult0~121_sumout\,
	combout => \LessThan6~4_combout\);

-- Location: LABCELL_X22_Y26_N51
\LessThan6~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan6~5_combout\ = ( !\Mult0~105_sumout\ & ( !\Mult0~101_sumout\ & ( (!\Mult0~109_sumout\ & \LessThan6~4_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Mult0~109_sumout\,
	datac => \ALT_INV_LessThan6~4_combout\,
	datae => \ALT_INV_Mult0~105_sumout\,
	dataf => \ALT_INV_Mult0~101_sumout\,
	combout => \LessThan6~5_combout\);

-- Location: MLABCELL_X21_Y25_N36
\LessThan6~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan6~6_combout\ = ( \LessThan6~5_combout\ & ( (!\Mult0~93_sumout\ & (!\Mult0~89_sumout\ & !\Mult0~97_sumout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100000001000000000000000000000001000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mult0~93_sumout\,
	datab => \ALT_INV_Mult0~89_sumout\,
	datac => \ALT_INV_Mult0~97_sumout\,
	datae => \ALT_INV_LessThan6~5_combout\,
	combout => \LessThan6~6_combout\);

-- Location: LABCELL_X23_Y27_N24
\red~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \red~7_combout\ = ( \red~6_combout\ & ( \LessThan6~6_combout\ ) ) # ( !\red~6_combout\ & ( \LessThan6~6_combout\ & ( (\kale~6_combout\ & (\kale~2_combout\ & ((!\LessThan6~2_combout\) # (!\LessThan6~3_combout\)))) ) ) ) # ( \red~6_combout\ & ( 
-- !\LessThan6~6_combout\ ) ) # ( !\red~6_combout\ & ( !\LessThan6~6_combout\ & ( (\kale~6_combout\ & \kale~2_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001111111111111111100010001000100001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_kale~6_combout\,
	datab => \ALT_INV_kale~2_combout\,
	datac => \ALT_INV_LessThan6~2_combout\,
	datad => \ALT_INV_LessThan6~3_combout\,
	datae => \ALT_INV_red~6_combout\,
	dataf => \ALT_INV_LessThan6~6_combout\,
	combout => \red~7_combout\);

-- Location: LABCELL_X29_Y23_N12
\kale~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \kale~7_combout\ = ( !\Mult2~81_sumout\ & ( !\Mult2~77_sumout\ & ( (!\Mult2~69_sumout\ & (!\Mult2~85_sumout\ & (\kale~3_combout\ & !\Mult2~61_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mult2~69_sumout\,
	datab => \ALT_INV_Mult2~85_sumout\,
	datac => \ALT_INV_kale~3_combout\,
	datad => \ALT_INV_Mult2~61_sumout\,
	datae => \ALT_INV_Mult2~81_sumout\,
	dataf => \ALT_INV_Mult2~77_sumout\,
	combout => \kale~7_combout\);

-- Location: LABCELL_X29_Y23_N42
\kale~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \kale~8_combout\ = ( \kale~5_combout\ & ( !\Mult2~65_sumout\ & ( !\Mult2~73_sumout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Mult2~73_sumout\,
	datae => \ALT_INV_kale~5_combout\,
	dataf => \ALT_INV_Mult2~65_sumout\,
	combout => \kale~8_combout\);

-- Location: LABCELL_X23_Y27_N42
\kale~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \kale~9_combout\ = ( \kale~8_combout\ & ( \LessThan6~6_combout\ & ( (!\kale~7_combout\) # ((!\kale~2_combout\) # ((\LessThan6~2_combout\ & \LessThan6~3_combout\))) ) ) ) # ( !\kale~8_combout\ & ( \LessThan6~6_combout\ ) ) # ( \kale~8_combout\ & ( 
-- !\LessThan6~6_combout\ & ( (!\kale~7_combout\) # (!\kale~2_combout\) ) ) ) # ( !\kale~8_combout\ & ( !\LessThan6~6_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111011101110111011111111111111111110111011101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_kale~7_combout\,
	datab => \ALT_INV_kale~2_combout\,
	datac => \ALT_INV_LessThan6~2_combout\,
	datad => \ALT_INV_LessThan6~3_combout\,
	datae => \ALT_INV_kale~8_combout\,
	dataf => \ALT_INV_LessThan6~6_combout\,
	combout => \kale~9_combout\);

-- Location: LABCELL_X45_Y47_N3
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;


