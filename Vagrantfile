# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

  config.vm.define 'ci' do |ci|
    ci.vm.box_url  = "https://github.com/mitchellh/vagrant-aws/raw/master/dummy.box"
    ci.vm.box = "dummy"
    ci.vm.provider 'aws' do |aws, override|
      aws.access_key_id     = ENV['AWS_ACCESS_KEY']
      aws.secret_access_key = ENV['AWS_SECRET_ACCESS_KEY']
      aws.keypair_name = "circleci"

      aws.instance_type = "t1.micro"
      aws.region = "ap-northeast-1"
      aws.availability_zone = "ap-northeast-1c"

      ## CentOS 6.5 community
      aws.ami = "ami-81294380"

      aws.security_groups = [ 'test-kitchen' ]
      aws.tags = { 'Name' => 'CircleCI' }

      override.ssh.username = "root"

      ## This private key is configured on CircleCI
      override.ssh.private_key_path = ENV['AWS_SSH_KEY_PATH']
      
      ## Use pty
      override.ssh.pty = true
    end
  end
end
