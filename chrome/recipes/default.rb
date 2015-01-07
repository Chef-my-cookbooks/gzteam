#
# Cookbook Name:: chrome
# Recipe:: default
#
# Copyright 2015, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

windows_packages 'Google Chrome' do
  if chrome = node['kernel']['machine'] == 'x86_64'
     source node['chrome']['msi_64']
     action :install
  else
     source node['chrome']['msi']
     action :install
  end
end

chrome 'custom_preferences' do
  params(
    "homepage" : "blank"
    "browser" : { 
    	"check_default_browser" : false
    },
    "distribution" : {	
	"make_chrome_default" : false,
        "show_pop-ups" : false,
	"save_password" : false
   )
  action :master_preferences
end

# Stop Google Updates

registry_key "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Google\Update\UpdateDefault" do
  values [{
	:name => "REG_DWORD",
	:type => :string,
	:data => ['0']
	]}
  action :create
end



