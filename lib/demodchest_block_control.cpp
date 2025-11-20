//
// Copyright 2025 <author>
//
// SPDX-License-Identifier: GPL-3.0-or-later
//

// Include our own header:
#include <rfnoc/oot-blocks/demodchest_block_control.hpp>

// These two includes are the minimum required to implement a block:
#include <uhd/rfnoc/defaults.hpp>
#include <uhd/rfnoc/registry.hpp>

using namespace rfnoc::oot_blocks;
using namespace uhd::rfnoc;

// Define register addresses here:
//const uint32_t demodchest_block_control::REG_NAME = 0x1234;

class demodchest_block_control_impl : public demodchest_block_control
{
public:
    RFNOC_BLOCK_CONSTRUCTOR(demodchest_block_control) {}


private:
};

UHD_RFNOC_BLOCK_REGISTER_DIRECT(
    demodchest_block_control, 56880, "Demodchest", CLOCK_KEY_GRAPH, "bus_clk");
