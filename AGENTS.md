# Repository Guidelines

Personal Neovim configuration built on [LazyVim](https://lazyvim.github.io/) with [lazy.nvim](https://github.com/folke/lazy.nvim) as plugin manager. Apache 2.0 licensed.

## Architecture & Data Flow

LazyVim uses a layered configuration model. `init.lua` bootstraps `config/lazy.lua`, which sets up lazy.nvim, imports LazyVim core defaults, and loads local plugin overrides from `lua/plugins/`.

```
init.lua
  └─ lua/config/lazy.lua        ← lazy.nvim setup, imports LazyVim + plugins/
       ├─ lua/config/options.lua ← Neovim options (loaded before lazy.nvim)
       ├─ lua/config/keymaps.lua ← custom keymaps (loaded on VeryLazy)
       ├─ lua/config/autocmds.lua← autocommands (loaded on VeryLazy)
       └─ lua/plugins/*.lua      ← plugin specs (auto-loaded by lazy.nvim)
```

## Key Directories

| Path | Purpose |
|---|---|
| `lua/config/` | Core Neovim config: options, keymaps, autocmds, lazy.nvim bootstrap |
| `lua/plugins/` | Plugin specs — each file is auto-loaded as a lazy.nvim plugin spec |
| `colors/` | Custom colorscheme definitions |

## Important Files

- **`init.lua`** — Entry point; bootstraps `config/lazy`
- **`lua/config/lazy.lua`** — lazy.nvim setup, imports `lazyvim.plugins` (upstream defaults) and `plugins` (local overrides)
- **`lua/config/options.lua`** — Neovim options (e.g., `vim.opt.mouse = ""`)
- **`lua/config/keymaps.lua`** — Buffer navigation (Tab/S-Tab), close buffer (S-q), explorer toggle (`|`)
- **`lua/config/autocmds.lua`** — Removes default `lazyvim_wrap_spell` autocmd
- **`lua/plugins/colorscheme.lua`** — Disables tokyonight, sets colorscheme to `like`
- **`lua/plugins/completion.lua`** — blink.cmp with Tab/S-Tab keymaps
- **`lua/plugins/lualine.lua`** — Statusline customization (diagnostics, pretty_path)
- **`lua/plugins/formatting.lua`** — conform.nvim for Markdown (prettier)
- **`lua/plugins/markdown-preview.lua`** — Markdown preview with `<leader>mp`
- **`lua/plugins/indent.lua`** — snacks.nvim indent (disabled) and scope (enabled)
- **`lua/plugins/example.lua`** — Disabled reference file with example plugin patterns
- **`colors/like.lua`** — Custom "like" colorscheme (GitHub Light palette)
- **`lazy-lock.json`** — Pins all plugins to exact commits
- **`lazyvim.json`** — LazyVim internal tracking; do not edit by hand
- **`stylua.toml`** — Lua formatter config

## Code Conventions & Common Patterns

**Plugin override pattern:** To override a LazyVim default, use the same plugin name in `lua/plugins/` and provide new `opts`, `keys`, or `enabled = false`. Use `opts = function(_, opts)` to merge with upstream defaults rather than replace them.

```lua
-- Merge with upstream (function form)
opts = function(_, opts)
  opts.setting = "value"
end

-- Replace entirely (table form)
opts = { setting = "value" }

-- Disable a plugin
enabled = false
```

**LazyVim extras:** Imported in `lua/config/lazy.lua` or plugin specs via `import = "lazyvim.plugins.extras.<name>"`. Currently enabled: `lazyvim.plugins.extras.lang.json` (per `lazyvim.json`).

**Formatting:** Lua code uses StyLua — spaces for indentation, 2-space indent width, 120-column max width.

## Development Commands

There is no build step. The config is loaded directly by Neovim.

| Action | Command |
|---|---|
| Install/sync plugins | `:Lazy sync` (inside Neovim) |
| Update plugins | `:Lazy update` (inside Neovim) |
| Check plugin status | `:Lazy` (inside Neovim) |
| Format Lua files | `stylua .` (from repo root) |
| Health check | `:checkhealth` (inside Neovim) |

## Testing & QA

No automated test framework. Verify changes by:
1. Launching Neovim and confirming no errors on startup
2. Running `:Lazy` to check plugin status
3. Running `:checkhealth` to verify configuration integrity
4. Testing specific keymaps/plugins manually

## Runtime/Tooling Preferences

- **Editor:** Neovim (latest stable)
- **Plugin manager:** lazy.nvim
- **Framework:** LazyVim starter template
- **Formatter:** StyLua for Lua files
- **Lock file:** `lazy-lock.json` must be committed to reproduce exact plugin state
