# frozen_string_literal: true

name              'yum-erlang_solutions'
maintainer        'Sous Chefs'
maintainer_email  'help@sous-chefs.org'
license           'Apache-2.0'
description       'Provides a yum_erlang_solutions_repo resource for explicit Erlang Solutions mirrors'
version           '3.0.0'
source_url        'https://github.com/sous-chefs/yum-erlang_solutions'
issues_url        'https://github.com/sous-chefs/yum-erlang_solutions/issues'
chef_version      '>= 15.3'

supports 'almalinux', '>= 8.0'
supports 'amazon', '>= 2023.0'
supports 'centos_stream', '>= 9.0'
supports 'oracle', '>= 8.0'
supports 'rocky', '>= 8.0'
