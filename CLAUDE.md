# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Overview

This is a personal Neovim configuration built on top of [LazyVim](https://lazyvim.github.io/), using [lazy.nvim](https://github.com/folke/lazy.nvim) as the plugin manager. The repo is a LazyVim starter template with customizations layered on top.

## Architecture

LazyVim uses a layered configuration model:

- `init.lua` — entry point; only bootstraps `config.lazy`
- `lua/config/lazy.lua` — sets up lazy.nvim, imports `lazyvim.plugins` (the upstream defaults) and then `plugins` (local overrides)
- `lua/config/options.lua` — Neovim options, loaded before lazy.nvim startup
- `lua/config/keymaps.lua` — keymaps, loaded on `VeryLazy` event
- `lua/config/autocmds.lua` — autocommands, loaded on `VeryLazy` event
- `lua/plugins/*.lua` — any file here is auto-loaded by lazy.nvim as a plugin spec

**Extension pattern:** custom plugins go in `lua/plugins/`. To override a LazyVim default plugin, use the same plugin name in a spec there and provide new `opts`, `keys`, or `enabled = false`. Use `opts = function(_, opts)` (not `opts = {}`) to merge with upstream defaults rather than replace them.

**LazyVim extras** (e.g. `{ import = "lazyvim.plugins.extras.lang.typescript" }`) are imported inside `lua/config/lazy.lua` or any plugin spec file.

## Lock File

`lazy-lock.json` pins every plugin to a specific commit. Commit it to reproduce the exact plugin state. Update it by running `:Lazy sync` or `:Lazy update` inside Neovim.

## Installed Plugins

Before making any configuration change, always check which plugins are already installed by reading `lazy-lock.json` and the existing specs in `lua/plugins/`. Never suggest or add a plugin that duplicates functionality already provided by an installed one. Prefer extending or overriding existing plugin config over adding a new dependency.

## Key Files Not to Modify Directly

- `lazyvim.json` — managed by LazyVim's internal version/news tracking; do not edit by hand
- `lazy-lock.json` — managed by `:Lazy`; reflects current installed state
