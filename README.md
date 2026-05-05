# yum-erlang_solutions Cookbook

[![Cookbook Version](https://img.shields.io/cookbook/v/yum-erlang_solutions.svg)](https://supermarket.chef.io/cookbooks/yum-erlang_solutions)
[![CI State](https://github.com/sous-chefs/yum-erlang_solutions/workflows/ci/badge.svg)](https://github.com/sous-chefs/yum-erlang_solutions/actions?query=workflow%3Aci)
[![OpenCollective](https://opencollective.com/sous-chefs/backers/badge.svg)](#backers)
[![OpenCollective](https://opencollective.com/sous-chefs/sponsors/badge.svg)](#sponsors)
[![License](https://img.shields.io/badge/License-Apache%202.0-green.svg)](https://opensource.org/licenses/Apache-2.0)

The yum-erlang_solutions cookbook manages an Erlang Solutions-compatible YUM repository from an explicit user-provided mirror or repository source.

Erlang Solutions discontinued public prebuilt binary package distribution for Erlang/OTP and Elixir on 2025-01-20. This cookbook no longer provides default upstream repository URLs. See [LIMITATIONS.md](LIMITATIONS.md) and [migration.md](migration.md) before upgrading from the legacy recipe and attribute API.

## Maintainers

This cookbook is maintained by the Sous Chefs. The Sous Chefs are a community of Chef cookbook maintainers working together to maintain important cookbooks. If you’d like to know more please visit [sous-chefs.org](https://sous-chefs.org/) or come chat with us on the Chef Community Slack in [#sous-chefs](https://chefcommunity.slack.com/messages/C2V7B88SF).

## Requirements

### Platforms

* AlmaLinux 8+
* Amazon Linux 2023+
* CentOS Stream 9+
* Oracle Linux 8+
* Rocky Linux 8+

### Chef

* Chef 15.3+

### Cookbooks

* none

## Resources

* [yum_erlang_solutions_repo](documentation/yum_erlang_solutions_repo.md)

## Usage

```ruby
yum_erlang_solutions_repo 'erlang_solutions' do
  description 'Internal Erlang Solutions mirror'
  baseurl 'https://repo.example.com/erlang_solutions/rpm/$releasever/$basearch'
  gpgkey 'https://repo.example.com/keys/erlang_solutions.asc'
  action :create
end
```

To disable a repository while keeping the repository file managed:

```ruby
yum_erlang_solutions_repo 'erlang_solutions' do
  baseurl 'https://repo.example.com/erlang_solutions/rpm/$releasever/$basearch'
  gpgkey 'https://repo.example.com/keys/erlang_solutions.asc'
  enabled false
  action :create
end
```

To remove the repository:

```ruby
yum_erlang_solutions_repo 'erlang_solutions' do
  action :remove
end
```

## Contributors

This project exists thanks to all the people who [contribute.](https://opencollective.com/sous-chefs/contributors.svg?width=890&button=false)

### Backers

Thank you to all our backers!

![https://opencollective.com/sous-chefs#backers](https://opencollective.com/sous-chefs/backers.svg?width=600&avatarHeight=40)

### Sponsors

Support this project by becoming a sponsor. Your logo will show up here with a link to your website.

![https://opencollective.com/sous-chefs/sponsor/0/website](https://opencollective.com/sous-chefs/sponsor/0/avatar.svg?avatarHeight=100)
![https://opencollective.com/sous-chefs/sponsor/1/website](https://opencollective.com/sous-chefs/sponsor/1/avatar.svg?avatarHeight=100)
![https://opencollective.com/sous-chefs/sponsor/2/website](https://opencollective.com/sous-chefs/sponsor/2/avatar.svg?avatarHeight=100)
![https://opencollective.com/sous-chefs/sponsor/3/website](https://opencollective.com/sous-chefs/sponsor/3/avatar.svg?avatarHeight=100)
![https://opencollective.com/sous-chefs/sponsor/4/website](https://opencollective.com/sous-chefs/sponsor/4/avatar.svg?avatarHeight=100)
![https://opencollective.com/sous-chefs/sponsor/5/website](https://opencollective.com/sous-chefs/sponsor/5/avatar.svg?avatarHeight=100)
![https://opencollective.com/sous-chefs/sponsor/6/website](https://opencollective.com/sous-chefs/sponsor/6/avatar.svg?avatarHeight=100)
![https://opencollective.com/sous-chefs/sponsor/7/website](https://opencollective.com/sous-chefs/sponsor/7/avatar.svg?avatarHeight=100)
![https://opencollective.com/sous-chefs/sponsor/8/website](https://opencollective.com/sous-chefs/sponsor/8/avatar.svg?avatarHeight=100)
![https://opencollective.com/sous-chefs/sponsor/9/website](https://opencollective.com/sous-chefs/sponsor/9/avatar.svg?avatarHeight=100)
