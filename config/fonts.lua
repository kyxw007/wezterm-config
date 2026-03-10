local wezterm = require('wezterm')
local platform = require('utils.platform')

-- 根据平台选择字体名称
local font_family = 'SF Mono' -- 默认（Mac）
if platform.is_win then
    font_family = 'Cascadia Code' -- 或者 'Consolas'
elseif platform.is_linux then
    font_family = 'JetBrains Mono'
end

local font_size = platform.is_mac and 12 or 9.75

return {
   font = wezterm.font({
      family = font_family,
      weight = 'DemiBold',
   }),
   font_size = font_size,

   freetype_load_target = 'Normal',
   freetype_render_target = 'Normal',
}