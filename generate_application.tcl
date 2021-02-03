setws ./
repo -add-platforms ./generic_mpsoc/export/generic_mpsoc
repo -apps
platform active generic_mpsoc

if {[file isdirectory zynqmp_fsbl] == 1} {
	app remove zynqmp_fsbl
	sysproj remove zynqmp_fsbl_system
}
app create -name zynqmp_fsbl -platform generic_mpsoc -domain standalone_psu_cortexa53_0 -template "Zynq MP FSBL"
file copy -force ./xfsbl_config.h ./zynqmp_fsbl/src
