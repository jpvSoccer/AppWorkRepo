#!/bin/sh

# jvogel
# script to run linter on DART source
# var dirName should be the path to the project run directory

# uses the project analysis_options.yaml for rules

export dirName=educativeIoFlutterClass

echo "Directory Name:        $dirName"
#exit

cd $dirName
dart analyze > $dirName.lint
cat $dirName.lint

#dart analyze
#dart analyze --fatal-infos
#dart analyze [<DIRECTORY> | <DART_FILE>]
#
