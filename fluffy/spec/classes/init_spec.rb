require 'spec_helper'
describe 'fluffy' do

  context 'with defaults for all parameters' do
    it { should contain_class('fluffy') }
  end
end
