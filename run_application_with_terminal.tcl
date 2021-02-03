connect

target -set -filter {name =~ "PSU"}
rst

# Run FSBL
target -set -filter {name =~ "Cortex-A53 #0"}
rst -processor
dow ./zynqmp_fsbl/Debug/zynqmp_fsbl.elf

jtagterminal
after 500
con
while {"1"=="1"} {after 100}
