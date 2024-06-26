# My 💤 LazyVim Configuration

I am using [LazyVim](https://github.com/LazyVim/LazyVim) with a little customization.

Be sure to backup your current NeoVim configuration before using this one:

```bash
mv ~/.config/nvim{,.bak}
mv ~/.local/share/nvim{,.bak}
mv ~/.local/state/nvim{,.bak}
mv ~/.cache/nvim{,.bak}
```

## Install

- You will want to have already set up any specific languages you want to have installed
- You need to have at least installed the xcode command line tools in addition to node v16+ and npm v10+
- In addition to programming languages, there are several packages you should install first:

```bash
brew install neovim ripgrep lazygit fd wget
```

- The following will clone the repo into ~/.config/nvim

```bash
git clone https://github.com/BrianProcopio/LazyVim.git ~/.config/nvim
```

- Once installed `:Copilot auth` to authorize the GitHub Copilot plugin.
- Be sure to run `:checkhealth` and resolve any errors

## Additional Plugins

- [ChatGPT](https://github.com/jackMort/ChatGPT.nvim) assumes you are using 1Password to store your OpenAI API Key
  - Disable this plugin if you don't want to use ChatGPT by deleting the custom plugin and running `:Lazy`
  - `<leader>pc` will open a chatGPT prompt inside Neovim to interact with
- [telescope-file-browser](https://github.com/nvim-telescope/telescope-file-browser.nvim) is an extension for telescope to browse your file system in Neovim
  - `<leader>sB` will open telescope as a file browser
  - `<C-h>` to toggle hidden files inside telescope
- [neovim-session-manager](https://github.com/shatur/neovim-session-manager.nvim) to manage project level Neovim sessions automatically
  - `<leader>ml` to list saved sessions after opening
- [undotree](https://github.com/jiaoshijie/undotree) to visualize the current files history tree
  - `<leader>gu` to open the undo tree

<!-- markdownlint-configure-file { "MD013": false } -->
