# Limitations

## Package Availability

Erlang Solutions discontinued prebuilt binary package distribution for Erlang/OTP and Elixir on 2025-01-20. The public Erlang Solutions package service now directs users to distro package managers, Docker images, Hex, Erlang/OTP source code, custom build services, or paid support.

This cookbook does not configure a default upstream Erlang Solutions YUM repository. Use `yum_erlang_solutions_repo` only with an explicit internal mirror, artifact repository, or other user-managed repository source.

### DNF/YUM (RHEL Family)

* Erlang Solutions vendor YUM/RPM repository: retired for newly supported package distribution.
* Internal mirrors: supported only when the caller provides `baseurl` or `mirrorlist` and a matching `gpgkey` when GPG checking is enabled.
* Native package manager fallback: install Erlang with the platform package manager, for example `yum install erlang`, outside this repository-wrapper cookbook.

### APT (Debian/Ubuntu)

Not supported by this cookbook. Erlang Solutions also retired prebuilt APT package distribution.

### Zypper (SUSE)

Not supported by this cookbook.

## Architecture Limitations

No current Erlang Solutions package architecture matrix remains for this cookbook to model. Architecture support depends entirely on the user-provided mirror or repository.

## Source/Compiled Installation

This cookbook does not build Erlang/OTP from source. Erlang Solutions identifies Erlang/OTP source builds and custom build services as alternatives after retiring public binary package distribution.

## Known Issues

* The legacy `yum-erlang_solutions::default` recipe and `node['yum']['erlang_solutions']` attributes were removed during the full custom resource migration.
* Existing wrappers must migrate to `yum_erlang_solutions_repo` and provide an explicit repository source.
* Legacy default URLs under `https://packages.erlang-solutions.com/` are not treated as supported defaults.

## Sources

* [Erlang Solutions package retirement announcement](https://binaries2.erlang-solutions.com/packages.html)
* [Chef platform lifecycle reference](https://docs.chef.io/platforms/)
