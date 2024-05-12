local wezterm = require('wezterm')
local module = {}
wezterm.on(
  'new-tab-button-click',
  function(window, pane, button, default_action)
    wezterm.log_info('new-tab', window, pane, button, default_action)

    if default_action then
      if button=='Right' then
        window:perform_action(wezterm.action.ShowLauncherArgs { flags = 'LAUNCH_MENU_ITEMS' }, pane)
      elseif button=="Left" then
        window:perform_action(default_action, pane)
      end
    end
    return false
  end
)
function module.apply_to_config(config)
  config.launch_menu = {
    { label = 'WSL', args={"wsl", "~"}},
    { label = "PowerShell", args={"powershell.exe", "-NoLogo"}},
    { label = "PowerShell7", args={"pwsh.exe", "-NoLogo"}},
  }
  config.default_prog = { 'pwsh.exe', '-NoLogo' }
  config.hide_tab_bar_if_only_one_tab = false
  config.use_fancy_tab_bar = true
  config.window_background_opacity = 1.0
  config.macos_window_background_blur = 0
end

return module
