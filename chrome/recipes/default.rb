#
# Cookbook Name:: chrome
# Recipe:: default
#
# Copyright 2015, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

windows_package 'Google Chrome' do
  if node['kernel']['machine'] == 'x86_64'
     source node['chrome']['msi_64']
     action :install
  else
     source node['chrome']['msi']
     action :install
  end
end

# Pushing custom preferences for Chrome.

cookbook_file "master_preferences" do
  source "master_preferences"
  path "C:\\Program Files (x86)\\Google\\Chrome\\Application\\master_preferences"
end

# Stop Google Updates

registry_key "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Google\Update\UpdateDefault" do
  values [{
	:name => "REG_DWORD",
	:type => :string,
	:data => ['0']
	}]
  action :create
end



