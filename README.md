# dotfiles
My private configuration 

## Commands
### Set up a new machine

Install [Homebrew](https://brew.sh)
```sh
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```

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
Build **zsh** environment 
```sh
# Change your default shell
chsh -s zsh

# Install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# Install Powerlevel9k, theme for oh-my-zsh
git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k

# Install zplug
curl -sL --proto-redir -all,https https://raw.githubusercontent.com/zplug/installer/master/installer.zsh | zsh

# Install plugins
zplug install
```

Set up **iTerm** 
1. Download [Meslo LG M Regular for Powerline.ttf](https://github.com/powerline/fonts/blob/master/Meslo%20Slashed/Meslo%20LG%20M%20Regular%20for%20Powerline.ttf)
1. Change your font to **Meslo** in iTerm > Preferences > Profiles > Text 
1. Change your color preset to **Tango Dark** in iTerm > Preference > Profiles > Colors > Color Presets

### Update Brewfile
```sh
cd ~
brew bundle dump
zsh ${DOT_DIRECTORY}/merge_brewfile.sh
```
