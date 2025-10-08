# **dotvim**

My .vim and [vimrc](https://github.com/kirklewis/dotvim/blob/master/vimrc) configuration.

## **Installation**

```bash
cd ~
git clone https://github.com/kirklewis/dotvim.git ~/.vim
```

Add a symbolic link to `.vimrc` so Vim can find it.

```bash
ln -s ~/.vim/vimrc ~/.vimrc
```

See [Configuration](https://github.com/kirklewis/dotvim/blob/master/README.md#Configuration) full config.

## **vimrc structure**

The [vimrc](https://github.com/kirklewis/dotvim/blob/master/vimrc) is split into logical parts for clarity and maintainability.

```bash
├── autoload/
│   └── plug.vim        # vim-plug bootstrap script
├── plugged/            # plugins path for vim-plug
├── coc-settings.json   # Coc.nvim configuration (LSP, formatters, etc.)
├── commands.vim        # Custom :commands (MakeFormat, MakeTest, etc.)
├── filetypes.vim       # Filetype-specific settings & autocmds
├── mappings.vim        # Key mappings (leader keys, plugin shortcuts)
├── settings.vim        # General Vim settings (UI, editing behaviour)
├── themes.vim          # Amazing themes can be configured here
└── vimrc               # Main entry point, sources the above modules
```

Default color scheme - [Catppuccin](https://github.com/catppuccin/nvim)

## **Settings**

Just a few of many:

- No swap files `*.swp` or backup files generated.
- Visual block kept after indentation [mappings.vim](https://github.com/kirklewis/dotvim/blob/master/mappings.vim).
- `NERDTree` shows hidden folders/files except `.git` and `.DS_Store`.
- Trailing spaces highlighted by default. `:StripWhiteSpace`.
- Support for Python

See [vimrc](./vimrc#L4)


## Configuration

<details>
<summary>Click to expand Python venv + Conquerer or Completion configuration instructions.</summary>

### Create a dedicated Python venv for Vim tooling

```bash
python3 -m venv ~/.venvs/vim
source ~/.venvs/vim/bin/activate
pip install --upgrade pip
pip install black ruff mypy
```
This config expects Vim tooling in its own virtual environment.

### Environment variables for Coc

Add this to your shell startup file (`.bashrc`, `.zshrc`, etc.).

```bash
export VIM_VENV_PATH="$HOME/.venvs/vim"
```

In [Conqueror of Completion settings](./coc-settings.json), reference tools like this:

```bash
"python.pythonPath": "${env:VIM_VENV_PATH}/bin/python",
"ruff.nativeBinaryPath": "${env:VIM_VENV_PATH}/bin/ruff"
```

### First‑time plugin installation

Run `:PlugInstall` and Restart Vim
</details>

[MIT License](https://github.com/kirklewis/dotvim/blob/master/LICENSE)
