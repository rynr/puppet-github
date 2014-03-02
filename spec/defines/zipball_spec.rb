require 'spec_helper'

describe 'github::zipball' do

  it { contain_package('github') }

  context 'for master github project' do
    let(:title) { '/tmp/puppet-github-master.zip' }
    let(:params) { { :user => 'rynr', :project => 'puppet-github' } }

    # Why is this test doing nothing?
    # I can change the title or the command, the test still passes. Why?
    it do
      should contain_exec('curl-github-zip-/tmp/puppet-github-master.zip').
        with_command('curl -L -o \'/tmp/puppet-github-master.zip\' \'http://github.com/rynr/puppet-github/zipball/master\'')
    end
  end

  context 'for github project branch' do
    let(:title) { '/tmp/puppet-github-branch.zip' }
    let(:params) { { :user => 'rynr', :project => 'puppet-github', :branch => 'branch' } }

    # Why is this test doing nothing?
    # I can change the title or the command, the test still passes. Why?
    it do
      should contain_exec('curl-github-zip-/tmp/puppet-github-branch.zip').
        with_command('curl -L -o \'/tmp/puppet-github-branch.zip\' \'http://github.com/rynr/puppet-github/zipball/branch\'')
    end
  end

end
