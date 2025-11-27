#
# Copyright 2025 Ettus Research, a National Instruments Brand
#
# SPDX-License-Identifier: LGPL-3.0-or-later
#

#-------------------------------------------------
# Top-of-Makefile
#-------------------------------------------------
# Define BASE_DIR to point to the "top" dir. Note:
# UHD_FPGA_DIR must be passed into this Makefile.
ifndef UHD_FPGA_DIR
$(error "UHD_FPGA_DIR is not set! Must point to UHD FPGA repository!")
endif
BASE_DIR = $(UHD_FPGA_DIR)/usrp3/top
# Include viv_sim_preamble after defining BASE_DIR
include $(BASE_DIR)/../tools/make/viv_sim_preamble.mak

#-------------------------------------------------
# Design Specific
#-------------------------------------------------
# Define part using PART_ID (<device>/<package>/<speedgrade>)
#ARCH = zynquplusRFSOC
#PART_ID = xczu28dr/ffvg1517/-2/e

# Out-of-tree IP
OOT_FPGA_DIR = $(dir $(abspath $(firstword $(MAKEFILE_LIST))))/../
include $(OOT_FPGA_DIR)/ip/Demodulat_ip_0/Makefile.inc

# Include makefiles and sources for the DUT and its
# dependencies.
include $(BASE_DIR)/../lib/rfnoc/core/Makefile.srcs
include $(BASE_DIR)/../lib/rfnoc/utils/Makefile.srcs
include Makefile.srcs

DESIGN_SRCS += $(abspath \
$(RFNOC_SRCS)      \
$(RFNOC_CORE_SRCS) \
$(RFNOC_UTIL_SRCS) \
$(RFNOC_BLOCK_DEMODCHEST_SRCS)  \
$(LIB_IP_DEMODULAT_IP_0_SRCS) \
)

#-------------------------------------------------
# IP Specific
#-------------------------------------------------
# If simulation contains IP, define the IP_DIR and point it to the base level
# IP directory.
#IP_DIR = 	$(BASE_DIR)/x400/ip
#LIB_IP_DIR = $(BASE_DIR)/../lib/ip

# Include makefiles and sources for all IP components *after* defining the
# LIB_IP_DIR.
#include $(IP_DIR)/Demodulat_ip_0/Makefile.inc

#DESIGN_SRCS += $(abspath \
$(LIB_IP_DEMODULAT_IP_0_SRCS) \
)


#-------------------------------------------------
# Testbench Specific
#-------------------------------------------------
SIM_TOP = rfnoc_block_demodchest_tb
SIM_SRCS = \
$(abspath rfnoc_block_demodchest_tb.sv) \

#-------------------------------------------------
# Bottom-of-Makefile
#-------------------------------------------------
# Include all simulator specific makefiles here
# Each should define a unique target to simulate
# e.g. xsim, vsim, etc and a common "clean" target
include $(BASE_DIR)/../tools/make/viv_simulator.mak
