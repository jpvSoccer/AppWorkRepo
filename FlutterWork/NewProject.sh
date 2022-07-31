#!/bin/sh

# Android SDK /home/jvogel/Android/Sdk
# use AS device manager to create PIXEL emulator

#flutter devices > Devices.dat
#flutter emulators > Emulators.dat
#flutter create -h > CreateProject.dat

# start up emulator
#flutter emulators --launch Pixel_5_API_33

# create a list of sample flutter projects to select from
#flutter create --list-samples TemplateSamples.json
#grep \"id\" TemplateSamples.json > ProjectSamples.dat

#create a new project from a template
flutter create ./singleChildScrollView \
--sample cupertino.SingleChildScrollView.2 \
--device-id Pixel_5_API_33 \
--description "jvogel first flutter app" \
--org net.secondchancelearning \
--project-name single_child_scroll_view \
--template=app
#  $ cd singleChildScrollView
#  $ flutter run
#Your sample application code is in singleChildScrollView/lib/main.dart.


