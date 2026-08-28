Name:       bashtester
Version:    %{version}
Release:    %(echo `date +%Y%m%d%H%M`)
Summary:    RPM package for %{name}
License:    mit
Requires:   bash
BuildRoot: %{_tmppath}/%{name}-%{version}-%{release}-buildroot

%description
A minimal test framework for bash scripts

%install
rm -rf %{buildroot}
cp -r %{_sourcedir}/* %{buildroot}

%files
/usr/local/bin/bashtester

%changelog
* Wed Aug 19 2026 Linus Larsson linus.larsson@smhi.se
- First package
