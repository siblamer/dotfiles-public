![cover](./images/cover.png)
 
# Siblamer's dotfiles 

**Warning**: Don’t blindly use my settings unless you know what that entails. Use at your own risk!

### My Shortcuts that helps me:

- `<space>w` : Write file 
- `<space>e` : Close file 
- `<space>f` : Telescope file_finder with my setup
- `<space>z` : Telescope buffer finder
- `<space>gs` : Telescope git_status
- `<space>gc` : Telescope git_commits
- `<space>gb`  : Telescope git_branches
- `<space><enter>` :  Source init.vim file
- `<C-p>` Markdown Previewer in browser
- `<C-p>r` Execute Python file

### Installing Config of Nvim

Dowloading repository: `git clone https://gitlab.com/siblamer/dotfiles-public/ `

Open directory:  `cd dotfiles-public/`

Copying Neovim config: `cp -r .config/nvim/ ~/.config/`

Installing Vim-Plug: `curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim`

Install neovim with appimage: 
```
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim.appimage
chmod u+x nvim.appimage
mv nvim.appimage /usr/bin/nvim
```

After that you need to run nvim and execute comamnd `:PlugInstall`

### Installing ZSH config

Dowloading repository: `git clone https://gitlab.com/siblamer/dotfiles-public/`

Installing ZSH: `sh -c "$(wget https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"`

Installing ZSH PowerLevel theme: `git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k`

Cloning my PowerLevel theme configuration: `cp .config/zsh/.p10k.zsh ~/ && cp .config/zsh/.zshrc ~/`

Change shell: `chsh -s $(which zsh)`

## Contents
- Vim (NeoVim) config:
  - Plugins are managed with [vim-plug](https://github.com/junegunn/vim-plug)
- ZSH contents:
  - Framework for managing your Zsh configuration [Install ZSH](https://ohmyz.sh/#install)   
  - ZSH Theme [Install PoweLevel](https://github.com/romkatv/powerlevel10k.git)

## Neovim Plugins
- `nvim-telescope/telescope.nvim` - Very powerfull plugins. 
- `morhetz/gruvbox` - Theme for neovim. My favourite at now.
- `neoclide/coc.nvim` - True snippet and additional text editing support.
- `kyazdani42/nvim-web-devicons` - Very usefull icons
- `scrooloose/nerdtree` - FileBrowser

## Vim setup

Requires Neovim (>= 0.5)

- [vim-plug](https://github.com/junegunn/vim-plug) - A minimalist Vim plugin manager
- [nvim-cmp](https://github.com/hrsh7th/nvim-cmp) - A completion plugin for neovim coded in Lua

Requires NPM (>= 14)

```
curl -sL https://deb.nodesource.com/setup_14.x | sudo bash -
apt install npm
```

## About me

- [Website: siblamer.ru](https://siblamer.ru)
- [Blog](https://blog.siblamer.ru/)
- [Email admin@siblamer.ru](mailto:admin@siblamer.ru)
