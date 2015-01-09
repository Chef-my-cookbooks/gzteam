chrome Cookbook
===============
e.g.
This cookbook makes your favorite breakfast sandwich.

Requirements
------------
- Windows Lwrp
- chef-solo 12.0.3
- Windows 2012 x86_64

Solo.rb
-----

# echo "file_cache_path "/home/swaroop/.chef/cache"" > solo.rb
# echo "cookbook_path "/home/swaroop/.chef/cookbooks"" >> solo.rb

Usage
-----
Usage:  chef-solo -c solo.rb --override-runlist "recipe[<cookbook-name>::<recipe-name>]"
