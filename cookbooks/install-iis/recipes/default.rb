#
# Cookbook:: install-iis
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.

%w{ IIS-WebServerRole IIS-WebServer }.each do |feature|
  windows_feature feature do
    action :install
  end
end

service 'w3svc' do
  action [:start, :enable]
end
