
 add_fsm_encoding \
       {mig_7series_v4_0_tempmon.xadc_supplied_temperature.tempmon_state} \
       { }  \
       {{000 0001} {001 0010} {010 0100} {011 1000} }

 add_fsm_encoding \
       {mig_7series_v4_0_ddr_phy_wrlvl.wl_state_r} \
       { }  \
       {{00000 00000} {00001 00001} {00010 00010} {00011 00101} {00100 00110} {00101 01000} {00110 01010} {00111 01011} {01000 00111} {01001 11000} {01010 11011} {01011 11001} {01100 11010} {01101 10001} {01110 00011} {01111 01111} {10000 00100} {10001 10101} {10010 10110} {10011 10111} {10100 10000} {10101 10010} {10110 10011} {10111 01100} {11000 01101} {11001 01001} {11010 01110} {11011 10100} }

 add_fsm_encoding \
       {mig_7series_v4_0_ddr_phy_dqs_found_cal.fine_adj_state_r} \
       { }  \
       {{0000 0000} {0001 0011} {0010 0100} {0011 0001} {0100 0101} {0101 0110} {0110 0111} {0111 1000} {1000 1001} {1001 1010} {1010 1111} {1011 1011} {1100 1100} {1101 1101} {1110 1110} {1111 0010} }

 add_fsm_encoding \
       {mig_7series_v4_0_ddr_phy_rdlvl.cal1_state_r} \
       { }  \
       {{000000 000000} {000001 000010} {000010 000101} {000011 010001} {000100 010100} {000101 010110} {000110 010111} {000111 011000} {001000 010011} {001001 011011} {001010 011100} {001011 011001} {001100 000100} {001101 011110} {001110 011111} {001111 100001} {010000 000110} {010001 000111} {010010 001001} {010011 001011} {010100 001000} {010101 001100} {010110 001101} {010111 001110} {011000 001111} {011001 001010} {011010 010000} {011011 100010} {011100 010101} {011101 000001} {011110 010010} {011111 000011} {100000 100000} {100001 011010} {100010 011101} }
