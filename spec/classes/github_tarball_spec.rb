require 'spec_helper'

describe 'github::tarball' do

  it { contain_package('github') }

end
