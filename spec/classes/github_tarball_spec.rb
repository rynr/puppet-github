require 'spec_helper'

describe 'github::tarball' do
  let(:user) { 'rynr' }
  let(:project) { 'puppet-github' }

  let(:node) { 'testhost.example.com' }
  let(:facts) { {:operatingsystem => 'Debian', :ipaddress => '192.168.0.1'} }

  it { should contain_github }

end
