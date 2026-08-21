#!/bin/bash
mkdir -p rpmbuild/src

 CI_PROJECT_DIR=`pwd`
 TOP_DIR=$CI_PROJECT_DIR/rpmbuild
 BUILD_ROOT=$TOP_DIR/build
 TARGET=./target
 PROJECT_NAME=bashtester
 NOCLEAN=false
 RPM_VERSION=$(<./version)
 RPM_RELEASE=`date +%Y%m%d%H%M`
SOURCE_DIR=$TOP_DIR/src/$PROJECT_NAME-$RPM_VERSION-$RPM_RELEASE/SRC

mkdir -p $SOURCE_DIR
cp ./bashtester $SOURCE_DIR/

rpmbuild --buildroot $BUILD_ROOT --define="_topdir $TOP_DIR" --define="_sourcedir $SOURCE_DIR" --define="_rpmdir $TARGET" --define="version $RPM_VERSION" --define="release $RPM_RELEASE" --noclean -bb ./bashtester.spec 
