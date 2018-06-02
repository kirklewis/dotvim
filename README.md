# **dotvim**

My .vim and [vimrc](https://github.com/kirklewis/dotvim/blob/master/vimrc) setup.

## **Installation**

```
cd ~
git clone --recursive https://github.com/kirklewis/dotvim.git ~/.vim
```

Add a symbolic link to .vimrc so Vim can find it.
```
ln -s ~/.vim/vimrc ~/.vimrc
```

## **vimrc structure**

The [vimrc](https://github.com/kirklewis/dotvim/blob/master/vimrc) file is structured as follows:

- Tim Pope's [Pathogen](https://github.com/tpope/vim-pathogen) at the top to install plugins.

- Default color scheme - [Solarized](https://github.com/altercation/vim-colors-solarized)

- Settings and mappings (sourced) from [settings.vim](https://github.com/kirklewis/dotvim/blob/master/settings.vim) and [mappings.vim](https://github.com/kirklewis/dotvim/blob/master/mappings.vim) respectively. Keeps the [vimrc](https://github.com/kirklewis/dotvim/blob/master/vimrc) file shorter.

- Auto commands at the bottom. File types are sourced from [filetypes.vim](https://github.com/kirklewis/dotvim/blob/master/filetypes.vim)


## **Settings**

Just a few of many:

- No swap files `*.swp` or backup files generated.

- Visual block kept after indentation [mappings.vim](https://github.com/kirklewis/dotvim/blob/master/mappings.vim).

- NERDTree shows hidden folders/files except `.git` and `.DS_Store`.

- Trailing spaces highlighted by default. `:StripWhiteSpace`.

- GitGutter enabled by default and Signify (for SVN, Mercurial) is not. Use `:SignifyToggle` and `:GitGutterToggle` to enable or disable either.


## **Plugins**

[Auto-Pairs](https://github.com/jiangmiao/auto-pairs.git)
: Insert or delete brackets, parens, quotes in pair.

[Dockerfile](https://github.com/ekalinin/Dockerfile.vim.gitbundle/Dockerfile)
: Vim syntax file for Docker's Dockerfile.

[Dracula](https://github.com/dracula/vim.git)
: 😱 Dracula colour scheme for vim.

[IndentLine](https://github.com/Yggdroot/indentLine.git)
: Displaying thin vertical lines at each indentation level for code indented with spaces.

[NERDTree](https://github.com/scrooloose/nerdtree.git)
: Explore your filesystem and to open files and directories.

[Solarized](https://github.com/altercation/vim-colors-solarized.git)
: Solarized colour scheme for vim.

[TComment](https://github.com/tomtom/tcomment_vim.git)
: Inline and block commenting for various programming languages.

[TypeScript-vim](https://github.com/leafgarland/typescript-vim.git)
: Syntax file and other settings for [TypeScript](http://typescriptlang.org)

[vim-airline](https://github.com/vim-airline/vim-airline)
: Useful status line for vim.

[vim-better-whitespace](https://github.com/ntpeters/vim-better-whitespace.git)
: Highlight trailing white spaces and tabs.

[vim-devicons](https://github.com/ryanoasis/vim-devicons)
: File type glyphs (icons) useful with NERDTree and vim-airline.

[vim-gitgutter](https://github.com/airblade/vim-gitgutter.git)
: Shows a git diff in the 'gutter' (sign column).

[vim-go](https://github.com/fatih/vim-go)
: Go development plugin for Vim

[vim-json](https://github.com/elzr/vim-json.git)
: Distinct highlighting for JSON.

[vim-signify](https://github.com/mhinz/vim-signify.git)
: Highlights modification in files under VCS like Git, SVN, etc.

[vim-surround](https://github.com/tpope/vim-surround.git)
: Surround text with characters, like quotes, HTML tags, etc.


**Update bundles**

```
cd ~/.vim
git submodule foreach git pull origin master
```

[MIT License](https://github.com/kirklewis/dotvim/blob/master/LICENSE)
