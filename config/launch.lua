local platform = require('utils.platform')

local options = {
   default_prog = {},
   launch_menu = {},
}

if platform.is_win then

   -- 设置默认启动为 WSL (默认发行版)
   -- 如果想启动特定发行版，可以使用 { 'wsl', '-d', 'Ubuntu' }
   options.default_prog = { 'wsl', '~' } 

   options.launch_menu = {
      { label = 'WSL', args = { 'wsl', '~' } }, -- 添加 WSL 到启动菜单
      { label = 'PowerShell Core', args = { 'pwsh', '-NoLogo' } },
      { label = 'PowerShell Desktop', args = { 'powershell' } },
      { label = 'Command Prompt', args = { 'cmd' } },
      { label = 'Nushell', args = { 'nu' } },
      -- ... 其他保持不变
   }
elseif platform.is_mac then
   options.default_prog = { 'zsh', '-l' }
   options.set_environment_variables = {
      CLICOLOR = '1',
      LSCOLORS = 'Gxfxcxdxbxegedabagacad',
   }
   options.launch_menu = {
      { label = 'Bash', args = { 'bash', '-l' } },
      { label = 'Fish', args = { '/opt/homebrew/bin/fish', '-l' } },
      { label = 'Nushell', args = { '/opt/homebrew/bin/nu', '-l' } },
      { label = 'Zsh', args = { 'zsh', '-l' } },
   }
elseif platform.is_linux then
   options.default_prog = { 'zsh', '-l' }
   options.set_environment_variables = {
      CLICOLOR = '1',
   }
   options.launch_menu = {
      { label = 'Bash', args = { 'bash', '-l' } },
      { label = 'Fish', args = { 'fish', '-l' } },
      { label = 'Zsh', args = { 'zsh', '-l' } },
   }
end

return options
