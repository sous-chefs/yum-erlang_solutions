# yum-erlang_solutions Cookbook CHANGELOG

This file is used to list changes made in each version of the yum-erlang_solutions cookbook.

## Unreleased

## 2.1.9 - *2024-05-03*

## 2.1.8 - *2024-05-03*

## 2.1.7 - *2023-10-03*

- Standardise files with files in sous-chefs/repo-management

## 2.1.6 - *2023-02-14*

- Standardise files with files in sous-chefs/repo-management

## 2.1.5 - *2023-02-14*

- Standardise files with files in sous-chefs/repo-management

## 2.1.4 - *2022-01-27*

- Add Alma Linux and Rocky Linux to testing
- Remove CentOS 8 (prefer Stream)

## 2.1.3 - *2021-11-03*

- Add CentOS Stream 8 to CI pipeline

## 2.1.2 - *2021-08-31*

- Standardise files with files in sous-chefs/repo-management

## 2.1.1 - *2021-06-01*

- Standardise files with files in sous-chefs/repo-management

## 2.1.0 - *2021-02-05*

- Sous Chefs Adoption
- Standardise files with files in sous-chefs/repo-management
- Cookstyle fixes
- Remove EL6 and add Amazon Linux
- Switch to using https endpoints and gpgcheck enabled
- Migrate to InSpec testing

## 2.0.0 (2018-02-16)

- Require Chef 12.14+ and remove `compat_resourc`e dep
- Testing improvements
- Use a SPDX compliant license string

## 1.0.3 (2016-12-22)

- Depend on the latest `compat_resource` cookbook
- Cookstyle fixes

## 1.0.2 (2016-12-05)

- Documentation fixes
- Avoid deprecation warnings

## 1.0.1 (2016-11-14)

- Resolve releasever issues

## 1.0.0 (2016-09-06)

- Testing updates
- Resolve foodcritic warnings
- Add `chef_version` metadata
- Remove support for Chef 11

## v0.3.1 (2015-12-01)

- Removed an attribute case statement that caused the cookbook to fail on RHEL 7.X releases

## v0.3.0 (2015-12-01)

- Added dependency on yum-epel
- Added integration testing in Travis with kitchen-dokken

## v0.2.4 (2015-11-23)

- Fix setting bool false property values

## v0.2.3 (2015-10-28)

- Fixing Chef 13 nil property deprecation warnings

## v0.2.2 (2014-09-22)

- Add `default['yum']['erlang_solutions']['managed']` attribute to control if the repository is managed. Defaults to true.
- Updated Test Kitchen config to 3.X format
- Add `source_url` and `issues_url` metadata
- Add supported platforms to metadata
- Update yum cookbook requirement from ~3.0 to ~3.2
- Update Chefspec format to 4.X
- Add contributing, testing, and maintainers docs
- Update cookbook name references in several places that were from the incorrect cookbook
- Update and add development dependencies in the Gemfile
- Add cookbook version and Travis CI badges to the readme
- Update requirements section in the Readme
- Add additional platforms to the Kitchen CI config
- Add Chef standard .rubocop config
- Add Chef standard chefignore and gitgnore files

## v0.2.0 (2014-02-14)

- Updated test harness

## v0.1.4

- Added CHANGELOG

## v0.1.0

- Initial release
