-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2019.1
-- Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity mem is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    addr : IN STD_LOGIC_VECTOR (6 downto 0);
    we : IN STD_LOGIC_VECTOR (0 downto 0);
    re : IN STD_LOGIC_VECTOR (0 downto 0);
    out_r : OUT STD_LOGIC_VECTOR (7 downto 0);
    out_r_ap_vld : OUT STD_LOGIC );
end;


architecture behav of mem is 
    attribute CORE_GENERATION_INFO : STRING;
    attribute CORE_GENERATION_INFO of behav : architecture is
    "mem,hls_ip_2019_1,{HLS_INPUT_TYPE=c,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=1,HLS_INPUT_PART=xc7vx485t-ffg1157-1,HLS_INPUT_CLOCK=2.780000,HLS_INPUT_ARCH=pipeline,HLS_SYN_CLOCK=2.576000,HLS_SYN_LAT=3,HLS_SYN_TPT=1,HLS_SYN_MEM=0,HLS_SYN_DSP=0,HLS_SYN_FF=349,HLS_SYN_LUT=316,HLS_VERSION=2019_1}";
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_pp0_stage0 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_boolean_0 : BOOLEAN := false;
    constant ap_const_lv8_0 : STD_LOGIC_VECTOR (7 downto 0) := "00000000";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv8_1 : STD_LOGIC_VECTOR (7 downto 0) := "00000001";

    signal ap_CS_fsm : STD_LOGIC_VECTOR (0 downto 0) := "1";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_pp0_stage0 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_pp0_stage0 : signal is "none";
    signal ap_enable_reg_pp0_iter0 : STD_LOGIC;
    signal ap_enable_reg_pp0_iter1 : STD_LOGIC := '0';
    signal ap_enable_reg_pp0_iter2 : STD_LOGIC := '0';
    signal ap_enable_reg_pp0_iter3 : STD_LOGIC := '0';
    signal ap_idle_pp0 : STD_LOGIC;
    signal ap_block_state1_pp0_stage0_iter0 : BOOLEAN;
    signal ap_block_state2_pp0_stage0_iter1 : BOOLEAN;
    signal ap_block_state3_pp0_stage0_iter2 : BOOLEAN;
    signal ap_block_state4_pp0_stage0_iter3 : BOOLEAN;
    signal ap_block_pp0_stage0_11001 : BOOLEAN;
    signal saved_address0 : STD_LOGIC_VECTOR (6 downto 0);
    signal saved_ce0 : STD_LOGIC;
    signal saved_q0 : STD_LOGIC_VECTOR (7 downto 0);
    signal saved_address1 : STD_LOGIC_VECTOR (6 downto 0);
    signal saved_ce1 : STD_LOGIC;
    signal saved_we1 : STD_LOGIC;
    signal saved_d1 : STD_LOGIC_VECTOR (7 downto 0);
    signal store : STD_LOGIC_VECTOR (7 downto 0) := "00000000";
    signal tempOutAddr : STD_LOGIC_VECTOR (6 downto 0) := "0000000";
    signal prevAddr : STD_LOGIC_VECTOR (6 downto 0) := "0000000";
    signal tempOutVal : STD_LOGIC_VECTOR (7 downto 0) := "00000000";
    signal re_read_reg_210 : STD_LOGIC_VECTOR (0 downto 0);
    signal re_read_reg_210_pp0_iter1_reg : STD_LOGIC_VECTOR (0 downto 0);
    signal re_read_reg_210_pp0_iter2_reg : STD_LOGIC_VECTOR (0 downto 0);
    signal we_read_reg_214 : STD_LOGIC_VECTOR (0 downto 0);
    signal we_read_reg_214_pp0_iter1_reg : STD_LOGIC_VECTOR (0 downto 0);
    signal we_read_reg_214_pp0_iter2_reg : STD_LOGIC_VECTOR (0 downto 0);
    signal addr_read_reg_218 : STD_LOGIC_VECTOR (6 downto 0);
    signal addr_read_reg_218_pp0_iter1_reg : STD_LOGIC_VECTOR (6 downto 0);
    signal addr_read_reg_218_pp0_iter2_reg : STD_LOGIC_VECTOR (6 downto 0);
    signal saved_addr_reg_227 : STD_LOGIC_VECTOR (6 downto 0);
    signal saved_addr_reg_227_pp0_iter1_reg : STD_LOGIC_VECTOR (6 downto 0);
    signal saved_addr_reg_227_pp0_iter2_reg : STD_LOGIC_VECTOR (6 downto 0);
    signal temp_reg_233 : STD_LOGIC_VECTOR (7 downto 0);
    signal or_ln17_fu_130_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal or_ln17_reg_238 : STD_LOGIC_VECTOR (0 downto 0);
    signal temp2_1_fu_136_p2 : STD_LOGIC_VECTOR (7 downto 0);
    signal temp2_1_reg_242 : STD_LOGIC_VECTOR (7 downto 0);
    signal icmp_ln20_fu_148_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln20_reg_247 : STD_LOGIC_VECTOR (0 downto 0);
    signal temp_1_fu_160_p2 : STD_LOGIC_VECTOR (7 downto 0);
    signal temp_1_reg_251 : STD_LOGIC_VECTOR (7 downto 0);
    signal icmp_ln39_fu_165_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln39_reg_256 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_block_pp0_stage0_subdone : BOOLEAN;
    signal zext_ln9_fu_102_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal ap_block_pp0_stage0 : BOOLEAN;
    signal zext_ln58_fu_187_p1 : STD_LOGIC_VECTOR (7 downto 0);
    signal ap_block_pp0_stage0_01001 : BOOLEAN;
    signal zext_ln24_fu_192_p1 : STD_LOGIC_VECTOR (7 downto 0);
    signal zext_ln28_fu_196_p1 : STD_LOGIC_VECTOR (7 downto 0);
    signal zext_ln43_fu_201_p1 : STD_LOGIC_VECTOR (7 downto 0);
    signal zext_ln47_fu_205_p1 : STD_LOGIC_VECTOR (7 downto 0);
    signal icmp_ln17_fu_115_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln17_1_fu_124_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_NS_fsm : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_idle_pp0_0to2 : STD_LOGIC;
    signal ap_reset_idle_pp0 : STD_LOGIC;
    signal ap_block_pp0 : BOOLEAN;
    signal ap_enable_operation_10 : BOOLEAN;
    signal ap_enable_state1_pp0_iter0_stage0 : BOOLEAN;
    signal ap_enable_operation_12 : BOOLEAN;
    signal ap_enable_state2_pp0_iter1_stage0 : BOOLEAN;
    signal ap_predicate_op58_store_state4 : BOOLEAN;
    signal ap_enable_operation_58 : BOOLEAN;
    signal ap_enable_state4_pp0_iter3_stage0 : BOOLEAN;
    signal ap_predicate_op69_store_state4 : BOOLEAN;
    signal ap_enable_operation_69 : BOOLEAN;
    signal ap_enable_pp0 : STD_LOGIC;
    signal ap_condition_137 : BOOLEAN;
    signal ap_condition_283 : BOOLEAN;
    signal ap_condition_142 : BOOLEAN;
    signal ap_condition_288 : BOOLEAN;
    signal ap_condition_280 : BOOLEAN;
    signal ap_condition_293 : BOOLEAN;
    signal ap_condition_226 : BOOLEAN;

    component mem_saved IS
    generic (
        DataWidth : INTEGER;
        AddressRange : INTEGER;
        AddressWidth : INTEGER );
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        address0 : IN STD_LOGIC_VECTOR (6 downto 0);
        ce0 : IN STD_LOGIC;
        q0 : OUT STD_LOGIC_VECTOR (7 downto 0);
        address1 : IN STD_LOGIC_VECTOR (6 downto 0);
        ce1 : IN STD_LOGIC;
        we1 : IN STD_LOGIC;
        d1 : IN STD_LOGIC_VECTOR (7 downto 0) );
    end component;



begin
    saved_U : component mem_saved
    generic map (
        DataWidth => 8,
        AddressRange => 128,
        AddressWidth => 7)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        address0 => saved_address0,
        ce0 => saved_ce0,
        q0 => saved_q0,
        address1 => saved_address1,
        ce1 => saved_ce1,
        we1 => saved_we1,
        d1 => saved_d1);





    ap_CS_fsm_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_CS_fsm <= ap_ST_fsm_pp0_stage0;
            else
                ap_CS_fsm <= ap_NS_fsm;
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter1_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter1 <= ap_const_logic_0;
            else
                if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone))) then 
                    ap_enable_reg_pp0_iter1 <= ap_start;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter2_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter2 <= ap_const_logic_0;
            else
                if ((ap_const_boolean_0 = ap_block_pp0_stage0_subdone)) then 
                    ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter3_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter3 <= ap_const_logic_0;
            else
                if ((ap_const_boolean_0 = ap_block_pp0_stage0_subdone)) then 
                    ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
                end if; 
            end if;
        end if;
    end process;


    store_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_boolean_1 = ap_condition_226)) then
                if ((or_ln17_fu_130_p2 = ap_const_lv1_1)) then 
                    store <= temp_1_fu_160_p2;
                elsif ((or_ln17_fu_130_p2 = ap_const_lv1_0)) then 
                    store <= temp2_1_fu_136_p2;
                end if;
            end if; 
        end if;
    end process;

    tempOutVal_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_boolean_1 = ap_condition_226)) then
                if (((or_ln17_fu_130_p2 = ap_const_lv1_1) and (icmp_ln39_fu_165_p2 = ap_const_lv1_0))) then 
                    tempOutVal <= temp_1_fu_160_p2;
                elsif (((or_ln17_fu_130_p2 = ap_const_lv1_0) and (icmp_ln20_fu_148_p2 = ap_const_lv1_0))) then 
                    tempOutVal <= temp2_1_fu_136_p2;
                end if;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                addr_read_reg_218 <= addr;
                addr_read_reg_218_pp0_iter1_reg <= addr_read_reg_218;
                re_read_reg_210 <= re;
                re_read_reg_210_pp0_iter1_reg <= re_read_reg_210;
                saved_addr_reg_227 <= zext_ln9_fu_102_p1(7 - 1 downto 0);
                saved_addr_reg_227_pp0_iter1_reg <= saved_addr_reg_227;
                we_read_reg_214 <= we;
                we_read_reg_214_pp0_iter1_reg <= we_read_reg_214;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_boolean_0 = ap_block_pp0_stage0_11001)) then
                addr_read_reg_218_pp0_iter2_reg <= addr_read_reg_218_pp0_iter1_reg;
                re_read_reg_210_pp0_iter2_reg <= re_read_reg_210_pp0_iter1_reg;
                saved_addr_reg_227_pp0_iter2_reg <= saved_addr_reg_227_pp0_iter1_reg;
                we_read_reg_214_pp0_iter2_reg <= we_read_reg_214_pp0_iter1_reg;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((or_ln17_fu_130_p2 = ap_const_lv1_0) and (we_read_reg_214_pp0_iter1_reg = ap_const_lv1_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then
                icmp_ln20_reg_247 <= icmp_ln20_fu_148_p2;
                temp2_1_reg_242 <= temp2_1_fu_136_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((or_ln17_fu_130_p2 = ap_const_lv1_1) and (we_read_reg_214_pp0_iter1_reg = ap_const_lv1_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then
                icmp_ln39_reg_256 <= icmp_ln39_fu_165_p2;
                temp_1_reg_251 <= temp_1_fu_160_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((we_read_reg_214_pp0_iter1_reg = ap_const_lv1_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then
                or_ln17_reg_238 <= or_ln17_fu_130_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((((or_ln17_fu_130_p2 = ap_const_lv1_1) and (we_read_reg_214_pp0_iter1_reg = ap_const_lv1_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter2 = ap_const_logic_1)) or ((or_ln17_fu_130_p2 = ap_const_lv1_0) and (we_read_reg_214_pp0_iter1_reg = ap_const_lv1_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter2 = ap_const_logic_1)))) then
                prevAddr <= addr_read_reg_218_pp0_iter1_reg;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((((or_ln17_reg_238 = ap_const_lv1_1) and (we_read_reg_214_pp0_iter2_reg = ap_const_lv1_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter3 = ap_const_logic_1) and (icmp_ln39_reg_256 = ap_const_lv1_0)) or ((or_ln17_reg_238 = ap_const_lv1_0) and (we_read_reg_214_pp0_iter2_reg = ap_const_lv1_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter3 = ap_const_logic_1) and (icmp_ln20_reg_247 = ap_const_lv1_0)))) then
                tempOutAddr <= addr_read_reg_218_pp0_iter2_reg;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                temp_reg_233 <= saved_q0;
            end if;
        end if;
    end process;

    ap_NS_fsm_assign_proc : process (ap_CS_fsm, ap_block_pp0_stage0_subdone, ap_reset_idle_pp0)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_pp0_stage0 => 
                ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
            when others =>  
                ap_NS_fsm <= "X";
        end case;
    end process;
    ap_CS_fsm_pp0_stage0 <= ap_CS_fsm(0);

    ap_block_pp0_assign_proc : process(ap_CS_fsm, ap_block_pp0_stage0_subdone)
    begin
                ap_block_pp0 <= ((ap_ST_fsm_pp0_stage0 = ap_CS_fsm) and (ap_const_boolean_1 = ap_block_pp0_stage0_subdone));
    end process;

        ap_block_pp0_stage0 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_block_pp0_stage0_01001_assign_proc : process(ap_start)
    begin
                ap_block_pp0_stage0_01001 <= ((ap_start = ap_const_logic_0) and (ap_start = ap_const_logic_1));
    end process;


    ap_block_pp0_stage0_11001_assign_proc : process(ap_start)
    begin
                ap_block_pp0_stage0_11001 <= ((ap_start = ap_const_logic_0) and (ap_start = ap_const_logic_1));
    end process;


    ap_block_pp0_stage0_subdone_assign_proc : process(ap_start)
    begin
                ap_block_pp0_stage0_subdone <= ((ap_start = ap_const_logic_0) and (ap_start = ap_const_logic_1));
    end process;


    ap_block_state1_pp0_stage0_iter0_assign_proc : process(ap_start)
    begin
                ap_block_state1_pp0_stage0_iter0 <= (ap_start = ap_const_logic_0);
    end process;

        ap_block_state2_pp0_stage0_iter1 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state3_pp0_stage0_iter2 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state4_pp0_stage0_iter3 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_condition_137_assign_proc : process(we_read_reg_214_pp0_iter2_reg, or_ln17_reg_238, icmp_ln20_reg_247)
    begin
                ap_condition_137 <= ((or_ln17_reg_238 = ap_const_lv1_0) and (we_read_reg_214_pp0_iter2_reg = ap_const_lv1_1) and (icmp_ln20_reg_247 = ap_const_lv1_0));
    end process;


    ap_condition_142_assign_proc : process(we_read_reg_214_pp0_iter2_reg, or_ln17_reg_238, icmp_ln39_reg_256)
    begin
                ap_condition_142 <= ((or_ln17_reg_238 = ap_const_lv1_1) and (we_read_reg_214_pp0_iter2_reg = ap_const_lv1_1) and (icmp_ln39_reg_256 = ap_const_lv1_0));
    end process;


    ap_condition_226_assign_proc : process(ap_enable_reg_pp0_iter2, ap_block_pp0_stage0_11001, we_read_reg_214_pp0_iter1_reg)
    begin
                ap_condition_226 <= ((we_read_reg_214_pp0_iter1_reg = ap_const_lv1_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter2 = ap_const_logic_1));
    end process;


    ap_condition_280_assign_proc : process(ap_enable_reg_pp0_iter3, re_read_reg_210_pp0_iter2_reg, ap_block_pp0_stage0_01001)
    begin
                ap_condition_280 <= ((re_read_reg_210_pp0_iter2_reg = ap_const_lv1_1) and (ap_enable_reg_pp0_iter3 = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_01001));
    end process;


    ap_condition_283_assign_proc : process(we_read_reg_214_pp0_iter2_reg, or_ln17_reg_238, icmp_ln20_reg_247)
    begin
                ap_condition_283 <= ((icmp_ln20_reg_247 = ap_const_lv1_1) and (or_ln17_reg_238 = ap_const_lv1_0) and (we_read_reg_214_pp0_iter2_reg = ap_const_lv1_1));
    end process;


    ap_condition_288_assign_proc : process(we_read_reg_214_pp0_iter2_reg, or_ln17_reg_238, icmp_ln39_reg_256)
    begin
                ap_condition_288 <= ((icmp_ln39_reg_256 = ap_const_lv1_1) and (or_ln17_reg_238 = ap_const_lv1_1) and (we_read_reg_214_pp0_iter2_reg = ap_const_lv1_1));
    end process;


    ap_condition_293_assign_proc : process(ap_enable_reg_pp0_iter3, we_read_reg_214_pp0_iter2_reg, ap_block_pp0_stage0)
    begin
                ap_condition_293 <= ((we_read_reg_214_pp0_iter2_reg = ap_const_lv1_1) and (ap_enable_reg_pp0_iter3 = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0));
    end process;


    ap_done_assign_proc : process(ap_enable_reg_pp0_iter3, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter3 = ap_const_logic_1))) then 
            ap_done <= ap_const_logic_1;
        else 
            ap_done <= ap_const_logic_0;
        end if; 
    end process;

        ap_enable_operation_10 <= (ap_const_boolean_1 = ap_const_boolean_1);
        ap_enable_operation_12 <= (ap_const_boolean_1 = ap_const_boolean_1);

    ap_enable_operation_58_assign_proc : process(ap_predicate_op58_store_state4)
    begin
                ap_enable_operation_58 <= (ap_predicate_op58_store_state4 = ap_const_boolean_1);
    end process;


    ap_enable_operation_69_assign_proc : process(ap_predicate_op69_store_state4)
    begin
                ap_enable_operation_69 <= (ap_predicate_op69_store_state4 = ap_const_boolean_1);
    end process;

    ap_enable_pp0 <= (ap_idle_pp0 xor ap_const_logic_1);
    ap_enable_reg_pp0_iter0 <= ap_start;

    ap_enable_state1_pp0_iter0_stage0_assign_proc : process(ap_start, ap_CS_fsm_pp0_stage0)
    begin
                ap_enable_state1_pp0_iter0_stage0 <= ((ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0));
    end process;


    ap_enable_state2_pp0_iter1_stage0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1)
    begin
                ap_enable_state2_pp0_iter1_stage0 <= ((ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0));
    end process;


    ap_enable_state4_pp0_iter3_stage0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter3)
    begin
                ap_enable_state4_pp0_iter3_stage0 <= ((ap_enable_reg_pp0_iter3 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0));
    end process;


    ap_idle_assign_proc : process(ap_start, ap_CS_fsm_pp0_stage0, ap_idle_pp0)
    begin
        if (((ap_start = ap_const_logic_0) and (ap_idle_pp0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;


    ap_idle_pp0_assign_proc : process(ap_enable_reg_pp0_iter0, ap_enable_reg_pp0_iter1, ap_enable_reg_pp0_iter2, ap_enable_reg_pp0_iter3)
    begin
        if (((ap_enable_reg_pp0_iter3 = ap_const_logic_0) and (ap_enable_reg_pp0_iter2 = ap_const_logic_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_0))) then 
            ap_idle_pp0 <= ap_const_logic_1;
        else 
            ap_idle_pp0 <= ap_const_logic_0;
        end if; 
    end process;


    ap_idle_pp0_0to2_assign_proc : process(ap_enable_reg_pp0_iter0, ap_enable_reg_pp0_iter1, ap_enable_reg_pp0_iter2)
    begin
        if (((ap_enable_reg_pp0_iter2 = ap_const_logic_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_0))) then 
            ap_idle_pp0_0to2 <= ap_const_logic_1;
        else 
            ap_idle_pp0_0to2 <= ap_const_logic_0;
        end if; 
    end process;


    ap_predicate_op58_store_state4_assign_proc : process(we_read_reg_214_pp0_iter2_reg, or_ln17_reg_238)
    begin
                ap_predicate_op58_store_state4 <= ((or_ln17_reg_238 = ap_const_lv1_0) and (we_read_reg_214_pp0_iter2_reg = ap_const_lv1_1));
    end process;


    ap_predicate_op69_store_state4_assign_proc : process(we_read_reg_214_pp0_iter2_reg, or_ln17_reg_238)
    begin
                ap_predicate_op69_store_state4 <= ((or_ln17_reg_238 = ap_const_lv1_1) and (we_read_reg_214_pp0_iter2_reg = ap_const_lv1_1));
    end process;


    ap_ready_assign_proc : process(ap_start, ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;


    ap_reset_idle_pp0_assign_proc : process(ap_start, ap_idle_pp0_0to2)
    begin
        if (((ap_start = ap_const_logic_0) and (ap_idle_pp0_0to2 = ap_const_logic_1))) then 
            ap_reset_idle_pp0 <= ap_const_logic_1;
        else 
            ap_reset_idle_pp0 <= ap_const_logic_0;
        end if; 
    end process;

    icmp_ln17_1_fu_124_p2 <= "1" when (tempOutVal = ap_const_lv8_0) else "0";
    icmp_ln17_fu_115_p2 <= "0" when (prevAddr = addr_read_reg_218_pp0_iter1_reg) else "1";
    icmp_ln20_fu_148_p2 <= "1" when (unsigned(temp2_1_fu_136_p2) < unsigned(tempOutVal)) else "0";
    icmp_ln39_fu_165_p2 <= "1" when (unsigned(temp_1_fu_160_p2) < unsigned(tempOutVal)) else "0";
    or_ln17_fu_130_p2 <= (icmp_ln17_fu_115_p2 or icmp_ln17_1_fu_124_p2);

    out_r_assign_proc : process(we_read_reg_214_pp0_iter2_reg, zext_ln58_fu_187_p1, zext_ln24_fu_192_p1, zext_ln28_fu_196_p1, zext_ln43_fu_201_p1, zext_ln47_fu_205_p1, ap_condition_137, ap_condition_283, ap_condition_142, ap_condition_288, ap_condition_280)
    begin
        if ((ap_const_boolean_1 = ap_condition_280)) then
            if ((ap_const_boolean_1 = ap_condition_288)) then 
                out_r <= zext_ln47_fu_205_p1;
            elsif ((ap_const_boolean_1 = ap_condition_142)) then 
                out_r <= zext_ln43_fu_201_p1;
            elsif ((ap_const_boolean_1 = ap_condition_283)) then 
                out_r <= zext_ln28_fu_196_p1;
            elsif ((ap_const_boolean_1 = ap_condition_137)) then 
                out_r <= zext_ln24_fu_192_p1;
            elsif ((we_read_reg_214_pp0_iter2_reg = ap_const_lv1_0)) then 
                out_r <= zext_ln58_fu_187_p1;
            else 
                out_r <= "XXXXXXXX";
            end if;
        else 
            out_r <= "XXXXXXXX";
        end if; 
    end process;


    out_r_ap_vld_assign_proc : process(ap_enable_reg_pp0_iter3, ap_block_pp0_stage0_11001, re_read_reg_210_pp0_iter2_reg, we_read_reg_214_pp0_iter2_reg, or_ln17_reg_238, icmp_ln20_reg_247, icmp_ln39_reg_256)
    begin
        if ((((we_read_reg_214_pp0_iter2_reg = ap_const_lv1_0) and (re_read_reg_210_pp0_iter2_reg = ap_const_lv1_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter3 = ap_const_logic_1)) or ((icmp_ln39_reg_256 = ap_const_lv1_1) and (or_ln17_reg_238 = ap_const_lv1_1) and (we_read_reg_214_pp0_iter2_reg = ap_const_lv1_1) and (re_read_reg_210_pp0_iter2_reg = ap_const_lv1_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter3 = ap_const_logic_1)) or ((or_ln17_reg_238 = ap_const_lv1_1) and (we_read_reg_214_pp0_iter2_reg = ap_const_lv1_1) and (re_read_reg_210_pp0_iter2_reg = ap_const_lv1_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter3 = ap_const_logic_1) and (icmp_ln39_reg_256 = ap_const_lv1_0)) or ((icmp_ln20_reg_247 = ap_const_lv1_1) and (or_ln17_reg_238 = ap_const_lv1_0) and (we_read_reg_214_pp0_iter2_reg = ap_const_lv1_1) and (re_read_reg_210_pp0_iter2_reg = ap_const_lv1_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter3 = ap_const_logic_1)) or ((or_ln17_reg_238 = ap_const_lv1_0) and (we_read_reg_214_pp0_iter2_reg = ap_const_lv1_1) and (re_read_reg_210_pp0_iter2_reg = ap_const_lv1_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter3 = ap_const_logic_1) and (icmp_ln20_reg_247 = ap_const_lv1_0)))) then 
            out_r_ap_vld <= ap_const_logic_1;
        else 
            out_r_ap_vld <= ap_const_logic_0;
        end if; 
    end process;

    saved_address0 <= zext_ln9_fu_102_p1(7 - 1 downto 0);
    saved_address1 <= saved_addr_reg_227_pp0_iter2_reg;

    saved_ce0_assign_proc : process(ap_start, ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            saved_ce0 <= ap_const_logic_1;
        else 
            saved_ce0 <= ap_const_logic_0;
        end if; 
    end process;


    saved_ce1_assign_proc : process(ap_enable_reg_pp0_iter3, ap_block_pp0_stage0_11001, we_read_reg_214_pp0_iter2_reg, or_ln17_reg_238)
    begin
        if ((((or_ln17_reg_238 = ap_const_lv1_1) and (we_read_reg_214_pp0_iter2_reg = ap_const_lv1_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter3 = ap_const_logic_1)) or ((or_ln17_reg_238 = ap_const_lv1_0) and (we_read_reg_214_pp0_iter2_reg = ap_const_lv1_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter3 = ap_const_logic_1)))) then 
            saved_ce1 <= ap_const_logic_1;
        else 
            saved_ce1 <= ap_const_logic_0;
        end if; 
    end process;


    saved_d1_assign_proc : process(or_ln17_reg_238, temp2_1_reg_242, temp_1_reg_251, ap_condition_293)
    begin
        if ((ap_const_boolean_1 = ap_condition_293)) then
            if ((or_ln17_reg_238 = ap_const_lv1_1)) then 
                saved_d1 <= temp_1_reg_251;
            elsif ((or_ln17_reg_238 = ap_const_lv1_0)) then 
                saved_d1 <= temp2_1_reg_242;
            else 
                saved_d1 <= "XXXXXXXX";
            end if;
        else 
            saved_d1 <= "XXXXXXXX";
        end if; 
    end process;


    saved_we1_assign_proc : process(ap_enable_reg_pp0_iter3, ap_block_pp0_stage0_11001, we_read_reg_214_pp0_iter2_reg, or_ln17_reg_238)
    begin
        if ((((or_ln17_reg_238 = ap_const_lv1_1) and (we_read_reg_214_pp0_iter2_reg = ap_const_lv1_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter3 = ap_const_logic_1)) or ((or_ln17_reg_238 = ap_const_lv1_0) and (we_read_reg_214_pp0_iter2_reg = ap_const_lv1_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter3 = ap_const_logic_1)))) then 
            saved_we1 <= ap_const_logic_1;
        else 
            saved_we1 <= ap_const_logic_0;
        end if; 
    end process;

    temp2_1_fu_136_p2 <= std_logic_vector(unsigned(store) + unsigned(ap_const_lv8_1));
    temp_1_fu_160_p2 <= std_logic_vector(unsigned(temp_reg_233) + unsigned(ap_const_lv8_1));
    zext_ln24_fu_192_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(addr_read_reg_218_pp0_iter2_reg),8));
    zext_ln28_fu_196_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tempOutAddr),8));
    zext_ln43_fu_201_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(addr_read_reg_218_pp0_iter2_reg),8));
    zext_ln47_fu_205_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tempOutAddr),8));
    zext_ln58_fu_187_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tempOutAddr),8));
    zext_ln9_fu_102_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(addr),64));
end behav;
