# My Personal Dotfiles

![config-image](./assets/config.png)

This repo is just my most important dotfiles in one single place.
I often change my config. Most of the time it's just 
my colorscheme or my wallpaper.

If you want to copy my dotfiles the best way would be
to fork this repo instead of cloning them.

I use stow to manage my dotfiles. Take a look at the setup
for more information.

## Setup

1. Fork the repo and clone your on fork.

```bash
$ git clone git@github.com:Your-own-fork
```

2. Run stow and then the respective directory

Stow will handle the location by itself as defined.
Most configs go into /home/user/.config

```bash
stow neovim
```

The above command will copy the intire neovim config
into /home/user/.config/
The full path would be /home/user/config/nvim
