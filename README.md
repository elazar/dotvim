# dotvim

Personal Neovim configuration, written in Lua and managed with
[lazy.nvim](https://lazy.folke.io/).

## Requirements

- [Neovim](https://neovim.io/) 0.12 or later
- `git`, `tar`, and `curl` in your `PATH`
- A C compiler in your `PATH` (e.g. Xcode Command Line Tools on macOS, `build-essential` on Debian/Ubuntu)
- The [`tree-sitter` CLI](https://github.com/tree-sitter/tree-sitter/blob/master/crates/cli/README.md) (0.26.1+), installed via a package manager — **not** `npm`

On macOS with [Homebrew](https://brew.sh/):

```sh
brew install neovim tree-sitter-cli
```

(Xcode Command Line Tools, which provide a C compiler, `git`, `tar`, and `curl`, can be installed with `xcode-select --install` if you don't already have them.)

## Installation

Clone this config to Neovim's default config location:

```sh
git clone git@github.com:elazar/dotvim.git ~/.config/nvim
```

Neovim will pick it up automatically — no environment variables or aliases needed.

## First launch

On first launch, [lazy.nvim](https://lazy.folke.io/) bootstraps itself and installs every plugin pinned in `lazy-lock.json` automatically — no extra setup commands needed. Treesitter parsers are installed on demand, the first time you open a file of a given filetype.

Useful commands once it's running:

- `:Lazy` — view plugin status, updates, and logs
- `:Mason` — view/install LSP servers, linters, and formatters
- `:checkhealth` — verify everything (including the C compiler and `tree-sitter` CLI) is set up correctly

## Structure

- `init.lua` — entry point; requires `lua/config`
- `lua/config/core.lua` — editor options (colorscheme, indentation, line numbers, etc.)
- `lua/config/mappings.lua` — key mappings
- `lua/config/plugins.lua` — bootstraps lazy.nvim and loads `lua/plugins/`
- `lua/plugins/*.lua` — one file per plugin spec
