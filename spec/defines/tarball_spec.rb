require 'spec_helper'

describe 'github::tarball' do

  it { contain_package('github') }

  context 'for master github project' do
    let(:title) { '/tmp/puppet-github-master.tar.gz' }
    let(:params) { { :user => 'rynr', :project => 'puppet-github' } }

    # Why is this test doing nothing?
    # I can change the title or the command, the test still passes. Why?
    it do
      should contain_exec('curl-github-tar-/tmp/puppet-github-master.tar.gz').
        with_command('curl -L -o \'/tmp/puppet-github-master.tar.gz\' \'http://github.com/rynr/puppet-github/tarball/master\'')
    end
  end

  context 'for github project branch' do
    let(:title) { '/tmp/puppet-github-branch.tar.gz' }
    let(:params) { { :user => 'rynr', :project => 'puppet-github', :branch => 'branch' } }

    # Why is this test doing nothing?
    # I can change the title or the command, the test still passes. Why?
    it do
      should contain_exec('curl-github-tar-/tmp/puppet-github-branch.tar.gz').
        with_command('curl -L -o \'/tmp/puppet-github-branch.tar.gz\' \'http://github.com/rynr/puppet-github/tarball/branch\'')
    end
  end

end
