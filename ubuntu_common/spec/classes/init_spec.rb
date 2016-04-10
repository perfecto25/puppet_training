require 'spec_helper'
describe 'ubuntu_common' do

  context 'with defaults for all parameters' do
    it { should contain_class('ubuntu_common') }
  end
end
