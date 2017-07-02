#
# Cookbook:: remote
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.

remote_directory '/tmp/remote' do
  source 'remote'
  owner 'root'
  group 'root'
  mode '0755'
  action :create
end
