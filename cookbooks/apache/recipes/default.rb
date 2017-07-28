# cookbook Name:: apache
# Recipe:: default
# Copyright 2013, YOUR_COMPANY_NAME#
# All rights reserved - Do Not Redistribute## Install httpd package but don’t start it

include_recipe 'slack_handler'

package "httpd" do        
  action [:install]
end

# start httpd service
service "httpd" do
  action [:enable, :start]
end 

cookbook_file '/var/www/html/index.html' do
  source 'index.htm'
  mode '0644'
end
