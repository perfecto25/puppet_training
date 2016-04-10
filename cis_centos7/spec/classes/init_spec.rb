require 'spec_helper'
describe 'CIS_Centos7' do

  context 'with defaults for all parameters' do
    it { should contain_class('CIS_Centos7') }
  end
end
