setws ./
set xsa_name [lindex $argv 0]
platform create -name {generic_mpsoc} -hw $xsa_name -arch {64-bit} -no-boot-bsp -fsbl-target {psu_cortexa53_0} -out ./
platform write
domain create -name {standalone_psu_cortexa53_0} -display-name {standalone_psu_cortexa53_0} -os {standalone} -proc {psu_cortexa53_0} -runtime {cpp} -arch {64-bit}
platform write
platform active {generic_mpsoc}
platform generate -quick
bsp config stdin "psu_coresight_0"
bsp config stdout "psu_coresight_0"
bsp setlib -name xilffs
bsp setlib -name xilpm
bsp setlib -name xilsecure
bsp write
bsp reload
bsp regenerate
platform generate
