# Dot Files

Settings and dot files I use for development.

## Installation:

Clone this repo with the `--recurse-submodules`.

## Vim

I use the vim 8 package manager to load packages.

## Usage

The easiest way to use this repo is to clone it locally and then set up
symlinks.

Examples:

```bash
# Link .vimrc to vimrc in dot-files
ln -s $PATH_TO_REPO/vim/vimrc ~/.vimrc

# Link vim/plugins to start up plugins
ln -s $PATH_TO_REPO/vim/plugins/* ~/.vim/pack/dot-files/start
```

### Plugins
Here are the plugins I use:

#### Visual

- [Vim-colors-solarized](https://github.com/altercation/vim-colors-solarized)

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
