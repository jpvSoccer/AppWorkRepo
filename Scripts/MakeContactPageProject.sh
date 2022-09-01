#!/bin/sh
#jvogel
# interactively or batch make a new flutter project using StdIn

cd ../work

# these are defaults
export orgName=net.secondchancelearning
export deviceName=Pixel_5_API_33 
export deviceName=Linux 
if  [ $OSTYPE = "darwin21" ] ; then
export deviceName=macOS 
fi

rm -rf educative_contact_form
echo "Creating basic upcounter sample"
export projectDescription="jvogel educative_contact_form"
export sampleName=material.Scaffold.1
export templateName=app
export dirName=educative_contact_form
export projName=educative_contact_form

echo ""
echo "Creating a new project:"
echo "Project directory:     dirName $dirName"
echo "Project description:   $projectDescription"
echo "Project Name:          projName $projName"
echo "Organization:          orgName  $orgName"
echo "Project type:          templateName $templateName"
echo "Example source:        sampleName $sampleName"
echo "Target device:         deviceName $deviceName"
echo ""

#--verbose \
flutter create ./$dirName \
--overwrite \
--org $orgName \
--project-name $projName \
--description "$projectDescription" \
--device-id $deviceName \
--sample $sampleName \
--template $templateName

cd $dirName
if  [ $dirName = "educative_contact_form" ] ; then
rm -r lib
echo "JPV: Linking in source file lib"
ln -s ~/engineering/AppWorkRepo/SourceSamples/educativeio_flutter_class/lib lib
echo "JPV: Replacing entitlements file to add client internet access"
cp ~/engineering/AppWorkRepo/SourceSamples/educativeio_flutter_class/DebugProfile.entitlements macos/Runner/DebugProfile.entitlements
echo "JPV: adding local assets"
cp -r ~/engineering/AppWorkRepo/SourceSamples/educativeio_flutter_class/assets .
cp ~/engineering/AppWorkRepo/SourceSamples/educativeio_flutter_class/pubspec.yaml .
fi

flutter run -d $deviceName
# creates executable:
#build/linux/x64/debug/bundle/best_practices
cd ..
