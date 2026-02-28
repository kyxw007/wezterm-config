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
