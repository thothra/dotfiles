Clone into your local `~/src` or where you do your work from.

```bash
git clone git@github.com:thothra/dotfiles.git ~/src/dotfiles
```

Create symlinks for the programs you want to use configs for.

```bash
ln -s ~/src/dotfiles/nvim ~/.config/nvim
```

For `tmux` you just link the config file to your home directory `~/.tmux/conf`
Once in tmux `prefix`+`I`
