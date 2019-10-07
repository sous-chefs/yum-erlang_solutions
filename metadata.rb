name 'yum-erlang_solutions'
maintainer 'Chef Software, Inc.'
maintainer_email 'cookbooks@chef.io'
license 'Apache-2.0'
description 'Installs/Configures yum-erlang_solutions'
version '2.0.0'

depends 'yum-epel'

%w(amazon centos fedora oracle redhat scientific).each do |os|
  supports os
end

source_url 'https://github.com/chef-cookbooks/yum-erlang_solutions'
issues_url 'https://github.com/chef-cookbooks/yum-erlang_solutions/issues'
chef_version '>= 12.14'
