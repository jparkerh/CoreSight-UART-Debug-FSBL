XSA ?= my_xsa.xsa

generic_mpsoc/export/generic_mpsoc/generic_mpsoc.xpfm: $(XSA)
	echo $(XSA)
	xsct ./generate_platform.tcl $(XSA)

zynqmp_fsbl/src/xfsbl_config.h: generic_mpsoc/export/generic_mpsoc/generic_mpsoc.xpfm
	xsct ./generate_application.tcl

zynqmp_fsbl/Debug/zynqmp_fsbl.elf: zynqmp_fsbl/src/xfsbl_config.h
	xsct ./build_application.tcl

run_app: zynqmp_fsbl/Debug/zynqmp_fsbl.elf
	xsct ./run_application_with_terminal.tcl

all: run_app

clean:
	xsct ./clean.tcl

.PHONY: run_app
