# Dot Files

Settings and dot files I use for development.

## Installation:

Clone this repo with the `--recurse-submodules`.

## Vim

I use the vim 8 package manager to load packages.

### Set up

After cloning this repo, set up a symlink for the `vim/` and `vimrc`.

- `ln -sf <path to>/dot-files/vim ~/.vim`
- install [elixir-ls](https://github.com/elixir-lsp/elixir-ls)
- Update vimrc@L153 to point to elixir-ls installation.
- `ln -sf <path-to>/dot-files/vim/vimrc ~/.vimrc`


### Plugins
Here are the plugins I use:

#### Visual

- [Solarized8](https://github.com/lifepillar/vim-solarized8.git)

#### Navigation

- [NERDTree](https://github.com/preservim/nerdtree.git)
- [CtrlP](https://github.com/kien/ctrlp.vim.git)
- [Vim-Vinegar](https://github.com/tpope/vim-vinegar.git)
- [Lightline](https://github.com/itchyny/lightline.vim)

#### Niceties

- [Vim-Endwise](https://github.com/tpope/vim-endwise)
- [Vim-Surround](https://tpope.io/vim/surround.git)
- [Vim-Repeat](https://tpope.io/vim/repeat.git)
- [Vim-Abolish](https://github.com/tpope/vim-abolish.git)

#### Git

- [Vim-fugitive](https://tpope.io/vim/fugitive.git)

#### Database

- [Vim-Dadbod](https://github.com/tpope/vim-dadbod)

#### Testing

- [Vim-Test](https://github.com/vim-test/vim-test)

#### Language Plugins

- [ALE](https://github.com/dense-analysis/ale.git)
- [Elixir](https://github.com/elixir-editors/vim-elixir.git)
- [Markdown](https://github.com/plasticboy/vim-markdown.git)
- [Markdown Previews](https://github.com/JamshedVesuna/vim-markdown-preview.git)
