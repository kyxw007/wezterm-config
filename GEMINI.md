# WezTerm Configuration Project

## Project Overview
This project is a modular and highly customizable WezTerm configuration written in Lua. It aims to provide an enhanced terminal experience with advanced features like dynamic background management, GPU adapter optimization, and extensive key bindings.

### Main Technologies
- **WezTerm:** A GPU-accelerated cross-platform terminal emulator.
- **Lua:** The primary configuration language for WezTerm.
- **WebGPU:** Used for high-performance rendering (configurable to OpenGL or Software).

### Architecture
The configuration is split into several logical modules:
- `wezterm.lua`: The entry point that initializes the configuration and loads all modules.
- `config/`: Contains modular configuration files for appearance, bindings, domains, fonts, general settings, and launch options.
- `events/`: Implements event handlers for UI elements like the status bar (left/right), tab titles, and startup events.
- `utils/`: Provides utility functions for background management (`backdrops.lua`), GPU selection (`gpu-adapter.lua`), and more.
- `colors/`: Custom color schemes (e.g., Catppuccin-inspired).
- `backdrops/`: A directory for background images used by the backdrop utility.

## Development and Usage

### Requirements
- **WezTerm:** Minimum version `20240127-113634-bbcac864` or later (Nightly recommended).
- **Fonts:** JetBrainsMono Nerd Font.

### Key Commands (Development)
- **Formatting:** The project uses `StyLua` for code formatting.
  - Check formatting: `stylua --check wezterm.lua colors/ config/ events/ utils/`
- **Linting:** The project uses `luacheck` for static analysis.
  - Run linter: `luacheck wezterm.lua colors/* config/* events/* utils/*`

### Manual Overrides
Users can customize the following files to match their environment:
- `config/domains.lua`: For custom SSH/WSL domains.
- `config/launch.lua`: For preferred shells and their paths.

## Key Features
- **Background Image Selector:** Interactive cycling and fuzzy searching for background images.
- **GPU Adapter Selector:** Automatically selects the best available GPU and graphics API (Metal on Mac, DX12/Vulkan on Windows, Vulkan on Linux).
- **Custom Status Bars:** Rich status information on both left and right sides of the tab bar.
- **Workspace Management:** Enhanced key bindings for managing tabs, panes, and workspaces.

## Workspace Customizations
The following specific preferences have been applied to this workspace:
- **Default Shell:** Set to `zsh` for macOS and Linux.
- **Font Settings:**
  - **Family:** `SF Mono` (loaded from `/System/Applications/Utilities/Terminal.app/Contents/Resources/Fonts/` on macOS).
  - **Weight:** `DemiBold` (to match the visual thickness of macOS Terminal).
  - **Size:** 12 (macOS).
- **Aesthetic (Clear Dark):**
  - **Background:** Pure black (`#000000`).
  - **Transparency:** `window_background_opacity = 0.9`.
  - **Blur:** `macos_window_background_blur = 30`.
  - **Images:** Background images are disabled by default (Focus Mode enabled).
  - **UI:** Transparent title bar and tab bar background.
- **Window Behavior:**
  - **Fullscreen:** `native_macos_fullscreen_mode = false` with `window_decorations = 'RESIZE'`. This hides the macOS system menu bar while keeping the WezTerm tab bar visible.
  - **Tab Bar:** Classic tab bar (`use_fancy_tab_bar = false`) is used for better stability in custom fullscreen layouts.
- **Environment:**
  - **CLI Color:** `CLICOLOR = '1'` and custom `LSCOLORS` are set to enable `ls` command highlighting.
- **Key Bindings:**
  - **Fullscreen:** `Command` + `Control` + `f` or `Alt` + `Enter`.
