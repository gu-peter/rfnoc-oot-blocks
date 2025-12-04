# x440:
create_project demodulat_project . -part xczu28dr-ffvg1517-2-e -in_memory

set_property  ip_repo_paths  /home/peter/git/ip_core_simulink [current_project]
update_ip_catalog
create_ip -name Demodulat_ip -vendor user.org -library ip -version 1.0 -module_name Demodulat_ip_0 -dir .
generate_target {all} [get_files Demodulat_ip_0.xci]