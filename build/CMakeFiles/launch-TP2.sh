#!/bin/sh
bindir=$(pwd)
cd /home/lea/M1-IMAGINE/S2/MoteurJeux/M1-IMAGINE-MoteurDeJeux-TP2/TP2/
export 

if test "x$1" = "x--debugger"; then
	shift
	if test "xYES" = "xYES"; then
		echo "r  " > $bindir/gdbscript
		echo "bt" >> $bindir/gdbscript
		/usr/bin/gdb -batch -command=$bindir/gdbscript --return-child-result /home/lea/M1-IMAGINE/S2/MoteurJeux/M1-IMAGINE-MoteurDeJeux-TP2/build/TP2 
	else
		"/home/lea/M1-IMAGINE/S2/MoteurJeux/M1-IMAGINE-MoteurDeJeux-TP2/build/TP2"  
	fi
else
	"/home/lea/M1-IMAGINE/S2/MoteurJeux/M1-IMAGINE-MoteurDeJeux-TP2/build/TP2"  
fi
