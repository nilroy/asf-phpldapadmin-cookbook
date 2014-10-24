# Encoding: utf-8
#
# Cookbook Name:: phpldapadmin-cookbook
# Recipe:: default
#
# Copyright (c) 2014 Grid Dynamics International, Inc. All Rights Reserved
# Classification level: Public
# Licensed under the Apache License, Version 2.0.
#

include_recipe 'apache2::default'
include_recipe 'apache2::mod_alias'
include_recipe 'apache2::mod_php5'
include_recipe 'yum-epel'

# Install phpldapadmin package
package "phpldapadmin"

# Configure phpldapadmin from templates

web_app 'phpldapadmin' do
  template 'phpldapadmin.conf.erb'
  path "#{node['apache']['dir']}/sites-available/phpldapadmin.conf"
  enable true
end

apache_site 'phpldapadmin' do
  enable true
end

template "#{node['phpldapadmin']['config_dir']}/config.php" do
  source 'config.php.erb'
  owner node['apache']['user']
  group node['apache']['group']
  mode 0640
  notifies :restart, 'service[apache2]'
end

#Delete templates
directory "#{node['phpldapadmin']['install_dir']}/templates/creation" do
  recursive true
  action :delete
end

directory "#{node['phpldapadmin']['install_dir']}/templates/creation" do
  action :create
end

#Add custom template
template "#{node['phpldapadmin']['install_dir']}/templates/creation/asf-user.xml" do
  source 'asf-user.xml.erb'
  owner node['apache']['user']
  group node['apache']['group']
  mode 0644
end
