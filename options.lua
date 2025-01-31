local module = {}

function module.apply_to_config(config)
  config.window_close_confirmation = 'NeverPrompt'
  config.send_composed_key_when_left_alt_is_pressed = false
  config.send_composed_key_when_right_alt_is_pressed = false
end

return module
