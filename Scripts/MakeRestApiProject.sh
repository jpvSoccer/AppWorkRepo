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

echo "Creating educative_io rest api example database"
echo "and then linking in the project-specifc data"
export projectDescription="jvogel educative_rest_api_example"
export sampleName=material.Scaffold.1
export templateName=app
export dirName=educative_rest_api_example
export projName=educative_rest_api_example

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
echo "Removing old project dir: $dirName"
echo ""

echo "Does the configuration look ok?"
echo "enter ok to continue or anything else to quit"
read itsOk
if  [ $itsOk != "ok" ] ; then
echo "bailing out; fix script and try again"
exit
fi

rm -rf $dirName

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
# not applicable for a single project build
#if  [ $dirName = "educative_rest_api_example" ] ; then

rm -r lib
echo "JPV: Linking in source file lib"
ln -s ~/engineering/AppWorkRepo/SourceSamples/educativeio_flutter_class/restApiExample/lib lib
echo "JPV: Replacing entitlements file to add client internet access"
cp ~/engineering/AppWorkRepo/SourceSamples/educativeio_flutter_class/restApiExample/DebugProfile.entitlements macos/Runner/DebugProfile.entitlements
echo "JPV: adding local assets"
###cp -r ~/engineering/AppWorkRepo/SourceSamples/educativeio_flutter_class/restApiExample/assets .
cp ~/engineering/AppWorkRepo/SourceSamples/educativeio_flutter_class/restApiExample/pubspec.yaml .

# not applicable for a single project build
#fi

flutter run -d $deviceName
# creates executable:
#build/linux/x64/debug/bundle/best_practices
cd ..
