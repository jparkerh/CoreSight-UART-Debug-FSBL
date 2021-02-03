# CoreSight-UART-Debug-FSBL
Quick setup to build and debug FSBL with coresight UART over JTAG


Use this Makefile and XSCT scripted flow to build FSBL, configure the application for debugging, and then launch the JTAG terminal to view any feedback from the controller.
Since the FSBL uses the input from the boot mode pins at runtime, this FSBL can be launched over JTAG and used to debug a QSPI boot process (provided the debugger can catch the running application after a system reset).
Use the "XSA" environment variable to point to your XSA file.
Run the application with "make XSA=~your XSA filename~"
Hit control-C in the terminal window after you're done inspecting the results of the JTAG terminal.

Happy Debug!
