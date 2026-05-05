# frozen_string_literal: true

title 'Default Tests'

control 'yum-erlang-solutions-repo-01' do
  impact 1.0
  title 'Repository is configured from the explicit mirror'

  describe file('/etc/yum.repos.d/erlang_solutions.repo') do
    it { should exist }
    its('content') { should match(/^\[erlang_solutions\]$/) }
    its('content') { should match(%r{^baseurl=https://repo.example.com/erlang_solutions/rpm/\$releasever/\$basearch$}) }
    its('content') { should match(/^enabled=1$/) }
    its('content') { should match(/^gpgcheck=1$/) }
    its('content') { should match(%r{^gpgkey=https://repo.example.com/keys/erlang_solutions.asc$}) }
  end
end
