local module = {}

function module.apply_to_config(config)
  config.color_scheme = 'Afterglow'
  config.initial_cols = 140
  config.initial_rows = 40

  config.hide_tab_bar_if_only_one_tab = true
  config.use_fancy_tab_bar = false

  config.window_decorations = 'RESIZE'
end

return module
