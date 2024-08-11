local module = {}

function module.apply_to_config(config)
  config.use_ime = true
  config.xim_im_name = 'ibus'
  config.hide_tab_bar_if_only_one_tab = true
  config.use_fancy_tab_bar = false
end

return module
