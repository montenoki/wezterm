local wezterm = require("wezterm")

local sub_settings = {
	fonts = require("fonts"),
	launch = require("launching"),
    appearance = require("appearance")
}

local config = {}

if wezterm.config_builder then
	config = wezterm.config_builder()
end

for name, _ in pairs(sub_settings) do
	sub_settings[name].apply_to_config(config)
end

return config
