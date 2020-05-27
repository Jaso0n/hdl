

## NOTE: With this configuration the #36Kb BRAM utilization is at ~57%

source $ad_hdl_dir/projects/common/zcu102/zcu102_system_bd.tcl

#system ID
ad_ip_parameter axi_sysid_0 CONFIG.ROM_ADDR_BITS 9
ad_ip_parameter rom_sys_0 CONFIG.PATH_TO_FILE "[pwd]/mem_init_sys.txt"
ad_ip_parameter rom_sys_0 CONFIG.ROM_ADDR_BITS 9
set sys_cstring "sys rom custom string placeholder"
sysid_gen_sys_init_file $sys_cstring

ad_mem_hp0_interconnect sys_cpu_clk sys_ps8/S_AXI_HP0

source ../common/ad9656_bd.tcl

ad_ip_parameter axi_ad9656_rx_dma CONFIG.DMA_DATA_WIDTH_DEST 128
ad_ip_parameter axi_ad9656_rx_dma CONFIG.FIFO_SIZE 32

ad_ip_parameter util_ad9656_xcvr CONFIG.QPLL_FBDIV 80
ad_ip_parameter util_ad9656_xcvr CONFIG.QPLL_REFCLK_DIV 1

