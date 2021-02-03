setws ./

if {[file isdirectory zynqmp_fsbl] == 1} {
	app remove zynqmp_fsbl
	sysproj remove zynqmp_fsbl_system
}

if {[file isdirectory generic_mpsoc] == 1} {
	file delete -force generic_mpsoc
}

file delete IDE.log
