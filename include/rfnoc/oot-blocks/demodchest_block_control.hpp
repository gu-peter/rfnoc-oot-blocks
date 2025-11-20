//
// Copyright 2025 <author>
//
// SPDX-License-Identifier: GPL-3.0-or-later
//

#pragma once

#include <rfnoc/oot-blocks/config.hpp>
#include <uhd/rfnoc/noc_block_base.hpp>
#include <cstdint>

namespace rfnoc { namespace oot_blocks {

/*! Block controller: Describe me!
 */
class RFNOC_OOT_BLOCKS_API demodchest_block_control : public uhd::rfnoc::noc_block_base
{
public:
    RFNOC_DECLARE_BLOCK(demodchest_block_control)

    // List all registers here if you need to know their address in the block controller:
    ////! The register address of the gain value
    //static const uint32_t REG_NAME;

};

}} // namespace rfnoc::gain
