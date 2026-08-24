#!/bin/bash
mkdir -p rpmbuild/src

#  CI_PROJECT_DIR=`pwd`
#  TOP_DIR=$CI_PROJECT_DIR/rpmbuild
TOP_DIR=`pwd`/rpmbuild
BUILD_ROOT=$TOP_DIR/build
 TARGET=./target
 PROJECT_NAME=bashtester
 NOCLEAN=false
 RPM_VERSION=$(<./version)
SOURCE_DIR=$TOP_DIR/src/$PROJECT_NAME-$RPM_VERSION-$RPM_RELEASE/SRC

mkdir -p $SOURCE_DIR
cp ./bashtester $SOURCE_DIR/

rpmbuild --buildroot $BUILD_ROOT --define="_topdir $TOP_DIR" --define="_sourcedir $SOURCE_DIR" --define="_rpmdir $TARGET" --define="version $RPM_VERSION" --noclean -bb ./bashtester.spec
