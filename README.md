# Vim-Config (only for vim not neovim)
* This is the vim config file. If you're a new vim user then it will help you to work in vim better than before.


## Demo
![Demo](./images/demo.jpg)

## Pre-requisites
* [Vim](#vim)
* [Git Bash](#git-bash)


### First Download and Install Vim
```
[Vim](https://www.vim.org/download.php)
```

### Run the Below Command
* Unix
```
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

* Windows PowerShell
```
iwr -useb https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim |`
    ni $HOME/vimfiles/autoload/plug.vim -Force
```

## Download and copy the .vimrc into home directory


### Run the below command
```
$ mkdir ~/.vim/plugged
$ vim ~/.vimrc

All Plugs will be installed by itself
```

### If you add new plugin
```
Run The Given Vim Command
:PlugInstall
```

### Update the plugins
```
Run The Given Vim Command
:PlugUpdate
```
