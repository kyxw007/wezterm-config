---
name: wezterm-config-manager
description: Manage and extend this modular WezTerm configuration. Use for CRUD on keybindings (config/bindings.lua), modifying appearance (config/appearance.lua), fonts (config/fonts.lua), and custom status bars (events/).
---

# WezTerm Config Manager

This skill provides a structured approach to managing this specific modular WezTerm Lua configuration.

## Project Structure Overview

- `config/`: Primary configuration modules.
    - `bindings.lua`: All keyboard and mouse shortcuts.
    - `appearance.lua`: Theme, transparency, blur, and window styling.
    - `fonts.lua`: Font family, weight, size, and ligatures.
    - `general.lua`: General performance and UI settings.
- `utils/`: Logic for specific features.
    - `backdrops.lua`: Background image cycling and randomizer.
    - `gpu-adapter.lua`: Selection of graphics APIs (Metal, Vulkan, DX12).
- `events/`: Dynamic UI elements.
    - `left-status.lua` / `right-status.lua`: Status bar content.
    - `tab-title.lua`: Dynamic tab labels.

## Workflows

### 1. Key Binding CRUD (config/bindings.lua)

- **Search (Retrieve)**: Look for `key` or `action` in the `keys` table.
- **Add (Create)**:
    - Locate the relevant comment category (e.g., `-- tabs --`).
    - Use `mod.SUPER` (Command on Mac) or `mod.SUPER_REV` (Command+Ctrl on Mac).
    - Pattern: `{ key = '...', mods = ..., action = ... },`
- **Update**: Modify existing `key`, `mods`, or `action`.
- **Delete**: Remove the entire entry line.

### 2. Font & Appearance Management
- **Fonts**: Update `config/fonts.lua`.
    - macOS uses `SF Mono` DemiBold from `/System/Applications/Utilities/Terminal.app/Contents/Resources/Fonts/`.
- **Colors & Transparency**: Update `config/appearance.lua`.
    - Transparency: `window_background_opacity = 0.9`.
    - Blur: `macos_window_background_blur = 30`.

### 3. Background Images (backdrops/)
- **Adding Images**: Place images in `backdrops/`.
- **Registering Images**: The configuration automatically scans the folder (via `backdrops:choices()` in `utils/backdrops.lua`).

## Project Conventions
- **Formatting**: Uses `StyLua`. Ensure `-- stylua: ignore` tags are respected for tables that require specific alignment.
- **Platform Checks**: Uses `utils/platform.lua` (`is_mac`, `is_win`, `is_linux`) for conditional logic.
- **Modifiers**:
    - macOS: `SUPER` = Command.
    - Windows/Linux: `SUPER` = Alt.

## Troubleshooting
- Press `F12` to open the WezTerm Debug Overlay to check for Lua syntax errors after modifications.
- Check `.luacheckrc` and `.luarc.json` for linting and LSP settings.
