#! /bin/bash

function catnewline {
	for filename in $@
	do
		cat $filename
		echo ""
	done

}

catnewline boilertop.cfg > printer.cfg
catnewline printersettings.cfg steppers.cfg extruder.cfg bed.cfg probe.cfg fans.cfg lights.cfg >> printer.cfg
echo "#####################################################################" >> printer.cfg
echo "# 	Macros"  >> printer.cfg
echo "#####################################################################" >> printer.cfg
catnewline homing.cfg nozzlewipe.cfg printmacros.cfg >> printer.cfg

