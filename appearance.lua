local module = {}

function module.apply_to_config(config)
  config.initial_cols = 178 -- Fits 2x80 chars
  config.initial_rows = 43

  config.hide_tab_bar_if_only_one_tab = true
  config.use_fancy_tab_bar = false

  config.window_decorations = 'RESIZE'

  config.window_background_opacity = 0.7
  config.macos_window_background_blur = 20
end

return module
