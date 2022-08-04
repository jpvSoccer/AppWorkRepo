#!/bin/sh

# Android SDK /home/jvogel/Android/Sdk
# Android cmd tools
#/home/jvogel/Android/Sdk/cmdline-tools/latest/bin

#screenshot2 screenshot.png
# use AndroidStudio device manager to create PIXEL emulator
#WARNING the command below does not make a device with enough memory
#avdmanager delete avd -n jpv3
#avdmanager create avd -n jpv3 -c 5G -k "system-images;android-33;google_apis;x86_64"
#avdmanager list avd
#avdmanager move avd -r myjpv
#flutter emulators --launch jpv2
#flutter devices
#flutter run -d sdk
#avdmanager list > devices.txt
#avdmanager list target
#avdmanager list device
#avdmanager delete avd -n JPV1

#flutter devices > Devices.dat
#flutter emulators > Emulators.dat
#flutter create -h > CreateProject.dat

# start up emulator
#flutter emulators --launch Pixel_5_API_33
# kill emulator by clicking on window x

# create a list of sample flutter projects to select from
#flutter create --list-samples TemplateSamples.json
#grep \"id\" TemplateSamples.json > ProjectSamples.dat

export sampleName=singleChildScrollView
export dirName=singleChildScrollView
export projName=single_child_scroll_view
export templateName=app

export sampleName=cupertino.ListView.7
export dirName=cupertinoListView
export projName=cupertino_list_view

# shows best practices for a real app
export sampleName=none
export templateName=skeleton
export dirName=skeleton
export projName=skeleton

# very basic app for demo purposes
export projectDescription="jvogel flutter app"
export sampleName=material.Scaffold.1
export templateName=app
export dirName=sample
export projName=sample
export orgName=net.secondchancelearning

# create  project to work with class programs
# working script is copied from SourceSamples
export dirName=educativeIoFlutterClass
export projName=educative_io_flutter_class

export deviceName=Pixel_5_API_33 
export deviceName=Linux 

echo "New project directory: $dirName"
echo "Project description:   $projectDescription"
echo "Project Name:          $projName"
echo "Organization:          $orgName"
echo "Project type:          $templateName"
echo "Example source:        $sampleName"
echo "Target device:         $deviceName"
#exit

#create a new project from a sample
#--verbose \
#FAILS --description $projectDescription \
#PASS  --description "$projectDescription" \
flutter create ./$dirName \
--overwrite \
--org $orgName \
--project-name $projName \
--description "$projectDescription" \
--device-id $deviceName \
--sample $sampleName \
--template $templateName
#exit

# now run the new project
cd $dirName
flutter run -d $deviceName
#flutter run
#flutter run -d Crome

