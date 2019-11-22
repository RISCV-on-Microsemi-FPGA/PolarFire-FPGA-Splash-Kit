set project_folder_name_ahb MiV_RV32IMA_L1_AHB_BaseDesign
set project_dir_ahb "./$project_folder_name_ahb"
set Libero_project_name_ahb MiV_AHB_BaseDesign

append Libero_project_name_ahb "_MPF300_SPLASH_KIT_ES"
append project_dir_ahb "_MPF300_SPLASH_KIT_ES"
append project_folder_name_ahb "_MPF300_SPLASH_KIT_ES"

set project_folder_name_axi MiV_RV32IMA_L1_AXI_BaseDesign
set project_dir_axi "./$project_folder_name_axi"
set Libero_project_name_axi MiV_AXI_BaseDesign

append Libero_project_name_axi "_MPF300_SPLASH_KIT_ES"
append project_dir_axi "_MPF300_SPLASH_KIT_ES"
append project_folder_name_axi "_MPF300_SPLASH_KIT_ES"


set target [string toupper [lindex $argv 0]]
set design_flow_stage [string toupper [lindex $argv 1]]

proc create_new_project_label_ahb { }\
{
	puts "-------------------------------------------------------------------------"
    puts "-------------------------------------------------------------------------"
    puts "-----------------------CREATING NEW PROJECT------------------------------"
	puts "--------MiV_RV32IMA_L1_AHB_BaseDesign_MPF300_SPLASH_KIT_ES---------------"
    puts "-------------------------------------------------------------------------"
	puts "-------------------------------------------------------------------------"
}

proc create_new_project_label_axi { }\
{
	puts "-------------------------------------------------------------------------"
    puts "-------------------------------------------------------------------------"
    puts "-----------------------CREATING NEW PROJECT------------------------------"
	puts "--------MiV_RV32IMA_L1_AXI_BaseDesign_MPF300_SPLASH_KIT_ES---------------"
    puts "-------------------------------------------------------------------------"
	puts "-------------------------------------------------------------------------"
}

proc project_exists { }\
{
	puts "---------------------------------------------------------------------------"
    puts "-------------------------------ERROR !-------------------------------------"
	puts "---------------------------------------------------------------------------"
    puts "Project already exists in folder. Please rename or remove and rerun script."
	puts "---------------------------------------------------------------------------"
}

if {"$target" == "AHB"} then {
	if {[file exists $project_dir_ahb] == 1} then {
		project_exists
	} else { 
		create_new_project_label_ahb
		new_project -location $project_dir_ahb -name $Libero_project_name_ahb -project_description {} -block_mode 0 -standalone_peripheral_initialization 0 -instantiate_in_smartdesign 1 -ondemand_build_dh 1 -hdl {VERILOG} -family {PolarFire} -die {MPF300T_ES} -package {FCG484} -speed {-1} -die_voltage {1.0} -part_range {IND} -adv_options {IO_DEFT_STD:LVCMOS 1.8V} -adv_options {RESTRICTPROBEPINS:1} -adv_options {RESTRICTSPIPINS:0} -adv_options {TEMPR:IND} -adv_options {UNUSED_MSS_IO_RESISTOR_PULL:None} -adv_options {VCCI_1.2_VOLTR:EXT} -adv_options {VCCI_1.5_VOLTR:EXT} -adv_options {VCCI_1.8_VOLTR:EXT} -adv_options {VCCI_2.5_VOLTR:EXT} -adv_options {VCCI_3.3_VOLTR:EXT} -adv_options {VOLTR:IND} 
		source ./import/components/AHB/import_component_and_constraints_mpf300_splash_kit_es_ahb.tcl
		save_project
		puts "-------------------------------------------------------------------------"
		puts "-------------------------------SUCCESS!----------------------------------"
		puts "-------------------------------------------------------------------------"
		puts "-----------------------------Project Built-------------------------------"
		puts "-------------------------------------------------------------------------"
	}
} elseif {"$target" == "AXI"} then {
	if {[file exists $project_dir_axi] == 1} then {
		project_exists
	} else {
		create_new_project_label_axi
		new_project -location $project_dir_axi -name $Libero_project_name_axi -project_description {} -block_mode 0 -standalone_peripheral_initialization 0 -instantiate_in_smartdesign 1 -ondemand_build_dh 1 -hdl {VERILOG} -family {PolarFire} -die {MPF300T_ES} -package {FCG484} -speed {-1} -die_voltage {1.0} -part_range {IND} -adv_options {IO_DEFT_STD:LVCMOS 1.8V} -adv_options {RESTRICTPROBEPINS:1} -adv_options {RESTRICTSPIPINS:0} -adv_options {TEMPR:IND} -adv_options {UNUSED_MSS_IO_RESISTOR_PULL:None} -adv_options {VCCI_1.2_VOLTR:EXT} -adv_options {VCCI_1.5_VOLTR:EXT} -adv_options {VCCI_1.8_VOLTR:EXT} -adv_options {VCCI_2.5_VOLTR:EXT} -adv_options {VCCI_3.3_VOLTR:EXT} -adv_options {VOLTR:IND} 
		source ./import/components/AXI/import_component_and_constraints_mpf300_splash_kit_es_axi.tcl
		save_project
		puts "-------------------------------------------------------------------------"
		puts "-------------------------------SUCCESS!----------------------------------"
		puts "-------------------------------------------------------------------------"
		puts "-----------------------------Project Built-------------------------------"
		puts "-------------------------------------------------------------------------"
	}
} else {
	if {[file exists $project_dir_ahb] == 1} then {
		project_exists
	} else {
		create_new_project_label_ahb
		new_project -location $project_dir_ahb -name $Libero_project_name_ahb -project_description {} -block_mode 0 -standalone_peripheral_initialization 0 -instantiate_in_smartdesign 1 -ondemand_build_dh 1 -hdl {VERILOG} -family {PolarFire} -die {MPF300T_ES} -package {FCG484} -speed {-1} -die_voltage {1.0} -part_range {IND} -adv_options {IO_DEFT_STD:LVCMOS 1.8V} -adv_options {RESTRICTPROBEPINS:1} -adv_options {RESTRICTSPIPINS:0} -adv_options {TEMPR:IND} -adv_options {UNUSED_MSS_IO_RESISTOR_PULL:None} -adv_options {VCCI_1.2_VOLTR:EXT} -adv_options {VCCI_1.5_VOLTR:EXT} -adv_options {VCCI_1.8_VOLTR:EXT} -adv_options {VCCI_2.5_VOLTR:EXT} -adv_options {VCCI_3.3_VOLTR:EXT} -adv_options {VOLTR:IND} 
		source ./import/components/AHB/import_component_and_constraints_mpf300_splash_kit_es_ahb.tcl
		save_project
		puts "-------------------------------------------------------------------------"
		puts "-------------------------------SUCCESS!----------------------------------"
		puts "-------------------------------------------------------------------------"
		puts "-----------------------------Project Built-------------------------------"
		puts "-------------------------------------------------------------------------"
	}
}

		
		

if {"$design_flow_stage" == "SYNTHESIZE"} then {
    puts "-------------------------------------------------------------------------"
    puts "-----------------------------SYNTHESIS-----------------------------------"
    puts "-------------------------------------------------------------------------"

    run_tool -name {SYNTHESIZE}
    save_project
	
} elseif {"$design_flow_stage" == "PLACE_AND_ROUTE"} then {
    puts "-------------------------------------------------------------------------"
    puts "--------------------------PLACE AND ROUTE--------------------------------"
    puts "-------------------------------------------------------------------------"
	
	configure_tool -name {PLACEROUTE} -params {TDPR:true} -params {IOREG_COMBINING:true} -params {INCRPLACEANDROUTE:false} -params {REPAIR_MIN_DELAY:true}
	run_tool -name {PLACEROUTE}
	run_tool -name {VERIFYTIMING}
	save_project

	
} elseif {"$design_flow_stage" == "GENERATE_BITSTREAM"} then {
    puts "-------------------------------------------------------------------------"
    puts "--------------------GENERATING PROGRAMMING FILES-------------------------"
    puts "-------------------------------------------------------------------------"

	configure_tool -name {PLACEROUTE} -params {EFFORT_LEVEL:true} -params {REPAIR_MIN_DELAY:true} -params {TDPR:true} -params {IOREG_COMBINING:true}
	run_tool -name {PLACEROUTE}
	run_tool -name {VERIFYTIMING}
    run_tool -name {GENERATEPROGRAMMINGDATA}
    run_tool -name {GENERATEPROGRAMMINGFILE}
    save_project

} elseif {"$design_flow_stage" == "EXPORT_PROGRAMMING_FILE"} then {
    puts "-------------------------------------------------------------------------"
    puts "----------------------EXPORT PROGRAMMING FILES---------------------------"
    puts "-------------------------------------------------------------------------"

	configure_tool -name {PLACEROUTE} -params {EFFORT_LEVEL:true} -params {REPAIR_MIN_DELAY:true} -params {TDPR:true} -params {IOREG_COMBINING:true}
	run_tool -name {PLACEROUTE}
	run_tool -name {VERIFYTIMING}

	if {"$target" == "AHB"} then {
		export_prog_job \
			-job_file_name {BaseDesign_MPF300SPLASH-AHB-ProgramFile} \
			-export_dir {./FlashPro_Express_Projects} \
			-bitstream_file_type {TRUSTED_FACILITY} \
			-bitstream_file_components {}
		save_project
		
	} else {
		export_prog_job \
			-job_file_name {BaseDesign_MPF300SPLASH-AXI-ProgramFile} \
			-export_dir {./FlashPro_Express_Projects} \
			-bitstream_file_type {TRUSTED_FACILITY} \
			-bitstream_file_components {}
		save_project
	}
		
} else {
    puts "-------------------------------------------------------------------------"
	puts "-------------------------------------------------------------------------"
	puts "-----------------------WRONG ARGUMENT ENTERED!---------------------------"
	puts "-------------------------------------------------------------------------"
	puts "-------------------------------------------------------------------------"
}


puts ""
puts ""
puts ""
puts ""
puts ""
puts "-------------------------------------------------------------------------"
puts "-----------------------------Project Built-------------------------------"
puts "-------------------------------------------------------------------------"
puts "-------------------------------------------------------------------------"
puts "This script can also be executed to progress in the design flow"
puts "In order to do this, open the execute script menu and select the .tcl file"
puts "then in arguments section enter one of the following arguments to progress"
puts "in the design flow:         "                                           
puts ""                                                                   
puts " 1. SYNTHESIZE "
puts " 2. PLACE_AND_ROUTE"
puts " 3. GENERATE_BITSTREAM"
puts " 4. EXPORT_PROGRAMMING_FILE"
puts ""
puts "                  "
puts "These arguments are not case sensitive, but require an underscore between words instead of space"
puts "Sample designs are provided with place and route seeds that will allow user"
puts "to build the design quickly without the need route the design manually"
puts "using the 'PLACE_AND_ROUTE' argument will build the design with the best seed"