local wezterm = require('wezterm')
local platform = require('utils.platform')

local font_size = platform.is_mac and 12 or 9.75

-- 根据平台选择字体名称
local font_family = 'SF Mono' -- 默认（Mac）
if platform.is_mac then
    font_size = platform.is_mac and 12 or 9.75
elseif platform.is_win then
    font_family = 'Cascadia Code' -- 或者 'Consolas'
    font_size = 12
elseif platform.is_linux then
    font_family = 'JetBrains Mono'
    font_size = 12
end

return {
   font = wezterm.font({
      family = font_family,
      weight = 'DemiBold',
   }),
   font_size = font_size,

   freetype_load_target = 'Normal',
   freetype_render_target = 'Normal',
}