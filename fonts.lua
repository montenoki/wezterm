local wezterm = require('wezterm')
local module = {}

function module.apply_to_config(config)
  config.font = wezterm.font_with_fallback({
    'FiraCode Nerd Font Mono',
    'HackGen Console NF',
  })
  config.font_size = 14
  config.line_height = 1.1
end

return module
