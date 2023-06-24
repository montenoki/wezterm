local wezterm = require("wezterm")
local module = {}

function module.apply_to_config(config)
	config.window_decorations = "RESIZE"
end

return module
