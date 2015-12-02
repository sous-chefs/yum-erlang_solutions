name 'yum-erlang_solutions'
maintainer 'Chef Software, Inc.'
maintainer_email 'cookbooks@chef.io'
license 'Apache 2.0'
description 'Installs/Configures yum-erlang_solutions'
version '0.2.4'

depends 'yum', '~> 3.2'
depends 'yum-epel'

%w(amazon centos fedora oracle redhat scientific).each do |os|
  supports os
end

source_url 'https://github.com/chef-cookbooks/yum-erlang_solutions' if respond_to?(:source_url)
issues_url 'https://github.com/chef-cookbooks/yum-erlang_solutions/issues' if respond_to?(:issues_url)
