# frozen_string_literal: true

require 'spec_helper'

describe 'yum_erlang_solutions_repo' do
  step_into :yum_erlang_solutions_repo
  platform 'almalinux', '9'

  context 'with an explicit baseurl' do
    recipe do
      yum_erlang_solutions_repo 'erlang_solutions' do
        description 'Internal Erlang Solutions mirror'
        baseurl 'https://repo.example.com/erlang_solutions/rpm/$releasever/$basearch'
        gpgkey 'https://repo.example.com/keys/erlang_solutions.asc'
      end
    end

    it do
      is_expected.to create_yum_repository('erlang_solutions').with(
        description: 'Internal Erlang Solutions mirror',
        baseurl: 'https://repo.example.com/erlang_solutions/rpm/$releasever/$basearch',
        gpgkey: 'https://repo.example.com/keys/erlang_solutions.asc',
        enabled: true,
        gpgcheck: true,
        repo_gpgcheck: false,
        sslverify: true,
        make_cache: true
      )
    end
  end

  context 'with a mirrorlist' do
    recipe do
      yum_erlang_solutions_repo 'erlang_solutions' do
        mirrorlist 'https://repo.example.com/erlang_solutions/mirrorlist'
        gpgkey 'https://repo.example.com/keys/erlang_solutions.asc'
        enabled false
      end
    end

    it do
      is_expected.to create_yum_repository('erlang_solutions').with(
        mirrorlist: 'https://repo.example.com/erlang_solutions/mirrorlist',
        enabled: false
      )
    end
  end

  context 'with action remove' do
    recipe do
      yum_erlang_solutions_repo 'erlang_solutions' do
        action :remove
      end
    end

    it { is_expected.to remove_yum_repository('erlang_solutions') }
  end

  context 'without a repository source' do
    recipe do
      yum_erlang_solutions_repo 'erlang_solutions' do
        gpgkey 'https://repo.example.com/keys/erlang_solutions.asc'
      end
    end

    it 'requires either baseurl or mirrorlist' do
      expect { subject }.to raise_error(Chef::Exceptions::ValidationFailed, /requires either baseurl or mirrorlist/)
    end
  end

  context 'without a gpgkey' do
    recipe do
      yum_erlang_solutions_repo 'erlang_solutions' do
        baseurl 'https://repo.example.com/erlang_solutions/rpm/$releasever/$basearch'
      end
    end

    it 'requires a gpgkey when gpgcheck is true' do
      expect { subject }.to raise_error(Chef::Exceptions::ValidationFailed, /requires gpgkey/)
    end
  end
end
