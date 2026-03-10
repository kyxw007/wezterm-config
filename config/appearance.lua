local gpu_adapters = require('utils.gpu-adapter')
local backdrops = require('utils.backdrops')
local colors = require('colors.custom')

return {
   term = "xterm-256color",
   max_fps = 60,
   animation_fps = 60,
   front_end = 'WebGpu',
   -- webgpu_power_preference = 'HighPerformance',
   -- webgpu_preferred_adapter = gpu_adapters:pick_best(),
   -- webgpu_preferred_adapter = gpu_adapters:pick_manual('Dx12', 'IntegratedGpu'),
   -- webgpu_preferred_adapter = gpu_adapters:pick_manual('Gl', 'Other'),
   -- underline_thickness = '1.5pt',
   
   -- background: pass in `true` if you want wezterm to start with focus mode on (no bg images)
   background = backdrops:initial_options(true),
   window_background_opacity = 1.0,

   -- color scheme
   colors = colors,

   window_background_opacity = 1.0,
   macos_window_background_blur = 30,
   native_macos_fullscreen_mode = true,


   -- scrollbar
   enable_scroll_bar = true,

   -- tab bar
   enable_tab_bar = true,
   hide_tab_bar_if_only_one_tab = false,
   use_fancy_tab_bar = true,
   tab_bar_at_bottom = false,
   tab_max_width = 25,
   show_tab_index_in_tab_bar = true,
   switch_to_last_active_tab_when_closing_tab = true,

   -- cursor
   cursor_blink_ease_in = 'EaseOut',
   cursor_blink_ease_out = 'EaseOut',
   default_cursor_style = 'BlinkingBlock',
   cursor_blink_rate = 650,

   -- command palette
   command_palette_fg_color = '#b4befe',
   command_palette_bg_color = '#11111b',
   command_palette_font_size = 12,
   command_palette_rows = 25,

   -- window
   adjust_window_size_when_changing_font_size = false,
   allow_square_glyphs_to_overflow_width = 'Never',
   window_decorations = 'INTEGRATED_BUTTONS | RESIZE',
   window_padding = {
      left = 5,
      right = 0,
      top = 2,
      bottom = 0,
   },
   window_close_confirmation = 'AlwaysPrompt',   
   window_frame = {
      -- active_titlebar_bg = 'transparent',
      -- font = fonts.font,
      -- font_size = fonts.font_size,
   },

   -- inactive_pane_hsb = {
   --    saturation = 0.9,
   --    brightness = 0.65,
   -- },
   inactive_pane_hsb = {
      saturation = 1,
      brightness = 1,
   },

   visual_bell = {
      fade_in_function = 'EaseIn',
      fade_in_duration_ms = 250,
      fade_out_function = 'EaseOut',
      fade_out_duration_ms = 250,
      target = 'CursorColor',
   },
}
