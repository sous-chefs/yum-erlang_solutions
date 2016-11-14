require 'spec_helper'

describe 'yum-erlang_solutions::default' do
  context 'yum-erlang_solutions::default uses default attributes' do
    let(:chef_run) { ChefSpec::ServerRunner.new.converge(described_recipe) }

    it 'creates yum_repository[erlang_solutions]' do
      expect(chef_run).to create_yum_repository('erlang_solutions')
    end
  end

  context 'centos-7.0' do
    let(:chef_run) do
      ChefSpec::ServerRunner.new(
        platform: 'centos',
        version: '7.0'
      ).converge(described_recipe)
    end

    it 'renders the yum repository with defaults' do
      expect(chef_run).to create_yum_repository('erlang_solutions').with(
        repositoryid: 'erlang_solutions',
        baseurl: 'http://packages.erlang-solutions.com/rpm/centos/7/$basearch'
      )
    end
  end
end
