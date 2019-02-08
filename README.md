# dotfiles
My private configuration 

## Commands
### Set up new machine
Clone this repository
```sh
cd ~
git clone https://github.com/szk2s/dotfiles
```
Make symlink into home directory
```sh
export DOT_DIRECTORY=${HOME}/dotfiles
zsh ${DOT_DIRECTORY}/symlink.sh
```
Brew bundle install
```
brew bundle --file=${DOT_DIRECTORY}/Brewfile
```

### Update Brewfile
```sh
cd ~
brew bundle dump
zsh ${DOT_DIRECTORY}/merge_brewfile.sh
```