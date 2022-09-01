#!/bin/sh
#jvogel
# interactively or batch make a new flutter project using StdIn

cd ../work

echo ""
echo Usage: 
echo MakeFlutterProject.sh -r batch
echo MakeFlutterProject.sh -r interactive
echo MakeFlutterProject.sh -r bestpractice
echo MakeFlutterProject.sh -r basic
echo MakeFlutterProject.sh -r sandbox
echo ""

while getopts r: flag
do
    case "${flag}" in
        r) RunType=${OPTARG};;
    esac
done

# these are defaults
export orgName=net.secondchancelearning
export deviceName=Pixel_5_API_33 
export deviceName=Linux 
if  [ $OSTYPE = "darwin21" ] ; then
export deviceName=macOS 
fi

if  [ $RunType = "batch" ] ; then
  echo "Running in batch"
  # very basic app for demo purposes
  export projectDescription="jvogel basic increment app"
  export sampleName=material.Scaffold.1
  export templateName=app
  export dirName=sample
  export projName=sample
elif [ $RunType = "bestpractice" ]; then
  #Note: skeleton is a template typ, 
  #      so you can't use --sample at the same time
  #      so we skip the flutter run at the bottom
  echo "Creating best practice sample"
  export projectDescription="jvogel best practices app"
  export templateName=skeleton
  export dirName=best_practices
  flutter create \
	  --description "$projectDescription" \
	  -t $templateName \
	  $dirName
  cd $dirName
  flutter run -d $deviceName
  exit
elif [ $RunType = "basic" ]; then
  echo "Creating basic upcounter sample"
  export projectDescription="jvogel basic counter increment app"
  export sampleName=material.Scaffold.1
  export templateName=app
  export dirName=counterSample
  export projName=counter_sample
elif [ $RunType = "sandbox" ]; then
  rm -rf sandbox
  echo "Creating basic upcounter sample"
  export projectDescription="jvogel sandbox"
  export sampleName=material.Scaffold.1
  export templateName=app
  export dirName=sandbox
  export projName=sandbox
elif [ $RunType = "interactive" ]; then
  echo "Running interactive"
  read  -p "Protect folder: " replyVar
  export dirName="$replyVar"
  read  -p "Project name: " replyVar
  export projName="$replyVar"
  read  -p "Project description: " replyVar
  export projectDescription="$replyVar"
  export sampleName=material.Scaffold.1
  export templateName=app
else
  echo ""
  echo "FATAL >> EXITING!!!"
  echo "Run type not recognized: $RunType"
  echo "Looking for either -r batch OR -r interactive"
  echo ""
  exit
fi

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
if  [ $dirName = "sandbox" ] ; then
rm -r lib
echo "JPV: Linking in source file lib"
ln -s ~/engineering/AppWorkRepo/SourceSamples/educativeio_contact_form_lib lib
echo "JPV: Replacing entitlements file to add client interness access"
cp lib/sandbox_macos_Runner_DebugProfile.entitlements macos/Runner/DebugProfile.entitlements
fi

flutter run -d $deviceName
# creates executable:
#build/linux/x64/debug/bundle/best_practices
cd ..
