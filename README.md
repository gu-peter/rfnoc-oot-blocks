# RFNoC OOT Block Demodulat_ip_0
This repository contains the OOT module Demodulat_ip_0, a module for OFDM demodulation and channel estimation at the receiver side for the USRP X440.
Demodulat_ip_0 has been generated via Matlab Simulink 2023b. All examples use UHD 4.9. The base is adapted from https://github.com/EttusResearch/rfnoc-oot-blocks.

Input of this block: sc16

Output of this block: sc16

## Prerequisites
Clone Demodulat_ip_0 from Matlab Simulink:
git clone https://github.com/gu-peter/ip_core_simulink

Clone the official UHD 
git clone https://github.com/EttusResearch/uhd
git switch UHD-4.9

Go to uhd/fpga/usrp3/tools/scripts/viv_utils.tcl and add these lines of code:
```
if {...
} else {
    puts "BUILDER: Creating Vivado project in memory for part $g_part_name"
    create_project -in_memory -part $g_part_name
}
# include user IP repository, add this section!
    puts "Adding user IP repo"
    set_property ip_repo_paths <your path to git repos>/ip_core_simulink [current_project]
    update_ip_catalog
    report_ip_status
# Expand directories to include their contents (needed for HLS outputs)
foreach src_file $g_source_files {
    ...
    }
}
```
Change the following line in */rfnoc-oot-blocks/rfnoc/fpga/oot-blocks/ip/Demodulat_ip_0/generate_demodulat_ip_0_ipcore.tcl*
```
set_property  ip_repo_paths  <your path to git repos>/ip_core_simulink [current_project]
```

## Image building process
Go back to this repository, and execute the following commands:
```bash
mkdir build
ch build
cmake -DUHD_FPGA_DIR=<your path to git repos>/uhd/fpga/ ../
make -j64
sudo make install
# build IP and .xci file for module Demodulat_ip_0:
make Demodulat_ip_0_core
make x440_CG_400_rfnoc_image_core_demodchest
```


