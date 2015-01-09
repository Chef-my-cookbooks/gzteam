chrome Cookbook
===============
e.g.
This cookbook makes your favorite install and have a chrome preferences.

Requirements
------------
- Windows Lwrp
- chef-solo 12.0.3
- Windows 2012 x86_64

OS Targets:

- Windows.

Solo.rb
-----

- echo "file_cache_path "/home/swaroop/.chef/cache"" > solo.rb
- echo "cookbook_path "/home/swaroop/.chef/cookbooks"" >> solo.rb

Note: path might change in case of Windows, I've written this cookbook on my linux machine and ran it on Windows.

Files
-----

- There is file calles master_preferences in files/default folder where user can have their own preferences according to their choice.

Usage
-----
Usage:  chef-solo -c solo.rb --override-runlist "recipe[<cookbook-name>::<recipe-name>]"
