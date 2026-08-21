rpmbuild --buildroot $BUILD_ROOT --define="_topdir $TOP_DIR" --define="_rpmdir $TARGET" --define="version $RPM_VERSION" --define="release $RPM_RELEASE" --noclean -bb ./bashtester.spec 
