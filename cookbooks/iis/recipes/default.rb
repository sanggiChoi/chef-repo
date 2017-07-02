#
# Cookbook:: iis
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.
#
powershell_script 'Install IIS' do  
  action :run
  code 'add-windowsfeature Web-Server'
end

service 'w3svc' do  
  action [:enable, :start]
end

template 'c:inetpubwwwrootDefault.htm' do  
  source 'Default.htm.erb'
  rights :read, 'Everyone'
end
