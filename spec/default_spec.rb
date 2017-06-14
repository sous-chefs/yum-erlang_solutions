require 'spec_helper'

describe 'yum-erlang_solutions::default' do
  context 'centos-7' do
    let(:chef_run) do
      ChefSpec::SoloRunner.new(
        platform: 'centos',
        version: '7.3.1611'
      ).converge(described_recipe)
    end

    it 'renders the yum repository with defaults' do
      expect(chef_run).to create_yum_repository('erlang_solutions').with(
        repositoryid: 'erlang_solutions',
        baseurl: 'http://packages.erlang-solutions.com/rpm/centos/7/$basearch'
      )
    end
  end

  context 'centos-6' do
    let(:chef_run) do
      ChefSpec::SoloRunner.new(
        platform: 'centos',
        version: '6.8'
      ).converge(described_recipe)
    end

    it 'renders the yum repository with defaults' do
      expect(chef_run).to create_yum_repository('erlang_solutions').with(
        repositoryid: 'erlang_solutions',
        baseurl: 'http://packages.erlang-solutions.com/rpm/centos/6/$basearch'
      )
    end
  end
end
