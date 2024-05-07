local module = {}

function module.apply_to_config(config)
  config.use_ime = true
  config.xim_im_name = 'ibus'
end

return module
