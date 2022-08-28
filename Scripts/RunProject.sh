#!/bin/sh

# jvogel
# script to run an existing flutter project
# var dirName should be the path to the project run directory

export dirName=educativeIoFlutterClass
export deviceName=Pixel_5_API_33 
export deviceName=Linux 

echo "Directory Name:        $dirName"
echo "Target device:         $deviceName"
#exit

cd $dirName
flutter run -d $deviceName
#flutter run

