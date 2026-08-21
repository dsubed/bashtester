Name:       bashtester
Version:    %{version}
Release:    %{release}
Summary:    RPM package for %{name}
License:    mit
Requires:   bash
BuildRoot: %{_tmppath}/%{name}-%{version}-%{release}-buildroot

%description
A minimal test framework for bash scripts

%install
rm -rf %{buildroot}
mkdir -p  %{buildroot}/usr/local/bin
cp %{_sourcedir}/bashtester %{buildroot}/usr/local/bin

%clean
rm -rf %{buildroot}

%files
/usr/local/bin/bashtester

%changelog
* Wed Aug 19 2026 Linus Larsson linus.larsson@smhi.se
- First package
