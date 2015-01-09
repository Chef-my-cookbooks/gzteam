def chrome_version
  chrome_windows_version
end

private

def chrome_windows_version
  @master_preferences_path = node['chrome']['master_preferences_windows']
  install_dir = master_preferences_path.slice(0, master_preferences_path.rindex('\\'))
  #entries = ::Dir.entries(install_dir).reverse
  #entries.each do |filename|
  #  return filename if filename[/^[\d|.].*$/]
  #end
end

