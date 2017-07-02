# cookbook Name:: apache
# Recipe:: default
# Copyright 2013, YOUR_COMPANY_NAME#
# All rights reserved - Do Not Redistribute## Install httpd package but don’t start it

# Install mod_ssl package to enable ssl module in apache
package "mod_ssl" do
  action [:install]
end

# Create /etc/httpd/ssl directory on chef client
directory "#{node['apache']['dir']}/ssl" do        
  action :create
  recursive true
  mode 0755
end

# Copy ssl certificates from certificates folder to client’s /etc/httpd/ssl folder
remote_directory "#{node['apache']['dir']}/ssl" do
  source "certificates"
  files_owner "root"
  files_group "root"        
  files_mode 00644
  owner "root"
  group "root"        
  mode 0755
end

# This will make changes to ssl.conf 
template "/etc/httpd/conf.d/ssl.conf" do
  source "ssl.conf.erb"
  mode 0644
  owner "root"
  group "root"
  variables(
    :sslcertificate => "#{node['apache']['sslpath']}/server.crt",
    :sslkey => "#{node['apache']['sslpath']}/server.key",
    :servername => "#{node['apache']['servername']}")
end

# start httpd service
service "httpd" do
  action :restart
end

cookbook_file '/var/www/html/index.html' do
  source 'index2.html'
  mode '0644'
end 
