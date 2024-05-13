local module = {}

function module.apply_to_config(config)
  config.window_close_confirmation = 'NeverPrompt'
  config.front_end = 'WebGpu'
end

return module