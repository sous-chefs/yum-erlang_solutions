# Migration

This release is a full custom resource migration. It removes the legacy recipe and node attribute API because Erlang Solutions discontinued public prebuilt binary package distribution on 2025-01-20.

## Breaking Changes

* `yum-erlang_solutions::default` was removed.
* `node['yum']['erlang_solutions']` attributes were removed.
* The cookbook no longer provides default Erlang Solutions repository URLs.
* Consumers must call `yum_erlang_solutions_repo` directly and provide `baseurl` or `mirrorlist`.

## Before

```ruby
node.default['yum']['erlang_solutions']['enabled'] = true
node.default['yum']['erlang_solutions']['baseurl'] = 'https://internal.example.com/erlang_solutions'
node.default['yum']['erlang_solutions']['sslverify'] = false

include_recipe 'yum-erlang_solutions'
```

## After

```ruby
yum_erlang_solutions_repo 'erlang_solutions' do
  description 'Internal Erlang Solutions mirror'
  baseurl 'https://internal.example.com/erlang_solutions'
  gpgkey 'https://internal.example.com/keys/erlang_solutions.asc'
  sslverify false
  action :create
end
```

For new Erlang installations, prefer the platform package manager, Erlang Docker images, Erlang/OTP source builds, or a supported internal artifact repository.
