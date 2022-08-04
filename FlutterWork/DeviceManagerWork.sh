#!/bin/sh

# Android SDK /home/jvogel/Android/Sdk
#export SDK_TOOLS=/home/jvogel/Android/Sdk/emulator
#export CMDTOOLS_HOME="/home/jvogel/Android/Sdk/cmdline-tools/latest/bin"
#export PATH="$PATH:$CMDTOOLS_HOME:$SDK_TOOLS"

# use AndroidStudio device manager to create emulator
#avdmanager create avd -n Pixel_jpv1 -d pixel -k "system-images;android-33;google_apis;x86_64"
#JPV to fix out of memory issue
#vi /home/jvogel/.android/avd/jpv3.avd/config.ini   hw.ramSize=1500
#avdmanager delete avd -n jpv3
#avdmanager list avd
#avdmanager move avd -r myjpv
#avdmanager list 
#avdmanager list target
#avdmanager list device
#avdmanager delete avd -n JPV1

# start up emulator
#emulator -list-avds
#emulator -avd Ram4meg
#emulator -avd jpv3

#screenshot2 screenshot.png

#flutter emulators --launch Pixel_5_API_33
# kill emulator by clicking on window x
#flutter devices
#flutter run -d sdk


