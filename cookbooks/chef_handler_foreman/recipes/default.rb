#
# Cookbook:: chef_handler_foreman
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.

gem_package 'chef_handler_foreman' do
  action :install
  #ignore_failure true
end

template '/etc/chef/client.rb' do
  source 'client.erb'
  variables(
    :chef_server_url 		=> "#{node['chef_server_url']}",
    :chef_validator_name 	=> "#{node['chef_validator_name']}",
    :chef_handler_foreman_url 	=> "#{node['chef_handler_foreman_url']}")
end
