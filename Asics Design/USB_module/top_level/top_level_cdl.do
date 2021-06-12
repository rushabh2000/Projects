onerror {resume}
radix define t_htrans {
    "2'b00" "IDLE",
    "2'b01" "BUSY",
    "2'b10" "NON-SEQ",
    "2'b11" "SEQ",
    -default default
}
radix define t_packet {
    "3'b000" "NO PACKET",
    "3'b001" "DATA",
    "3'b010" "ACK",
    "3'b011" "NAK",
    "3'b100" "STALL",
    "3'b101" "T_IN",
    "3'b110" "T_OUT",
    -default default
}
radix define t_rxstate {
    "5'b00000" "IDLE",
    "5'b00001" "SYNC_BYTE",
    "5'b00010" "SYNC_ERROR",
    "5'b00011" "PID",
    "5'b00100" "IN_TOKEN",
    "5'b00101" "OUT_TOKEN",
    "5'b00110" "IN_TOKEN2",
    "5'b00111" "OUT_TOKEN2",
    "5'b01000" "ACK_STATE",
    "5'b01001" "NAK_STATE",
    "5'b01010" "CHECK_EOP",
    "5'b01011" "EOP1",
    "5'b01100" "EOP2",
    "5'b01101" "ERROR",
    "5'b01110" "DATA_STATE",
    "5'b01111" "WAIT",
    "5'b10000" "WAIT2",
    "5'b10001" "WAIT_EOP",
    "5'b10010" "STOP",
    -default default
}
quietly WaveActivateNextPane {} 0
add wave -noupdate -color Yellow -itemcolor Yellow -label {Test Name} /tb_top_level_cdl/tb_test_case
add wave -noupdate -color Gold -itemcolor Gold -label {Test #} /tb_top_level_cdl/tb_test_case_num
add wave -noupdate -color White -itemcolor White -label Clock /tb_top_level_cdl/tb_clk
add wave -noupdate -color Red -itemcolor Red -label Reset /tb_top_level_cdl/tb_n_rst
add wave -noupdate -color {Sky Blue} -itemcolor {Sky Blue} -label {DPLUS IN} /tb_top_level_cdl/tb_dplus_in
add wave -noupdate -color {Sky Blue} -itemcolor {Sky Blue} -label {DMINUS IN} /tb_top_level_cdl/tb_dminus_in
add wave -noupdate -color Cyan -itemcolor Cyan -label {DPLUS OUT} /tb_top_level_cdl/tb_dplus_out
add wave -noupdate -color Cyan -itemcolor Cyan -label {DMINUS OUT} /tb_top_level_cdl/tb_dminus_out
add wave -noupdate -label {D Mode} /tb_top_level_cdl/tb_d_mode
add wave -noupdate -group AHB-Lite -label tb_enable_transactions /tb_top_level_cdl/tb_enable_transactions
add wave -noupdate -group AHB-Lite -color {Spring Green} -itemcolor {Spring Green} -label HSEL /tb_top_level_cdl/tb_hsel
add wave -noupdate -group AHB-Lite -color {Spring Green} -itemcolor {Spring Green} -label HTRANS -radix t_htrans /tb_top_level_cdl/tb_htrans
add wave -noupdate -group AHB-Lite -color {Spring Green} -itemcolor {Spring Green} -label HADDR -radix hexadecimal /tb_top_level_cdl/tb_haddr
add wave -noupdate -group AHB-Lite -color {Spring Green} -itemcolor {Spring Green} -label HSIZE -radix hexadecimal /tb_top_level_cdl/tb_hsize
add wave -noupdate -group AHB-Lite -color {Spring Green} -itemcolor {Spring Green} -label HWRITE /tb_top_level_cdl/tb_hwrite
add wave -noupdate -group AHB-Lite -color {Spring Green} -itemcolor {Spring Green} -label HWDATA -radix hexadecimal /tb_top_level_cdl/tb_hwdata
add wave -noupdate -group AHB-Lite -color {Green Yellow} -itemcolor {Green Yellow} -label HRDATA -radix hexadecimal /tb_top_level_cdl/tb_hrdata
add wave -noupdate -group AHB-Lite -color {Green Yellow} -itemcolor {Green Yellow} -label HRESP /tb_top_level_cdl/tb_hresp
add wave -noupdate -group AHB-Lite -color {Green Yellow} -itemcolor {Green Yellow} -label HREADY /tb_top_level_cdl/tb_hready
add wave -noupdate -divider {AHB Sub}
add wave -noupdate -color Magenta -itemcolor Magenta -label {Interface mem} -radix hexadecimal -childformat {{{/tb_top_level_cdl/TOP/AHB/mem[15]} -radix hexadecimal} {{/tb_top_level_cdl/TOP/AHB/mem[14]} -radix hexadecimal} {{/tb_top_level_cdl/TOP/AHB/mem[13]} -radix hexadecimal} {{/tb_top_level_cdl/TOP/AHB/mem[12]} -radix hexadecimal} {{/tb_top_level_cdl/TOP/AHB/mem[11]} -radix hexadecimal} {{/tb_top_level_cdl/TOP/AHB/mem[10]} -radix hexadecimal} {{/tb_top_level_cdl/TOP/AHB/mem[9]} -radix hexadecimal} {{/tb_top_level_cdl/TOP/AHB/mem[8]} -radix hexadecimal} {{/tb_top_level_cdl/TOP/AHB/mem[7]} -radix hexadecimal} {{/tb_top_level_cdl/TOP/AHB/mem[6]} -radix hexadecimal} {{/tb_top_level_cdl/TOP/AHB/mem[5]} -radix hexadecimal} {{/tb_top_level_cdl/TOP/AHB/mem[4]} -radix hexadecimal} {{/tb_top_level_cdl/TOP/AHB/mem[3]} -radix hexadecimal} {{/tb_top_level_cdl/TOP/AHB/mem[2]} -radix hexadecimal} {{/tb_top_level_cdl/TOP/AHB/mem[1]} -radix hexadecimal} {{/tb_top_level_cdl/TOP/AHB/mem[0]} -radix hexadecimal}} -expand -subitemconfig {{/tb_top_level_cdl/TOP/AHB/mem[15]} {-color Magenta -height 16 -itemcolor Magenta -radix hexadecimal} {/tb_top_level_cdl/TOP/AHB/mem[14]} {-color Magenta -height 16 -itemcolor Magenta -radix hexadecimal} {/tb_top_level_cdl/TOP/AHB/mem[13]} {-color Magenta -height 16 -itemcolor Magenta -radix hexadecimal} {/tb_top_level_cdl/TOP/AHB/mem[12]} {-color Magenta -height 16 -itemcolor Magenta -radix hexadecimal} {/tb_top_level_cdl/TOP/AHB/mem[11]} {-color Magenta -height 16 -itemcolor Magenta -radix hexadecimal} {/tb_top_level_cdl/TOP/AHB/mem[10]} {-color Magenta -height 16 -itemcolor Magenta -radix hexadecimal} {/tb_top_level_cdl/TOP/AHB/mem[9]} {-color Magenta -height 16 -itemcolor Magenta -radix hexadecimal} {/tb_top_level_cdl/TOP/AHB/mem[8]} {-color Magenta -height 16 -itemcolor Magenta -radix hexadecimal} {/tb_top_level_cdl/TOP/AHB/mem[7]} {-color Magenta -height 16 -itemcolor Magenta -radix hexadecimal} {/tb_top_level_cdl/TOP/AHB/mem[6]} {-color Magenta -height 16 -itemcolor Magenta -radix hexadecimal} {/tb_top_level_cdl/TOP/AHB/mem[5]} {-color Magenta -height 16 -itemcolor Magenta -radix hexadecimal} {/tb_top_level_cdl/TOP/AHB/mem[4]} {-color Magenta -height 16 -itemcolor Magenta -radix hexadecimal} {/tb_top_level_cdl/TOP/AHB/mem[3]} {-color Magenta -height 16 -itemcolor Magenta -radix hexadecimal} {/tb_top_level_cdl/TOP/AHB/mem[2]} {-color Magenta -height 16 -itemcolor Magenta -radix hexadecimal} {/tb_top_level_cdl/TOP/AHB/mem[1]} {-color Magenta -height 16 -itemcolor Magenta -radix hexadecimal} {/tb_top_level_cdl/TOP/AHB/mem[0]} {-color Magenta -height 16 -itemcolor Magenta -radix hexadecimal}} /tb_top_level_cdl/TOP/AHB/mem
add wave -noupdate -divider Buffer
add wave -noupdate -color {Blue Violet} -itemcolor {Blue Violet} -label {Write Pointer} -radix decimal /tb_top_level_cdl/TOP/BUFF/w_ptr
add wave -noupdate -color {Blue Violet} -itemcolor {Blue Violet} -label {Read Pointer} -radix decimal -childformat {{{/tb_top_level_cdl/TOP/BUFF/r_ptr[63]} -radix hexadecimal} {{/tb_top_level_cdl/TOP/BUFF/r_ptr[62]} -radix hexadecimal} {{/tb_top_level_cdl/TOP/BUFF/r_ptr[61]} -radix hexadecimal} {{/tb_top_level_cdl/TOP/BUFF/r_ptr[60]} -radix hexadecimal} {{/tb_top_level_cdl/TOP/BUFF/r_ptr[59]} -radix hexadecimal} {{/tb_top_level_cdl/TOP/BUFF/r_ptr[58]} -radix hexadecimal} {{/tb_top_level_cdl/TOP/BUFF/r_ptr[57]} -radix hexadecimal} {{/tb_top_level_cdl/TOP/BUFF/r_ptr[56]} -radix hexadecimal} {{/tb_top_level_cdl/TOP/BUFF/r_ptr[55]} -radix hexadecimal} {{/tb_top_level_cdl/TOP/BUFF/r_ptr[54]} -radix hexadecimal} {{/tb_top_level_cdl/TOP/BUFF/r_ptr[53]} -radix hexadecimal} {{/tb_top_level_cdl/TOP/BUFF/r_ptr[52]} -radix hexadecimal} {{/tb_top_level_cdl/TOP/BUFF/r_ptr[51]} -radix hexadecimal} {{/tb_top_level_cdl/TOP/BUFF/r_ptr[50]} -radix hexadecimal} {{/tb_top_level_cdl/TOP/BUFF/r_ptr[49]} -radix hexadecimal} {{/tb_top_level_cdl/TOP/BUFF/r_ptr[48]} -radix hexadecimal} {{/tb_top_level_cdl/TOP/BUFF/r_ptr[47]} -radix hexadecimal} {{/tb_top_level_cdl/TOP/BUFF/r_ptr[46]} -radix hexadecimal} {{/tb_top_level_cdl/TOP/BUFF/r_ptr[45]} -radix hexadecimal} {{/tb_top_level_cdl/TOP/BUFF/r_ptr[44]} -radix hexadecimal} {{/tb_top_level_cdl/TOP/BUFF/r_ptr[43]} -radix hexadecimal} {{/tb_top_level_cdl/TOP/BUFF/r_ptr[42]} -radix hexadecimal} {{/tb_top_level_cdl/TOP/BUFF/r_ptr[41]} -radix hexadecimal} {{/tb_top_level_cdl/TOP/BUFF/r_ptr[40]} -radix hexadecimal} {{/tb_top_level_cdl/TOP/BUFF/r_ptr[39]} -radix hexadecimal} {{/tb_top_level_cdl/TOP/BUFF/r_ptr[38]} -radix hexadecimal} {{/tb_top_level_cdl/TOP/BUFF/r_ptr[37]} -radix hexadecimal} {{/tb_top_level_cdl/TOP/BUFF/r_ptr[36]} -radix hexadecimal} {{/tb_top_level_cdl/TOP/BUFF/r_ptr[35]} -radix hexadecimal} {{/tb_top_level_cdl/TOP/BUFF/r_ptr[34]} -radix hexadecimal} {{/tb_top_level_cdl/TOP/BUFF/r_ptr[33]} -radix hexadecimal} {{/tb_top_level_cdl/TOP/BUFF/r_ptr[32]} -radix hexadecimal} {{/tb_top_level_cdl/TOP/BUFF/r_ptr[31]} -radix hexadecimal} {{/tb_top_level_cdl/TOP/BUFF/r_ptr[30]} -radix hexadecimal} {{/tb_top_level_cdl/TOP/BUFF/r_ptr[29]} -radix hexadecimal} {{/tb_top_level_cdl/TOP/BUFF/r_ptr[28]} -radix hexadecimal} {{/tb_top_level_cdl/TOP/BUFF/r_ptr[27]} -radix hexadecimal} {{/tb_top_level_cdl/TOP/BUFF/r_ptr[26]} -radix hexadecimal} {{/tb_top_level_cdl/TOP/BUFF/r_ptr[25]} -radix hexadecimal} {{/tb_top_level_cdl/TOP/BUFF/r_ptr[24]} -radix hexadecimal} {{/tb_top_level_cdl/TOP/BUFF/r_ptr[23]} -radix hexadecimal} {{/tb_top_level_cdl/TOP/BUFF/r_ptr[22]} -radix hexadecimal} {{/tb_top_level_cdl/TOP/BUFF/r_ptr[21]} -radix hexadecimal} {{/tb_top_level_cdl/TOP/BUFF/r_ptr[20]} -radix hexadecimal} {{/tb_top_level_cdl/TOP/BUFF/r_ptr[19]} -radix hexadecimal} {{/tb_top_level_cdl/TOP/BUFF/r_ptr[18]} -radix hexadecimal} {{/tb_top_level_cdl/TOP/BUFF/r_ptr[17]} -radix hexadecimal} {{/tb_top_level_cdl/TOP/BUFF/r_ptr[16]} -radix hexadecimal} {{/tb_top_level_cdl/TOP/BUFF/r_ptr[15]} -radix hexadecimal} {{/tb_top_level_cdl/TOP/BUFF/r_ptr[14]} -radix hexadecimal} {{/tb_top_level_cdl/TOP/BUFF/r_ptr[13]} -radix hexadecimal} {{/tb_top_level_cdl/TOP/BUFF/r_ptr[12]} -radix hexadecimal} {{/tb_top_level_cdl/TOP/BUFF/r_ptr[11]} -radix hexadecimal} {{/tb_top_level_cdl/TOP/BUFF/r_ptr[10]} -radix hexadecimal} {{/tb_top_level_cdl/TOP/BUFF/r_ptr[9]} -radix hexadecimal} {{/tb_top_level_cdl/TOP/BUFF/r_ptr[8]} -radix hexadecimal} {{/tb_top_level_cdl/TOP/BUFF/r_ptr[7]} -radix hexadecimal} {{/tb_top_level_cdl/TOP/BUFF/r_ptr[6]} -radix hexadecimal} {{/tb_top_level_cdl/TOP/BUFF/r_ptr[5]} -radix hexadecimal} {{/tb_top_level_cdl/TOP/BUFF/r_ptr[4]} -radix hexadecimal} {{/tb_top_level_cdl/TOP/BUFF/r_ptr[3]} -radix hexadecimal} {{/tb_top_level_cdl/TOP/BUFF/r_ptr[2]} -radix hexadecimal} {{/tb_top_level_cdl/TOP/BUFF/r_ptr[1]} -radix hexadecimal} {{/tb_top_level_cdl/TOP/BUFF/r_ptr[0]} -radix hexadecimal}} -subitemconfig {{/tb_top_level_cdl/TOP/BUFF/r_ptr[63]} {-color {Blue Violet} -height 16 -itemcolor {Blue Violet} -radix hexadecimal} {/tb_top_level_cdl/TOP/BUFF/r_ptr[62]} {-color {Blue Violet} -height 16 -itemcolor {Blue Violet} -radix hexadecimal} {/tb_top_level_cdl/TOP/BUFF/r_ptr[61]} {-color {Blue Violet} -height 16 -itemcolor {Blue Violet} -radix hexadecimal} {/tb_top_level_cdl/TOP/BUFF/r_ptr[60]} {-color {Blue Violet} -height 16 -itemcolor {Blue Violet} -radix hexadecimal} {/tb_top_level_cdl/TOP/BUFF/r_ptr[59]} {-color {Blue Violet} -height 16 -itemcolor {Blue Violet} -radix hexadecimal} {/tb_top_level_cdl/TOP/BUFF/r_ptr[58]} {-color {Blue Violet} -height 16 -itemcolor {Blue Violet} -radix hexadecimal} {/tb_top_level_cdl/TOP/BUFF/r_ptr[57]} {-color {Blue Violet} -height 16 -itemcolor {Blue Violet} -radix hexadecimal} {/tb_top_level_cdl/TOP/BUFF/r_ptr[56]} {-color {Blue Violet} -height 16 -itemcolor {Blue Violet} -radix hexadecimal} {/tb_top_level_cdl/TOP/BUFF/r_ptr[55]} {-color {Blue Violet} -height 16 -itemcolor {Blue Violet} -radix hexadecimal} {/tb_top_level_cdl/TOP/BUFF/r_ptr[54]} {-color {Blue Violet} -height 16 -itemcolor {Blue Violet} -radix hexadecimal} {/tb_top_level_cdl/TOP/BUFF/r_ptr[53]} {-color {Blue Violet} -height 16 -itemcolor {Blue Violet} -radix hexadecimal} {/tb_top_level_cdl/TOP/BUFF/r_ptr[52]} {-color {Blue Violet} -height 16 -itemcolor {Blue Violet} -radix hexadecimal} {/tb_top_level_cdl/TOP/BUFF/r_ptr[51]} {-color {Blue Violet} -height 16 -itemcolor {Blue Violet} -radix hexadecimal} {/tb_top_level_cdl/TOP/BUFF/r_ptr[50]} {-color {Blue Violet} -height 16 -itemcolor {Blue Violet} -radix hexadecimal} {/tb_top_level_cdl/TOP/BUFF/r_ptr[49]} {-color {Blue Violet} -height 16 -itemcolor {Blue Violet} -radix hexadecimal} {/tb_top_level_cdl/TOP/BUFF/r_ptr[48]} {-color {Blue Violet} -height 16 -itemcolor {Blue Violet} -radix hexadecimal} {/tb_top_level_cdl/TOP/BUFF/r_ptr[47]} {-color {Blue Violet} -height 16 -itemcolor {Blue Violet} -radix hexadecimal} {/tb_top_level_cdl/TOP/BUFF/r_ptr[46]} {-color {Blue Violet} -height 16 -itemcolor {Blue Violet} -radix hexadecimal} {/tb_top_level_cdl/TOP/BUFF/r_ptr[45]} {-color {Blue Violet} -height 16 -itemcolor {Blue Violet} -radix hexadecimal} {/tb_top_level_cdl/TOP/BUFF/r_ptr[44]} {-color {Blue Violet} -height 16 -itemcolor {Blue Violet} -radix hexadecimal} {/tb_top_level_cdl/TOP/BUFF/r_ptr[43]} {-color {Blue Violet} -height 16 -itemcolor {Blue Violet} -radix hexadecimal} {/tb_top_level_cdl/TOP/BUFF/r_ptr[42]} {-color {Blue Violet} -height 16 -itemcolor {Blue Violet} -radix hexadecimal} {/tb_top_level_cdl/TOP/BUFF/r_ptr[41]} {-color {Blue Violet} -height 16 -itemcolor {Blue Violet} -radix hexadecimal} {/tb_top_level_cdl/TOP/BUFF/r_ptr[40]} {-color {Blue Violet} -height 16 -itemcolor {Blue Violet} -radix hexadecimal} {/tb_top_level_cdl/TOP/BUFF/r_ptr[39]} {-color {Blue Violet} -height 16 -itemcolor {Blue Violet} -radix hexadecimal} {/tb_top_level_cdl/TOP/BUFF/r_ptr[38]} {-color {Blue Violet} -height 16 -itemcolor {Blue Violet} -radix hexadecimal} {/tb_top_level_cdl/TOP/BUFF/r_ptr[37]} {-color {Blue Violet} -height 16 -itemcolor {Blue Violet} -radix hexadecimal} {/tb_top_level_cdl/TOP/BUFF/r_ptr[36]} {-color {Blue Violet} -height 16 -itemcolor {Blue Violet} -radix hexadecimal} {/tb_top_level_cdl/TOP/BUFF/r_ptr[35]} {-color {Blue Violet} -height 16 -itemcolor {Blue Violet} -radix hexadecimal} {/tb_top_level_cdl/TOP/BUFF/r_ptr[34]} {-color {Blue Violet} -height 16 -itemcolor {Blue Violet} -radix hexadecimal} {/tb_top_level_cdl/TOP/BUFF/r_ptr[33]} {-color {Blue Violet} -height 16 -itemcolor {Blue Violet} -radix hexadecimal} {/tb_top_level_cdl/TOP/BUFF/r_ptr[32]} {-color {Blue Violet} -height 16 -itemcolor {Blue Violet} -radix hexadecimal} {/tb_top_level_cdl/TOP/BUFF/r_ptr[31]} {-color {Blue Violet} -height 16 -itemcolor {Blue Violet} -radix hexadecimal} {/tb_top_level_cdl/TOP/BUFF/r_ptr[30]} {-color {Blue Violet} -height 16 -itemcolor {Blue Violet} -radix hexadecimal} {/tb_top_level_cdl/TOP/BUFF/r_ptr[29]} {-color {Blue Violet} -height 16 -itemcolor {Blue Violet} -radix hexadecimal} {/tb_top_level_cdl/TOP/BUFF/r_ptr[28]} {-color {Blue Violet} -height 16 -itemcolor {Blue Violet} -radix hexadecimal} {/tb_top_level_cdl/TOP/BUFF/r_ptr[27]} {-color {Blue Violet} -height 16 -itemcolor {Blue Violet} -radix hexadecimal} {/tb_top_level_cdl/TOP/BUFF/r_ptr[26]} {-color {Blue Violet} -height 16 -itemcolor {Blue Violet} -radix hexadecimal} {/tb_top_level_cdl/TOP/BUFF/r_ptr[25]} {-color {Blue Violet} -height 16 -itemcolor {Blue Violet} -radix hexadecimal} {/tb_top_level_cdl/TOP/BUFF/r_ptr[24]} {-color {Blue Violet} -height 16 -itemcolor {Blue Violet} -radix hexadecimal} {/tb_top_level_cdl/TOP/BUFF/r_ptr[23]} {-color {Blue Violet} -height 16 -itemcolor {Blue Violet} -radix hexadecimal} {/tb_top_level_cdl/TOP/BUFF/r_ptr[22]} {-color {Blue Violet} -height 16 -itemcolor {Blue Violet} -radix hexadecimal} {/tb_top_level_cdl/TOP/BUFF/r_ptr[21]} {-color {Blue Violet} -height 16 -itemcolor {Blue Violet} -radix hexadecimal} {/tb_top_level_cdl/TOP/BUFF/r_ptr[20]} {-color {Blue Violet} -height 16 -itemcolor {Blue Violet} -radix hexadecimal} {/tb_top_level_cdl/TOP/BUFF/r_ptr[19]} {-color {Blue Violet} -height 16 -itemcolor {Blue Violet} -radix hexadecimal} {/tb_top_level_cdl/TOP/BUFF/r_ptr[18]} {-color {Blue Violet} -height 16 -itemcolor {Blue Violet} -radix hexadecimal} {/tb_top_level_cdl/TOP/BUFF/r_ptr[17]} {-color {Blue Violet} -height 16 -itemcolor {Blue Violet} -radix hexadecimal} {/tb_top_level_cdl/TOP/BUFF/r_ptr[16]} {-color {Blue Violet} -height 16 -itemcolor {Blue Violet} -radix hexadecimal} {/tb_top_level_cdl/TOP/BUFF/r_ptr[15]} {-color {Blue Violet} -height 16 -itemcolor {Blue Violet} -radix hexadecimal} {/tb_top_level_cdl/TOP/BUFF/r_ptr[14]} {-color {Blue Violet} -height 16 -itemcolor {Blue Violet} -radix hexadecimal} {/tb_top_level_cdl/TOP/BUFF/r_ptr[13]} {-color {Blue Violet} -height 16 -itemcolor {Blue Violet} -radix hexadecimal} {/tb_top_level_cdl/TOP/BUFF/r_ptr[12]} {-color {Blue Violet} -height 16 -itemcolor {Blue Violet} -radix hexadecimal} {/tb_top_level_cdl/TOP/BUFF/r_ptr[11]} {-color {Blue Violet} -height 16 -itemcolor {Blue Violet} -radix hexadecimal} {/tb_top_level_cdl/TOP/BUFF/r_ptr[10]} {-color {Blue Violet} -height 16 -itemcolor {Blue Violet} -radix hexadecimal} {/tb_top_level_cdl/TOP/BUFF/r_ptr[9]} {-color {Blue Violet} -height 16 -itemcolor {Blue Violet} -radix hexadecimal} {/tb_top_level_cdl/TOP/BUFF/r_ptr[8]} {-color {Blue Violet} -height 16 -itemcolor {Blue Violet} -radix hexadecimal} {/tb_top_level_cdl/TOP/BUFF/r_ptr[7]} {-color {Blue Violet} -height 16 -itemcolor {Blue Violet} -radix hexadecimal} {/tb_top_level_cdl/TOP/BUFF/r_ptr[6]} {-color {Blue Violet} -height 16 -itemcolor {Blue Violet} -radix hexadecimal} {/tb_top_level_cdl/TOP/BUFF/r_ptr[5]} {-color {Blue Violet} -height 16 -itemcolor {Blue Violet} -radix hexadecimal} {/tb_top_level_cdl/TOP/BUFF/r_ptr[4]} {-color {Blue Violet} -height 16 -itemcolor {Blue Violet} -radix hexadecimal} {/tb_top_level_cdl/TOP/BUFF/r_ptr[3]} {-color {Blue Violet} -height 16 -itemcolor {Blue Violet} -radix hexadecimal} {/tb_top_level_cdl/TOP/BUFF/r_ptr[2]} {-color {Blue Violet} -height 16 -itemcolor {Blue Violet} -radix hexadecimal} {/tb_top_level_cdl/TOP/BUFF/r_ptr[1]} {-color {Blue Violet} -height 16 -itemcolor {Blue Violet} -radix hexadecimal} {/tb_top_level_cdl/TOP/BUFF/r_ptr[0]} {-color {Blue Violet} -height 16 -itemcolor {Blue Violet} -radix hexadecimal}} /tb_top_level_cdl/TOP/BUFF/r_ptr
add wave -noupdate -color {Blue Violet} -itemcolor {Blue Violet} -label {Buffer mem} -childformat {{{/tb_top_level_cdl/TOP/BUFF/curr_data[63]} -radix hexadecimal} {{/tb_top_level_cdl/TOP/BUFF/curr_data[62]} -radix hexadecimal} {{/tb_top_level_cdl/TOP/BUFF/curr_data[61]} -radix hexadecimal} {{/tb_top_level_cdl/TOP/BUFF/curr_data[60]} -radix hexadecimal} {{/tb_top_level_cdl/TOP/BUFF/curr_data[59]} -radix hexadecimal} {{/tb_top_level_cdl/TOP/BUFF/curr_data[58]} -radix hexadecimal} {{/tb_top_level_cdl/TOP/BUFF/curr_data[57]} -radix hexadecimal} {{/tb_top_level_cdl/TOP/BUFF/curr_data[56]} -radix hexadecimal} {{/tb_top_level_cdl/TOP/BUFF/curr_data[55]} -radix hexadecimal} {{/tb_top_level_cdl/TOP/BUFF/curr_data[54]} -radix hexadecimal} {{/tb_top_level_cdl/TOP/BUFF/curr_data[53]} -radix hexadecimal} {{/tb_top_level_cdl/TOP/BUFF/curr_data[52]} -radix hexadecimal} {{/tb_top_level_cdl/TOP/BUFF/curr_data[51]} -radix hexadecimal} {{/tb_top_level_cdl/TOP/BUFF/curr_data[50]} -radix hexadecimal} {{/tb_top_level_cdl/TOP/BUFF/curr_data[49]} -radix hexadecimal} {{/tb_top_level_cdl/TOP/BUFF/curr_data[48]} -radix hexadecimal} {{/tb_top_level_cdl/TOP/BUFF/curr_data[47]} -radix hexadecimal} {{/tb_top_level_cdl/TOP/BUFF/curr_data[46]} -radix hexadecimal} {{/tb_top_level_cdl/TOP/BUFF/curr_data[45]} -radix hexadecimal} {{/tb_top_level_cdl/TOP/BUFF/curr_data[44]} -radix hexadecimal} {{/tb_top_level_cdl/TOP/BUFF/curr_data[43]} -radix hexadecimal} {{/tb_top_level_cdl/TOP/BUFF/curr_data[42]} -radix hexadecimal} {{/tb_top_level_cdl/TOP/BUFF/curr_data[41]} -radix hexadecimal} {{/tb_top_level_cdl/TOP/BUFF/curr_data[40]} -radix hexadecimal} {{/tb_top_level_cdl/TOP/BUFF/curr_data[39]} -radix hexadecimal} {{/tb_top_level_cdl/TOP/BUFF/curr_data[38]} -radix hexadecimal} {{/tb_top_level_cdl/TOP/BUFF/curr_data[37]} -radix hexadecimal} {{/tb_top_level_cdl/TOP/BUFF/curr_data[36]} -radix hexadecimal} {{/tb_top_level_cdl/TOP/BUFF/curr_data[35]} -radix hexadecimal} {{/tb_top_level_cdl/TOP/BUFF/curr_data[34]} -radix hexadecimal} {{/tb_top_level_cdl/TOP/BUFF/curr_data[33]} -radix hexadecimal} {{/tb_top_level_cdl/TOP/BUFF/curr_data[32]} -radix hexadecimal} {{/tb_top_level_cdl/TOP/BUFF/curr_data[31]} -radix hexadecimal} {{/tb_top_level_cdl/TOP/BUFF/curr_data[30]} -radix hexadecimal} {{/tb_top_level_cdl/TOP/BUFF/curr_data[29]} -radix hexadecimal} {{/tb_top_level_cdl/TOP/BUFF/curr_data[28]} -radix hexadecimal} {{/tb_top_level_cdl/TOP/BUFF/curr_data[27]} -radix hexadecimal} {{/tb_top_level_cdl/TOP/BUFF/curr_data[26]} -radix hexadecimal} {{/tb_top_level_cdl/TOP/BUFF/curr_data[25]} -radix hexadecimal} {{/tb_top_level_cdl/TOP/BUFF/curr_data[24]} -radix hexadecimal} {{/tb_top_level_cdl/TOP/BUFF/curr_data[23]} -radix hexadecimal} {{/tb_top_level_cdl/TOP/BUFF/curr_data[22]} -radix hexadecimal} {{/tb_top_level_cdl/TOP/BUFF/curr_data[21]} -radix hexadecimal} {{/tb_top_level_cdl/TOP/BUFF/curr_data[20]} -radix hexadecimal} {{/tb_top_level_cdl/TOP/BUFF/curr_data[19]} -radix hexadecimal} {{/tb_top_level_cdl/TOP/BUFF/curr_data[18]} -radix hexadecimal} {{/tb_top_level_cdl/TOP/BUFF/curr_data[17]} -radix hexadecimal} {{/tb_top_level_cdl/TOP/BUFF/curr_data[16]} -radix hexadecimal} {{/tb_top_level_cdl/TOP/BUFF/curr_data[15]} -radix hexadecimal} {{/tb_top_level_cdl/TOP/BUFF/curr_data[14]} -radix hexadecimal} {{/tb_top_level_cdl/TOP/BUFF/curr_data[13]} -radix hexadecimal} {{/tb_top_level_cdl/TOP/BUFF/curr_data[12]} -radix hexadecimal} {{/tb_top_level_cdl/TOP/BUFF/curr_data[11]} -radix hexadecimal} {{/tb_top_level_cdl/TOP/BUFF/curr_data[10]} -radix hexadecimal} {{/tb_top_level_cdl/TOP/BUFF/curr_data[9]} -radix hexadecimal} {{/tb_top_level_cdl/TOP/BUFF/curr_data[8]} -radix hexadecimal} {{/tb_top_level_cdl/TOP/BUFF/curr_data[7]} -radix hexadecimal} {{/tb_top_level_cdl/TOP/BUFF/curr_data[6]} -radix hexadecimal} {{/tb_top_level_cdl/TOP/BUFF/curr_data[5]} -radix hexadecimal} {{/tb_top_level_cdl/TOP/BUFF/curr_data[4]} -radix hexadecimal} {{/tb_top_level_cdl/TOP/BUFF/curr_data[3]} -radix hexadecimal} {{/tb_top_level_cdl/TOP/BUFF/curr_data[2]} -radix hexadecimal} {{/tb_top_level_cdl/TOP/BUFF/curr_data[1]} -radix hexadecimal} {{/tb_top_level_cdl/TOP/BUFF/curr_data[0]} -radix hexadecimal}} -subitemconfig {{/tb_top_level_cdl/TOP/BUFF/curr_data[63]} {-color {Blue Violet} -height 16 -itemcolor {Blue Violet} -radix hexadecimal} {/tb_top_level_cdl/TOP/BUFF/curr_data[62]} {-color {Blue Violet} -height 16 -itemcolor {Blue Violet} -radix hexadecimal} {/tb_top_level_cdl/TOP/BUFF/curr_data[61]} {-color {Blue Violet} -height 16 -itemcolor {Blue Violet} -radix hexadecimal} {/tb_top_level_cdl/TOP/BUFF/curr_data[60]} {-color {Blue Violet} -height 16 -itemcolor {Blue Violet} -radix hexadecimal} {/tb_top_level_cdl/TOP/BUFF/curr_data[59]} {-color {Blue Violet} -height 16 -itemcolor {Blue Violet} -radix hexadecimal} {/tb_top_level_cdl/TOP/BUFF/curr_data[58]} {-color {Blue Violet} -height 16 -itemcolor {Blue Violet} -radix hexadecimal} {/tb_top_level_cdl/TOP/BUFF/curr_data[57]} {-color {Blue Violet} -height 16 -itemcolor {Blue Violet} -radix hexadecimal} {/tb_top_level_cdl/TOP/BUFF/curr_data[56]} {-color {Blue Violet} -height 16 -itemcolor {Blue Violet} -radix hexadecimal} {/tb_top_level_cdl/TOP/BUFF/curr_data[55]} {-color {Blue Violet} -height 16 -itemcolor {Blue Violet} -radix hexadecimal} {/tb_top_level_cdl/TOP/BUFF/curr_data[54]} {-color {Blue Violet} -height 16 -itemcolor {Blue Violet} -radix hexadecimal} {/tb_top_level_cdl/TOP/BUFF/curr_data[53]} {-color {Blue Violet} -height 16 -itemcolor {Blue Violet} -radix hexadecimal} {/tb_top_level_cdl/TOP/BUFF/curr_data[52]} {-color {Blue Violet} -height 16 -itemcolor {Blue Violet} -radix hexadecimal} {/tb_top_level_cdl/TOP/BUFF/curr_data[51]} {-color {Blue Violet} -height 16 -itemcolor {Blue Violet} -radix hexadecimal} {/tb_top_level_cdl/TOP/BUFF/curr_data[50]} {-color {Blue Violet} -height 16 -itemcolor {Blue Violet} -radix hexadecimal} {/tb_top_level_cdl/TOP/BUFF/curr_data[49]} {-color {Blue Violet} -height 16 -itemcolor {Blue Violet} -radix hexadecimal} {/tb_top_level_cdl/TOP/BUFF/curr_data[48]} {-color {Blue Violet} -height 16 -itemcolor {Blue Violet} -radix hexadecimal} {/tb_top_level_cdl/TOP/BUFF/curr_data[47]} {-color {Blue Violet} -height 16 -itemcolor {Blue Violet} -radix hexadecimal} {/tb_top_level_cdl/TOP/BUFF/curr_data[46]} {-color {Blue Violet} -height 16 -itemcolor {Blue Violet} -radix hexadecimal} {/tb_top_level_cdl/TOP/BUFF/curr_data[45]} {-color {Blue Violet} -height 16 -itemcolor {Blue Violet} -radix hexadecimal} {/tb_top_level_cdl/TOP/BUFF/curr_data[44]} {-color {Blue Violet} -height 16 -itemcolor {Blue Violet} -radix hexadecimal} {/tb_top_level_cdl/TOP/BUFF/curr_data[43]} {-color {Blue Violet} -height 16 -itemcolor {Blue Violet} -radix hexadecimal} {/tb_top_level_cdl/TOP/BUFF/curr_data[42]} {-color {Blue Violet} -height 16 -itemcolor {Blue Violet} -radix hexadecimal} {/tb_top_level_cdl/TOP/BUFF/curr_data[41]} {-color {Blue Violet} -height 16 -itemcolor {Blue Violet} -radix hexadecimal} {/tb_top_level_cdl/TOP/BUFF/curr_data[40]} {-color {Blue Violet} -height 16 -itemcolor {Blue Violet} -radix hexadecimal} {/tb_top_level_cdl/TOP/BUFF/curr_data[39]} {-color {Blue Violet} -height 16 -itemcolor {Blue Violet} -radix hexadecimal} {/tb_top_level_cdl/TOP/BUFF/curr_data[38]} {-color {Blue Violet} -height 16 -itemcolor {Blue Violet} -radix hexadecimal} {/tb_top_level_cdl/TOP/BUFF/curr_data[37]} {-color {Blue Violet} -height 16 -itemcolor {Blue Violet} -radix hexadecimal} {/tb_top_level_cdl/TOP/BUFF/curr_data[36]} {-color {Blue Violet} -height 16 -itemcolor {Blue Violet} -radix hexadecimal} {/tb_top_level_cdl/TOP/BUFF/curr_data[35]} {-color {Blue Violet} -height 16 -itemcolor {Blue Violet} -radix hexadecimal} {/tb_top_level_cdl/TOP/BUFF/curr_data[34]} {-color {Blue Violet} -height 16 -itemcolor {Blue Violet} -radix hexadecimal} {/tb_top_level_cdl/TOP/BUFF/curr_data[33]} {-color {Blue Violet} -height 16 -itemcolor {Blue Violet} -radix hexadecimal} {/tb_top_level_cdl/TOP/BUFF/curr_data[32]} {-color {Blue Violet} -height 16 -itemcolor {Blue Violet} -radix hexadecimal} {/tb_top_level_cdl/TOP/BUFF/curr_data[31]} {-color {Blue Violet} -height 16 -itemcolor {Blue Violet} -radix hexadecimal} {/tb_top_level_cdl/TOP/BUFF/curr_data[30]} {-color {Blue Violet} -height 16 -itemcolor {Blue Violet} -radix hexadecimal} {/tb_top_level_cdl/TOP/BUFF/curr_data[29]} {-color {Blue Violet} -height 16 -itemcolor {Blue Violet} -radix hexadecimal} {/tb_top_level_cdl/TOP/BUFF/curr_data[28]} {-color {Blue Violet} -height 16 -itemcolor {Blue Violet} -radix hexadecimal} {/tb_top_level_cdl/TOP/BUFF/curr_data[27]} {-color {Blue Violet} -height 16 -itemcolor {Blue Violet} -radix hexadecimal} {/tb_top_level_cdl/TOP/BUFF/curr_data[26]} {-color {Blue Violet} -height 16 -itemcolor {Blue Violet} -radix hexadecimal} {/tb_top_level_cdl/TOP/BUFF/curr_data[25]} {-color {Blue Violet} -height 16 -itemcolor {Blue Violet} -radix hexadecimal} {/tb_top_level_cdl/TOP/BUFF/curr_data[24]} {-color {Blue Violet} -height 16 -itemcolor {Blue Violet} -radix hexadecimal} {/tb_top_level_cdl/TOP/BUFF/curr_data[23]} {-color {Blue Violet} -height 16 -itemcolor {Blue Violet} -radix hexadecimal} {/tb_top_level_cdl/TOP/BUFF/curr_data[22]} {-color {Blue Violet} -height 16 -itemcolor {Blue Violet} -radix hexadecimal} {/tb_top_level_cdl/TOP/BUFF/curr_data[21]} {-color {Blue Violet} -height 16 -itemcolor {Blue Violet} -radix hexadecimal} {/tb_top_level_cdl/TOP/BUFF/curr_data[20]} {-color {Blue Violet} -height 16 -itemcolor {Blue Violet} -radix hexadecimal} {/tb_top_level_cdl/TOP/BUFF/curr_data[19]} {-color {Blue Violet} -height 16 -itemcolor {Blue Violet} -radix hexadecimal} {/tb_top_level_cdl/TOP/BUFF/curr_data[18]} {-color {Blue Violet} -height 16 -itemcolor {Blue Violet} -radix hexadecimal} {/tb_top_level_cdl/TOP/BUFF/curr_data[17]} {-color {Blue Violet} -height 16 -itemcolor {Blue Violet} -radix hexadecimal} {/tb_top_level_cdl/TOP/BUFF/curr_data[16]} {-color {Blue Violet} -height 16 -itemcolor {Blue Violet} -radix hexadecimal} {/tb_top_level_cdl/TOP/BUFF/curr_data[15]} {-color {Blue Violet} -height 16 -itemcolor {Blue Violet} -radix hexadecimal} {/tb_top_level_cdl/TOP/BUFF/curr_data[14]} {-color {Blue Violet} -height 16 -itemcolor {Blue Violet} -radix hexadecimal} {/tb_top_level_cdl/TOP/BUFF/curr_data[13]} {-color {Blue Violet} -height 16 -itemcolor {Blue Violet} -radix hexadecimal} {/tb_top_level_cdl/TOP/BUFF/curr_data[12]} {-color {Blue Violet} -height 16 -itemcolor {Blue Violet} -radix hexadecimal} {/tb_top_level_cdl/TOP/BUFF/curr_data[11]} {-color {Blue Violet} -height 16 -itemcolor {Blue Violet} -radix hexadecimal} {/tb_top_level_cdl/TOP/BUFF/curr_data[10]} {-color {Blue Violet} -height 16 -itemcolor {Blue Violet} -radix hexadecimal} {/tb_top_level_cdl/TOP/BUFF/curr_data[9]} {-color {Blue Violet} -height 16 -itemcolor {Blue Violet} -radix hexadecimal} {/tb_top_level_cdl/TOP/BUFF/curr_data[8]} {-color {Blue Violet} -height 16 -itemcolor {Blue Violet} -radix hexadecimal} {/tb_top_level_cdl/TOP/BUFF/curr_data[7]} {-color {Blue Violet} -height 16 -itemcolor {Blue Violet} -radix hexadecimal} {/tb_top_level_cdl/TOP/BUFF/curr_data[6]} {-color {Blue Violet} -height 16 -itemcolor {Blue Violet} -radix hexadecimal} {/tb_top_level_cdl/TOP/BUFF/curr_data[5]} {-color {Blue Violet} -height 16 -itemcolor {Blue Violet} -radix hexadecimal} {/tb_top_level_cdl/TOP/BUFF/curr_data[4]} {-color {Blue Violet} -height 16 -itemcolor {Blue Violet} -radix hexadecimal} {/tb_top_level_cdl/TOP/BUFF/curr_data[3]} {-color {Blue Violet} -height 16 -itemcolor {Blue Violet} -radix hexadecimal} {/tb_top_level_cdl/TOP/BUFF/curr_data[2]} {-color {Blue Violet} -height 16 -itemcolor {Blue Violet} -radix hexadecimal} {/tb_top_level_cdl/TOP/BUFF/curr_data[1]} {-color {Blue Violet} -height 16 -itemcolor {Blue Violet} -radix hexadecimal} {/tb_top_level_cdl/TOP/BUFF/curr_data[0]} {-color {Blue Violet} -height 16 -itemcolor {Blue Violet} -radix hexadecimal}} /tb_top_level_cdl/TOP/BUFF/curr_data
add wave -noupdate -color {Blue Violet} -itemcolor {Blue Violet} -label {Buffer Occupancy} -radix hexadecimal -radixshowbase 0 /tb_top_level_cdl/TOP/buffer_occupancy
add wave -noupdate -divider TX
add wave -noupdate -label {TX Packet} -radix t_packet -radixshowbase 0 /tb_top_level_cdl/TOP/TX/TX_Packet
add wave -noupdate -color {Sky Blue} -itemcolor {Sky Blue} -label tx_packet_data -radix hexadecimal /tb_top_level_cdl/TOP/TX/TX_Packet_Data
add wave -noupdate -color Cyan -itemcolor Cyan -label state /tb_top_level_cdl/TOP/TX/tx_ctr/state
add wave -noupdate -color Cyan -itemcolor Cyan -label get_tx_packet_data /tb_top_level_cdl/TOP/TX/Get_TX_Packet_Data
add wave -noupdate -group {TX Controller} -color {Sky Blue} -itemcolor {Sky Blue} -label data_out -radix hexadecimal /tb_top_level_cdl/TOP/TX/data_out
add wave -noupdate -group {TX Controller} -color {Sky Blue} -itemcolor {Sky Blue} -label {next data_out} -radix hexadecimal -radixshowbase 0 /tb_top_level_cdl/TOP/TX/tx_ctr/nxt_data_out
add wave -noupdate -group {TX Controller} -label byte_done -radix binary /tb_top_level_cdl/TOP/TX/tx_ctr/byte_done
add wave -noupdate -group {TX Controller} -label clock_timer -radix binary /tb_top_level_cdl/TOP/TX/tx_ctr/clock_timer
add wave -noupdate -group {TX Controller} -label {next stored_tx_packet_data} /tb_top_level_cdl/TOP/TX/tx_ctr/nxt_stored_tx_packet
add wave -noupdate -group {TX Controller} -label stored_tx_packet_data /tb_top_level_cdl/TOP/TX/tx_ctr/stored_tx_packet
add wave -noupdate -group {TX Controller} -label activate_get_tx /tb_top_level_cdl/TOP/TX/activate_get_tx
add wave -noupdate -divider RX
add wave -noupdate -color Yellow -itemcolor Yellow -label {Store RX Data} /tb_top_level_cdl/TOP/RX/store_rx_packet_data
add wave -noupdate -color Yellow -itemcolor Yellow -label flush /tb_top_level_cdl/TOP/RX/flush
add wave -noupdate -color Orange -itemcolor Orange -label {RX Packet Data} /tb_top_level_cdl/TOP/RX/rx_packet_data
add wave -noupdate -color Salmon -itemcolor Salmon -label d_orig /tb_top_level_cdl/TOP/RX/d_orig
add wave -noupdate -color Salmon -itemcolor Salmon -label d_edge /tb_top_level_cdl/TOP/RX/d_edge
add wave -noupdate -color {Orange Red} -itemcolor {Orange Red} -label shift_en /tb_top_level_cdl/TOP/RX/shift_en
add wave -noupdate -color {Orange Red} -itemcolor {Orange Red} -label {byte received} /tb_top_level_cdl/TOP/RX/br
add wave -noupdate -color {Orange Red} -itemcolor {Orange Red} -label {end of packet} /tb_top_level_cdl/TOP/RX/eop
add wave -noupdate -color White -itemcolor White -label state -radix t_rxstate -radixshowbase 0 /tb_top_level_cdl/TOP/RX/fsm/state
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {0 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 150
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ps
update
WaveRestoreZoom {0 ps} {1024 ns}
