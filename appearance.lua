local module = {}

function module.apply_to_config(config)
  config.hide_tab_bar_if_only_one_tab = true
  config.use_fancy_tab_bar = true
  config.inactive_pane_hsb = {
    saturation = 0.8,
    brightness = 0.8,
  }
  config.initial_cols = 120
  config.initial_rows = 48
  config.window_decorations = 'RESIZE'
  config.window_frame = {
    border_top_height = '0.5cell',
    border_top_color = 'black',
  }
  config.window_padding = {
    top = 0,
    bottom = 0,
    left = 0,
    right = 0,
  }
  config.window_background_opacity = 0.7
  config.macos_window_background_blur = 20
end

return module
