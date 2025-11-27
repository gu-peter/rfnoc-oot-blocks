#
# Copyright 2021 Ettus Research, a National Instruments Brand
#
# SPDX-License-Identifier: LGPL-3.0-or-later
#

# We first need to figure out our own path, because this file could be included
# from anywhere.
THIS_IP_DIR := $(dir $(abspath $(lastword $(MAKEFILE_LIST))))

LIB_IP_DEMODULAT_IP_0_SRCS = $(IP_BUILD_DIR)/Demodulat_ip_0/Demodulat_ip_0.xci

LIB_IP_DEMODULAT_IP_0_OUTS = $(addprefix $(IP_BUILD_DIR)/Demodulat_ip_0/, \
Demodulat_ip_0.xci.out \
synth/Demodulat_ip_0.vhd \
)

.INTERMEDIATE: LIB_IP_DEMODULAT_IP_0_TRGT
$(LIB_IP_DEMODULAT_IP_0_SRCS) $(LIB_IP_DEMODULAT_IP_0_OUTS): LIB_IP_DEMODULAT_IP_0_TRGT
	@:

# This include provides BUILD_VIVADO_IP
include $(TOOLS_DIR)/make/viv_ip_builder.mak

LIB_IP_DEMODULAT_IP_0_TRGT: $(THIS_IP_DIR)Demodulat_ip_0/Demodulat_ip_0.xci
	@echo "Building Demodulat_ip_0"
	$(call BUILD_VIVADO_IP,Demodulat_ip_0,$(ARCH),$(PART_ID),$(THIS_IP_DIR),$(IP_BUILD_DIR),0)
