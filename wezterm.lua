local wezterm = require('wezterm')

local config = {}

if wezterm.config_builder then
  config = wezterm.config_builder()
end

local sub_settings = {
  mouse = require('mouse'),
  fonts = require('fonts'),
  appearance = require('appearance'),
  options = require('options'),
}

local os_settings = nil
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
if os_settings ~= nil then
  table.insert(sub_settings, os_settings)
end

for name, _ in pairs(sub_settings) do
  sub_settings[name].apply_to_config(config)
end
return config