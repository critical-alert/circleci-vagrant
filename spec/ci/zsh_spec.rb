require 'spec_helper'

describe package('zsh') do
  it { should be_installed }
end

describe file('/bin/zsh') do
  it { should be_file }
end
