#
# Cookbook Name:: my_app
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
include_recipe 'ruby_build'
include_recipe 'rbenv::system'
include_recipe 'nginx'

template "/etc/nginx/sites-available/#{node['my_app']['app_name']}" do
  source 'my_app.erb'
end

nginx_site node['my_app']['app_name'] do
  enable true
end
