# dotfiles
My personal customization files for WSL2 and/or Linux environment.

### Linux Installation

1. Install packages and dependencies, and copy config files :
```
git clone https://github.com/AlexandreCln/dotfiles.git
.dotfiles/install
```

2. Setup Neovim

    - Install the last release of neovim from [source](https://github.com/neovim/neovim/releases/) 

    - Update PATH for zsh (`.config/zsh/zsh-exports` ) and sudo (`sudo visudo`)

    - Get a [nerdfont](https://github.com/ryanoasis/nerd-fonts)

    - Open `nvim` and wait for the plugins to be installed 
    
    - Executes `:checkhealth` to fix potential issues
    
    - Install needed LSP using `:LspInstallInfo`
