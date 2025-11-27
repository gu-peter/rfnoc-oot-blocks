# Simulink-generated register address file
#set(C_HEADER    ${CMAKE_CURRENT_SOURCE_DIR}/Demodulat_ip_0/include/Demodulat_ip_0_addr.h)
#set(V_FILE      ${CMAKE_CURRENT_SOURCE_DIR}/rfnoc_block_multiddc_addr_gen.vh)
#set(AWK_SCRIPT  ${CMAKE_CURRENT_SOURCE_DIR}/../cmake/h2sv.awk)

########################################################################
# Add a rule to instantiate the Demodulat_ip_0 core
########################################################################
add_custom_target(Demodulat_ip_0_core
    COMMAND ${CMAKE_COMMAND} -E echo "Current source dir: ${CMAKE_CURRENT_SOURCE_DIR}"

    COMMAND ${CMAKE_COMMAND} -E cmake_echo_color --cyan "Removing directories matching Demodulat_ip_0_*"
    COMMAND bash -c "shopt -s nullglob; for d in ${CMAKE_CURRENT_SOURCE_DIR}/Demodulat_ip_0_*; do [ -d \"\$d\" ] && rm -rf \"\$d\"; done"

    COMMAND /tools/Xilinx/Vivado/2021.1/bin/vivado -mode batch -source generate_demodulat_ip_0_ipcore.tcl -nojournal

    #COMMAND ${CMAKE_COMMAND} -E echo "Generating MULTIDDC Verilog addresses from ${C_HEADER}"
    #COMMAND awk -f ${AWK_SCRIPT} ${C_HEADER} > ${V_FILE}

    WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR}

    COMMENT "Running Vivado to generate the Demodulat_ip_0 core..."
    VERBATIM
)