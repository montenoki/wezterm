local module = {}

function module.apply_to_config(config)
  config.color_scheme = 'Afterglow'
  config.initial_cols = 140
  config.initial_rows = 40
  config.window_decorations = 'RESIZE'
end

return module
