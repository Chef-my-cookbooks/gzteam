chrome Cookbook
===============
e.g.
This cookbook installs sublime based on the operating system.

OS Targets
-----

- Debian, Ubuntu & Windows.

Requirements
------------
- Windows Lwrp
- chef-solo 12.0.3
- Windows 2012 x86_64

Solo.rb
-----

# echo "file_cache_path "/home/<user>/.chef/cache"" > solo.rb
# echo "cookbook_path "/home/<user>/.chef/cookbooks"" >> solo.rb

Usage
-----
Usage:  chef-solo -c solo.rb --override-runlist "recipe[<cookbook-name>::<recipe-name>]"
