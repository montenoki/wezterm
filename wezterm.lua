local wezterm = require('wezterm')

local config = {}

if wezterm.config_builder then
  config = wezterm.config_builder()
end

local sub_settings = {
  fonts = require('fonts'),
  appearance = require('appearance'),
  options = require('options'),
}
for name, _ in pairs(sub_settings) do
  sub_settings[name].apply_to_config(config)
end

local os_settings
if wezterm.target_triple == 'x86_64-pc-windows-msvc' then
  os_settings = require('os.win')
elseif
  wezterm.target_triple == 'x86_64-apple-darwin'
  or wezterm.target_triple == 'aarch64-apple-darwin'
then
  os_settings = require('os.mac')
elseif wezterm.target_triple == 'x86_65-unknown-linux-gnu' then
  os_settings = require('os.linux')
end
os_settings.apply_to_config(config)

return config
