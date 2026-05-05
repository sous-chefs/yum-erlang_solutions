# frozen_string_literal: true

yum_erlang_solutions_repo 'erlang_solutions' do
  description 'Internal Erlang Solutions mirror'
  baseurl 'https://repo.example.com/erlang_solutions/rpm/$releasever/$basearch'
  gpgkey 'https://repo.example.com/keys/erlang_solutions.asc'
  make_cache false
  action :create
end
