{
  "homepage" : "<%= @params[:homepage] %>",
  "homepage_is_newtabpage" : false,
  "browser" : {
    "show_home_button" : true,
    "check_default_browser" : false
},
  "sync_promo": {
    "show_on_first_run_allowed": false
},
  "distribution": {
    "skip_first_run_ui": true,
    "suppress_first_run_bubble": true,
    "do_not_register_for_update_launch": true,
    "suppress_first_run_default_browser_prompt": true,
    "msi": true,
    "system_level":true,
    "require_eula": false
    "make_chrome_default": false
    "save_password": false
},
"first_run_tabs" : [
"<%= @params[:homepage] %>"
]
}
