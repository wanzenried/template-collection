# -----------------------------------------------------------------------------
# Vivado Tcl script to recreate project
# -----------------------------------------------------------------------------

# Project settings
set project_name example_project
set project_dir [file normalize ./vivado]

# Create a clean project directory
file delete -force $project_dir
# Uncomment for Nexys Video:
create_project $project_name $project_dir -part xc7a200tsbg484-1
# Uncomment for Cmod A7
#create_project $project_name $project_dir -part xc7a35tcpg236-1

# Set the project target language to VHDL
set_property target_language VHDL [current_project]

# Add VHDL sources
add_files -fileset sources_1 [glob ./src/*.vhd]

# Add constraints
add_files -fileset constrs_1 [glob ./constraints/*.xdc]

# Set the top-level entity
set_property top example [current_fileset]

# Update compilation order
update_compile_order -fileset sources_1

# -----------------------------------------------------------------------------
# Optional: build flow
# Uncomment if you want to auto-run synthesis & implementation:
# launch_runs synth_1
# wait_on_run synth_1
# launch_runs impl_1 -to_step write_bitstream
# wait_on_run impl_1
# -----------------------------------------------------------------------------