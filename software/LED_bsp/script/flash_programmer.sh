#!/bin/sh
#
# This file was automatically generated.
#
# It can be overwritten by nios2-flash-programmer-generate or nios2-flash-programmer-gui.
#

#
# Converting SOF File: E:\DE1-SoC\FPGA_Qsys\Qsys_LED\output_files\Qsys_LED.sof to: "..\flash/Qsys_LED_epcs_flash.flash"
#
sof2flash --input="E:/DE1-SoC/FPGA_Qsys/Qsys_LED/output_files/Qsys_LED.sof" --output="../flash/Qsys_LED_epcs_flash.flash" --epcs --verbose 

#
# Programming File: "..\flash/Qsys_LED_epcs_flash.flash" To Device: epcs_flash
#
nios2-flash-programmer "../flash/Qsys_LED_epcs_flash.flash" --base=0x11000 --epcs --sidp=0x12040 --id=0x0 --device=2 --instance=0 '--cable=DE-SoC on localhost [USB-1]' --program --verbose 

#
# Converting ELF File: E:\DE1-SoC\FPGA_Qsys\Qsys_LED\software\LED\LED.elf to: "..\flash/LED_epcs_flash.flash"
#
elf2flash --input="E:/DE1-SoC/FPGA_Qsys/Qsys_LED/software/LED/LED.elf" --output="../flash/LED_epcs_flash.flash" --epcs --after="../flash/Qsys_LED_epcs_flash.flash" --verbose 

#
# Programming File: "..\flash/LED_epcs_flash.flash" To Device: epcs_flash
#
nios2-flash-programmer "../flash/LED_epcs_flash.flash" --base=0x11000 --epcs --sidp=0x12040 --id=0x0 --device=2 --instance=0 '--cable=DE-SoC on localhost [USB-1]' --program --verbose 

