# Mentioning providers actions here for master_preferences

action :master_preferences do
  converge_by('chrome_master_preferences') do
    flavor = node['chrome']['master_preferences_windows']

    template flavor do
      source new_resource.template
      local new_resource.local
      cookbook new_resource.cookbook
      variables(
	params: new_resource.params
      )
    end
  end
end

