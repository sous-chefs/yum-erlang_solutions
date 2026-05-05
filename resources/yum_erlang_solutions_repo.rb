# frozen_string_literal: true

provides :yum_erlang_solutions_repo
unified_mode true

property :repo_name, String, name_property: true
property :description, String, default: 'Erlang Solutions repository'
property :baseurl, [String, nil]
property :mirrorlist, [String, nil]
property :gpgkey, [String, Array, nil], default: nil
property :enabled, [true, false], default: true
property :gpgcheck, [true, false], default: true
property :repo_gpgcheck, [true, false], default: false
property :sslverify, [true, false], default: true
property :make_cache, [true, false], default: true

default_action :create

action :create do
  validate_repository_source!
  validate_gpgkey!

  yum_repository new_resource.repo_name do
    description new_resource.description
    baseurl new_resource.baseurl if new_resource.baseurl
    mirrorlist new_resource.mirrorlist if new_resource.mirrorlist
    gpgkey new_resource.gpgkey if new_resource.gpgkey
    enabled new_resource.enabled
    gpgcheck new_resource.gpgcheck
    repo_gpgcheck new_resource.repo_gpgcheck
    sslverify new_resource.sslverify
    make_cache new_resource.make_cache
    action :create
  end
end

action :remove do
  yum_repository new_resource.repo_name do
    action :remove
  end
end

action_class do
  def validate_repository_source!
    return if new_resource.baseurl || new_resource.mirrorlist

    raise Chef::Exceptions::ValidationFailed,
          "#{new_resource} requires either baseurl or mirrorlist. Erlang Solutions discontinued " \
          'prebuilt binary package distribution on 2025-01-20, so this cookbook no longer ' \
          'provides a default vendor repository URL.'
  end

  def validate_gpgkey!
    return unless new_resource.gpgcheck
    return if new_resource.gpgkey

    raise Chef::Exceptions::ValidationFailed,
          "#{new_resource} requires gpgkey when gpgcheck is true."
  end
end
