# Recipe for installing and add path for sublime for windows and Linux.

# Since for sublime text 2 we are adding launchpad repo to repository.
# In order to do that we need to install python software properties.


#package "python-software-properties" do
#	action :install
#end

# UBUNTU
# Note: Since we are using PPA here, there is no necessary to symlink or export the PATH. Package manager will does this by default.

if platform?("ubuntu")
	bash "Sublime-text"  do
		user "root"
		code <<-EOH
		  sudo dd-apt-repository ppa:webupd8team/sublime-text-2
		  sudo apt-get update -y
		EOH
	end

	package "sublime-text" do
		name "sublime-text"
		action :install
	end
end

# DEBIAN.
if platform?("debian")
	bash "Sublime-text 2" do
		user "root"
		code <<-EOH
		  wget http://c758482.r82.cf2.rackcdn.com/Sublime%20Text%202.0.1.tar.bz2	
		  tar -xvjf Sublime\ Text\ 2*.tar.bz2
		  mv Sublime\ Text\ 2/ /opt/sublime-text-2/
		  ln -s /opt/sublime-text-2 /usr/local/sublime-text-2
		  ln -s /usr/local/sublime-text-2/sublime_text /usr/bin/subl
		  rm Sublime\ Text\ 2*.tar.bz2
		EOH
	end
end


# WINDOWS
if platform?("windows")
	windows_package "Sublime-text" do
		architecture :i386
		source "http://c758482.r82.cf2.rackcdn.com/Sublime%20Text%202.0.2%20Setup.exe"
		action :install
	end

	windows_package "sublime-test 2" do
		architecture :x86_64
		source "http://c758482.r82.cf2.rackcdn.com/Sublime%20Text%202.0.2%20x64%20Setup.exe"
		action :install
	end

	windows_path "C:\Program Files\Sublime Text 2" do
		action :add
	end
end
