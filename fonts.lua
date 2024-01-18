local wezterm = require('wezterm')
local module = {}

function module.apply_to_config(config)
  config.font = wezterm.font_with_fallback({
    { family = 'FiraCode Nerd Font', weight = 'Regular' },
    { family = 'HackGen Console NF', weight = 'Regular' },
  })
  config.font_size = 14
  config.line_height = 1.1
end

return module
