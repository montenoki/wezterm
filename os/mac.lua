local wezterm = require('wezterm')
local module = {}

function module.apply_to_config(config)
  config.font = wezterm.font_with_fallback({
    { family = 'FiraCode Nerd Font', weight = 450 },
    { family = 'HackGen Console NF', weight = 'Regular' },
  })
  config.hide_tab_bar_if_only_one_tab = true
  config.use_fancy_tab_bar = false
  config.window_padding = {
    left = 0,
    right = 0,
    top = 0,
    bottom = 0,
  }
end

return module
