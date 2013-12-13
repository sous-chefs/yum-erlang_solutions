require 'spec_helper'

describe 'yum-erlang_solutions::default' do
  context 'yum-erlang_solutions::default uses default attributes' do
    let(:chef_run) { ChefSpec::Runner.new(:step_into => ['yum_repository']).converge(described_recipe) }

    it 'creates yum_repository[erlang_solutions]' do
      expect(chef_run).to create_yum_repository('erlang_solutions')
    end

    it 'steps into yum_repository and creates template[/etc/yum.repos.d/erlang_solutions.repo]' do
      expect(chef_run).to render_file('/etc/yum.repos.d/erlang_solutions.repo')
    end

  end
end
