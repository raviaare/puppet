require 'spec_helper'
describe 'java' do

  context 'with defaults for all parameters' do
    it { should contain_class('java') }
  end
end
