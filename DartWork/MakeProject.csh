#!/bin/csh -f

if ($#argv == 0) then
echo "Missing project name for creation"
echo "EXITING!"
exit
endif

setenv projectName $1

echo "Making a new dart project: $projectName"

dart create --template console $projectName > $projectName"_build.log"

