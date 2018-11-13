# dotvim

I use this configuration with [Neovim](https://neovim.io).

## Installation

Clone this repository locally.

```sh
[[ -d ~/.config ]] || mkdir ~/.config
[[ -d ~/.config/nvim ]] || git clone git@github.com:elazar/dotvim.git ~/.config/nvim
```

[Install vim-plug](https://github.com/junegunn/vim-plug#installation).

```sh
[[ -f ~/.config/nvim/autoload/plug.vim ]] || curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

Open Neovim and install plugins.

```
:PlugInstall
```
