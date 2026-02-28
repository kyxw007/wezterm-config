# WezTerm Lua API Patterns

## Action Handlers (act)
- **Tabs**: `act.SpawnTab('DefaultDomain')`, `act.CloseCurrentTab({ confirm = false })`, `act.ActivateTabRelative(1)`.
- **Panes**: `act.SplitVertical({ domain = 'CurrentPaneDomain' })`, `act.SplitHorizontal({ domain = 'CurrentPaneDomain' })`, `act.CloseCurrentPane({ confirm = false })`.
- **Search**: `act.Search({ CaseInSensitiveString = '' })`.
- **Input**: `act.InputSelector({ ... })`.
- **Events**: `act.EmitEvent('tabs.manual-update-tab-title')`.

## Key Tables
Used for modal modes (e.g., resizing panes/fonts):
- `resize_font`: `k` (Increase), `j` (Decrease), `r` (Reset), `q`/`Escape` (Exit).
- `resize_pane`: `k`/`j`/`h`/`l` (Directional adjust).

## Utils Logic
- `backdrops:random(window)`: Selects a random background image.
- `backdrops:cycle_back(window)` / `backdrops:cycle_forward(window)`: Cycles through images.
- `backdrops:toggle_focus(window)`: Toggles image vs. solid color background.
