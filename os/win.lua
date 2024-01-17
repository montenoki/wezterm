local module = {}

function module.apply_to_config(config)
  config.default_prog = { 'pwsh.exe', '-NoLogo' }
  config.window_background_opacity = 1.0
  config.macos_window_background_blur = 0
end

return module
