#
# Cookbook:: testcookbook
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.
#
file 'C:\Users\vagrant\Desktop\test.txt' do
  content 'This is a test file'
  action :create
end
