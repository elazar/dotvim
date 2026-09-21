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

This config lives outside the default `~/.config/nvim` location, at `~/.config/vim`, so it doesn't collide with any other Neovim config you may already have. Clone it there:

```sh
git clone git@github.com:elazar/dotvim.git ~/.config/vim
```

Neovim needs to be told to use this directory instead of the default one. Set the `NVIM_APPNAME` environment variable to `vim` whenever you launch it:

```sh
NVIM_APPNAME=vim nvim
```

To make this permanent, add one of the following to your shell profile (`~/.zshrc`, `~/.bashrc`, etc.):

```sh
# Make `nvim` always use this config
export NVIM_APPNAME=vim

# Or, keep the default config untouched and only use this one via a separate alias
alias vimrc='NVIM_APPNAME=vim nvim'
```

`NVIM_APPNAME=vim` also redirects Neovim's data, state, and cache directories to `~/.local/share/vim`, `~/.local/state/vim`, and `~/.cache/vim` respectively, so this config's plugins and swap/undo files stay fully isolated from any other Neovim setup.

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
