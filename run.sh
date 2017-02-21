#!/bin/csh -f
# @(#) dindex

#-----------------------------------------------------------------
# Set path
#-----------------------------------------------------------------
set Input_Dir   = "/n/home01/leizhu6/scripts/RegridPixels/input/"
set Output_Dir  = "/n/home01/leizhu6/scripts/RegridPixels/output/"

#-----------------------------------------------------------------
# Output resolution you want
#-----------------------------------------------------------------
set Res = 0.1

#-----------------------------------------------------------------
# Set file names
#-----------------------------------------------------------------
set Input_Filename  = "merge_Smedt_OMI_HCHO_2013_Aug_Sep"
set Output_Filename = "regrid_Smedt_OMI_HCHO_2013_Aug_Sep_"$Res

#-----------------------------------------------------------------
# Call RegridPixel.x, and pass user inputs
#-----------------------------------------------------------------
./RegridPixels.x<<EOF
$Input_Dir
$Output_Dir 
$Input_Filename
$Output_Filename
$Res
EOF

quit:

exit
