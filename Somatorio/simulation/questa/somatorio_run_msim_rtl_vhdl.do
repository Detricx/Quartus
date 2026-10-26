transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/project/ISEL/LSD/quartus/Somatorio/FullAdder.vhd}
vcom -93 -work work {C:/project/ISEL/LSD/quartus/Somatorio/ArchAdder.vhd}
vcom -93 -work work {C:/project/ISEL/LSD/quartus/Somatorio/AddSub.vhd}
vcom -93 -work work {C:/project/ISEL/LSD/quartus/Somatorio/Adder.vhd}

