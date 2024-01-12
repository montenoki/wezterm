local wezterm = require('wezterm')
local module = {}

function module.apply_to_config(config)
  config.hide_tab_bar_if_only_one_tab = true
  config.inactive_pane_hsb = {
    saturation = 0.8,
    brightness = 0.8,
  }
  config.window_decorations = 'RESIZE'
  config.enable_scroll_bar = true
  config.window_frame = {
    border_left_width = '1cell',
    border_right_width = '1cell',
    border_bottom_height = '0.5cell',
    border_top_height = '0.5cell',
    border_left_color = 'black',
    border_right_color = 'black',
    border_bottom_color = 'black',
    border_top_color = 'black',
  }
  config.window_padding = {
    top = 0,
    bottom = 0,
    left = 0,
    right = 0,
  }
end

return module
