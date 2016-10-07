project compileall;
vsim -gui work.vdp_testbench;
restart -force -no wave															  ;
add wave -position end  sim:/vdp_testbench/DUT/entity_db/clk                      ;
add wave -position end  sim:/vdp_testbench/DUT/entity_db/dav                      ;
add wave -position end  sim:/vdp_testbench/DUT/entity_db/reset                    ;
add wave -position end  sim:/vdp_testbench/DUT/entity_db/state                    ;
add wave -position end  sim:/vdp_testbench/DUT/entity_db/n_state                  ;
add wave -position end  sim:/vdp_testbench/DUT/entity_db/x_out                    ;
add wave -position end  sim:/vdp_testbench/DUT/entity_db/y_out                    ;
add wave -position end  sim:/vdp_testbench/DUT/entity_rcb/rcb_state               ;
add wave -position end  sim:/vdp_testbench/DUT/entity_rcb/nstate                  ;
add wave -position end  sim:/vdp_testbench/DUT/entity_rcb/equal_block_out         ;
add wave -position end  sim:/vdp_testbench/DUT/entity_rcb/PWC2/reg_data           ;
add wave -position end  sim:/vdp_pack/ram_data                                    ;
add wave -position 11  sim:/vdp_testbench/DUT/entity_rcb/PWC2/state               ;
add wave -position end  sim:/vdp_testbench/DUT/entity_db/startcmd                 ;
add wave -position end  sim:/vdp_testbench/DUT/entity_rcb/dbb_delaycmd            ;
add wave -position end  sim:/vdp_testbench/DUT/entity_rcb/rcb_flush_downcount     ;
add wave -position end  sim:/vdp_testbench/DUT/entity_rcb/PWC/pw;
add wave -position end  sim:/vdp_testbench/DUT/entity_rcb/PWC/wen_all;
add wave -position end  sim:/vdp_testbench/RAM1/vwrite;
add wave -position end  sim:/vdp_testbench/DUT/entity_rcb/store;
add wave -position end  sim:/vdp_testbench/RAM1/vaddr;
add wave -position end sim:/vdp_testbench/DUT/entity_rcb/pixop_reg;
add wave -position end sim:/vdp_testbench/DUT/entity_rcb/PWC2/vdout;
add wave -position end sim:/vdp_testbench/DUT/entity_rcb/PWC2/vdin;
add wave -position insertpoint  \sim:/vdp_testbench/DUT/entity_rcb/word_reg_out;
add wave -position end  sim:/vdp_testbench/DUT/entity_rcb/x_in			    ;
add wave -position end  sim:/vdp_testbench/DUT/entity_rcb/y_in              ;
add wave -position end  sim:/vdp_testbench/DUT/entity_rcb/x_clear_reg       ;
add wave -position end  sim:/vdp_testbench/DUT/entity_rcb/y_clear_reg       ;
add wave -position end  sim:/vdp_testbench/DUT/entity_rcb/x_clear_start     ;
add wave -position end  sim:/vdp_testbench/DUT/entity_rcb/y_clear_start     ;
add wave -position 7  sim:/vdp_testbench/DUT/entity_db/DAO/done
add wave -position 7  sim:/vdp_testbench/DUT/entity_db/DAO/c
add wave -position insertpoint  \
sim:/vdp_testbench/DUT/db_finish;
add wave -position insertpoint  \
sim:/vdp_testbench/DUT/rcb_finish;
run 10000000ns;