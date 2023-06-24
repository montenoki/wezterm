local wezterm = require("wezterm")
local module = {}

local launch_menu = {}
local default_prog = {}

if wezterm.target_triple == "x86_64-pc-windows-msvc" then
	table.insert(launch_menu, {
		label = "PowerShell",
		args = { "powershell.exe", "-NoLogo" },
	})
    default_prog = { "powershell.exe", "-NoLogo"}
end

function module.apply_to_config(config)
	config.launch_menu = launch_menu
    config.default_prog = default_prog
end

return module
