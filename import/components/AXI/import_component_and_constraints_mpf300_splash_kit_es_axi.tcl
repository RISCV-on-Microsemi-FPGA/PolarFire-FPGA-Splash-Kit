set project_folder_name MiV_RV32IMA_L1_AXI_BaseDesign_MPF300_SPLASH_KIT_ES
set project_dir2 "./$project_folder_name"
set Libero_project_name MiV_AXI_BaseDesign
    
puts "-------------------------------------------------------------------------"
puts "-----------------------IMPORTING COMPONENTS------------------------------"
puts "-------------------------------------------------------------------------"

source ./import/components/AXI/top_level_mpf300_splash_kit_es_axi.tcl
build_design_hierarchy
set_root BaseDesign

puts "-------------------------------------------------------------------------"
puts "--------------------APPLYING DESIGN CONSTRAINTS--------------------------"
puts "-------------------------------------------------------------------------"


import_files -io_pdc ./import/constraints/io/io_constraints.pdc
import_files -sdc ./import/constraints/io_jtag_constraints.sdc
import_files -fp_pdc ./import/constraints/fp/ccc_fp.pdc


# #Associate SDC constraint file to Place and Route tool
organize_tool_files -tool {PLACEROUTE} \
    -file $project_dir2/constraint/io/io_constraints.pdc \
    -file $project_dir2/constraint/io_jtag_constraints.sdc \
	-file $project_dir2/constraint/fp/ccc_fp.pdc \
    -module {BaseDesign::work} -input_type {constraint}

organize_tool_files -tool {SYNTHESIZE} \
	-file $project_dir2/constraint/io_jtag_constraints.sdc \
    -module {BaseDesign::work} -input_type {constraint}    
    
organize_tool_files -tool {VERIFYTIMING} \
	-file $project_dir2/constraint/io_jtag_constraints.sdc \
    -module {BaseDesign::work} -input_type {constraint}
	
set_root BaseDesign
run_tool -name {CONSTRAINT_MANAGEMENT}
derive_constraints_sdc 