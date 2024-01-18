local wezterm = require('wezterm')
local module = {}

function module.apply_to_config(config)
  config.font = wezterm.font_with_fallback({
    { family = 'FiraCode Nerd Font', weight = 450 },
    'HackGen Console NF',
  })
  config.font_size = 16
  config.window_padding = {
    left = 0,
    right = 0,
    top = 0,
    bottom = 0,
  }
end

return module
