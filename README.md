# AstroNvim Configuration

My personal [AstroNvim](https://github.com/AstroNvim/AstroNvim) v6+ configuration.
Public so it can be cloned on any machine and reproduced exactly.

## What's included

- **AstroNvim v6** with `mapleader = " "` and `maplocalleader = ","`
- **AstroCommunity packs**: Lua, TypeScript/JavaScript, Svelte, Tailwind CSS, Go and Godot/GDScript
- **SuperMaven** AI completion (`<C-l>` accept, `<C-j>` accept word, `<C-]>` clear)
- **none-ls** with `gdformat` / `gdlint` for Godot (used only when available on `PATH`)
- **`lazy-lock.json`** committed so plugin versions are pinned and reproducible
- Nerd Font icons disabled by default (no icon font required)

## Requirements

- **Neovim >= 0.10** (tested on 0.11.6)
- `git`, `ripgrep`, `fd`, `unzip`, `curl`
- Optional but recommended: `lazygit`, a C compiler for Treesitter parsers, Node.js (TS/JS/Svelte/Tailwind), Go (Go tooling)
- Optional: `gdtoolkit` (`pip install gdtoolkit`) for Godot formatting/linting

## Installation on a new machine

### 1. Back up any existing config

```shell
mv ~/.config/nvim ~/.config/nvim.bak 2>/dev/null
mv ~/.local/share/nvim ~/.local/share/nvim.bak 2>/dev/null
mv ~/.local/state/nvim ~/.local/state/nvim.bak 2>/dev/null
mv ~/.cache/nvim ~/.cache/nvim.bak 2>/dev/null
```

### 2. Clone this repository

```shell
git clone https://github.com/TheAPIguys/astronvim-config.git ~/.config/nvim
```

### 3. Start Neovim

```shell
nvim
```

Lazy.nvim bootstraps itself and installs all plugins at the versions pinned in
`lazy-lock.json`. Then install any missing LSPs/formatters/debuggers from
Mason with `:Mason` (or `:LspInstall <server>`). Treesitter parsers install
automatically when a filetype is opened.

### Updating

```shell
cd ~/.config/nvim
git pull
nvim --headless "+Lazy! sync" +qa
```

Commit the updated `lazy-lock.json` afterwards to keep machines in sync.

## Layout

```text
init.lua              # Lazy.nvim bootstrap
lua/lazy_setup.lua    # AstroNvim setup and options
lua/community.lua     # AstroCommunity language packs
lua/polish.lua        # Runs last (disabled by default)
lua/plugins/          # Plugin overrides and additions
```

## Notes

- To enable Nerd Font icons, install a Nerd Font and set `icons_enabled = true`
  in `lua/lazy_setup.lua`.
- `lua/plugins/user.lua`, `lua/plugins/astrocore.lua`, `lua/plugins/astrolsp.lua`,
  `lua/plugins/astroui.lua`, `lua/plugins/mason.lua`, `lua/plugins/treesitter.lua`
  and `lua/polish.lua` are template examples disabled with `if true then return {} end`.
  Enable one by removing that first line before editing it.

Based on the [AstroNvim template](https://github.com/AstroNvim/template).
