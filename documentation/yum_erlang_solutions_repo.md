# yum_erlang_solutions_repo

Manages an Erlang Solutions-compatible YUM repository from an explicit user-provided source.

## Actions

| Action    | Description                                      |
|-----------|--------------------------------------------------|
| `:create` | Creates the repository file. Default action.     |
| `:remove` | Removes the repository file created by `:create` |

## Properties

| Property        | Type                 | Default                         | Description                                      |
|-----------------|----------------------|---------------------------------|--------------------------------------------------|
| `repo_name`     | String               | name property                   | Repository id and generated repository filename. |
| `description`   | String               | `'Erlang Solutions repository'` | Repository description.                          |
| `baseurl`       | String, nil          | `nil`                           | Explicit repository base URL.                    |
| `mirrorlist`    | String, nil          | `nil`                           | Explicit repository mirrorlist URL.              |
| `gpgkey`        | String, Array, nil   | `nil`                           | GPG key URL or URLs for the repository.          |
| `enabled`       | true, false          | `true`                          | Enables the repository.                          |
| `gpgcheck`      | true, false          | `true`                          | Enables package GPG checking.                    |
| `repo_gpgcheck` | true, false          | `false`                         | Enables repository metadata GPG checking.        |
| `sslverify`     | true, false          | `true`                          | Verifies TLS certificates for HTTPS sources.     |
| `make_cache`    | true, false          | `true`                          | Builds package manager cache after changes.      |

Either `baseurl` or `mirrorlist` must be provided. When `gpgcheck` is true, `gpgkey` must also be provided.

## Examples

### Internal mirror

```ruby
yum_erlang_solutions_repo 'erlang_solutions' do
  description 'Internal Erlang Solutions mirror'
  baseurl 'https://repo.example.com/erlang_solutions/rpm/$releasever/$basearch'
  gpgkey 'https://repo.example.com/keys/erlang_solutions.asc'
  action :create
end
```

### Disable a managed repository

```ruby
yum_erlang_solutions_repo 'erlang_solutions' do
  baseurl 'https://repo.example.com/erlang_solutions/rpm/$releasever/$basearch'
  gpgkey 'https://repo.example.com/keys/erlang_solutions.asc'
  enabled false
  action :create
end
```

### Remove a repository

```ruby
yum_erlang_solutions_repo 'erlang_solutions' do
  action :remove
end
```
