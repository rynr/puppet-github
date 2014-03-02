require 'spec_helper'

describe 'github', :type => 'class' do

  it { should contain_package('curl') }

end
