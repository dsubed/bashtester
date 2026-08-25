#!/bin/bash
PROJECT_NAME=bashtester

# Fetch version from version file
RPM_VERSION=$(<./version)

#setting up the build environment
TOP_DIR=`pwd`/rpmbuild
BUILD_ROOT=$TOP_DIR/BUILD
SOURCE_DIR=$TOP_DIR/SOURCES/
TARGET=$TOP_DIR/RPMS

mkdir -p $TOP_DIR
mkdir -p $BUILD_ROOT
mkdir -p $TARGET
mkdir -p $SOURCE_DIR
mkdir -p output

#copy the source files to the SOURCES directory
cp -r ./src $SOURCE_DIR/

rpmbuild --define="_topdir $TOP_DIR" --buildroot $BUILD_ROOT --define="_sourcedir $SOURCE_DIR" --define="_rpmdir $TARGET" --define="version $RPM_VERSION" -bb ./$PROJECT_NAME.spec
# move the generated rpm files to the output directory
find $TARGET -name "*.rpm" -exec mv {} output/ \;
