//
// Copyright 2025 <author>
//
// SPDX-License-Identifier: GPL-3.0-or-later
//

#pragma once

#include <uhd/rfnoc/block_controller_factory_python.hpp>
#include <rfnoc/oot-blocks/demodchest_block_control.hpp>

using namespace rfnoc::oot-blocks;

void export_demodchest_block_control(py::module& m)
{
    py::class_<demodchest_block_control, uhd::rfnoc::noc_block_base, demodchest_block_control::sptr>(
        m, "demodchest_block_control")
        .def(py::init(
            &uhd::rfnoc::block_controller_factory<demodchest_block_control>::make_from))

        ;
}
