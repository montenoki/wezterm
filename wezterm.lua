local wezterm = require 'wezterm'
local launch_menu = {}
local config = {}

if wezterm.target_triple == 'x86_64-pc-windows-msvc' then
    table.insert(launch_menu, {
        label = 'PowerShell',
        args = {'powershell.exe', '-NoLogo'}
    })
end

config.font = wezterm.font('HackGen Console NF')
config.launch_menu = launch_menu
config.window_decorations = 'RESIZE'

return config
