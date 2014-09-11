require 'serverspec'

include Serverspec::Helper::Exec
include Serverspec::Helper::DetectOS

describe package('zsh') do
  it { should be_installed }
end

describe file('/bin/zsh') do
  it { should be_file }
end
