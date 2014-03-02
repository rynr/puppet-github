require 'spec_helper'

describe 'github::zipball' do

  it { contain_package('github') }

end
