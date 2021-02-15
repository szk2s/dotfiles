# dotfiles
My private configuration 

# Overview
- `brew install fish`
- `sudo vi /etc/shells` (`/usr/local/bin/fish` を追加)
- `chsh -s /usr/local/bin/fish`
- fisherのインストール
- `fisher install <plugin name>`
```
b4b4r07/enhancd
fishpkg/fish-prompt-metro
jethrokuan/fzf
```
- config.fishにalias貼る
- homebrewのPathも通さないといけないことがある
```
alias g='git'
alias gco='git checkout'
alias gp='git push'
alias gl='git pull'
alias y='yarn'
alias yw='yarn workspace'
alias v='vim'
alias w='webstorm'
alias c='code'
alias ofd='open .'
alias fishconfig='vim ~/.config/fish/config.fish'
set PATH $HOME/.nodebrew/current/bin $PATH
set PATH $PATH /usr/local/opt/llvm/bin/
```

## Before installation
### Make sure your licenses are deactivated
- iLok licenses
- Siblius
- Microsoft Office

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

CAUTION: To complete the installation of Cask adobe-creative-cloud, you must also
run the installer in `/usr/local/Caskroom/adobe-creative-cloud/latest`


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
```
Make symlink again (oh-my-zsh overwrites `.zshrc` in the installation process)
```
export DOT_DIRECTORY=${HOME}/dotfiles
zsh ${DOT_DIRECTORY}/symlink.sh
```  
***Now, Please reload your iterm window***  

Then,
```
# Install plugins
zplug install
```

Set up **iTerm** 
1. Download [Meslo LG M Regular for Powerline.ttf](https://github.com/powerline/fonts/blob/master/Meslo%20Slashed/Meslo%20LG%20M%20Regular%20for%20Powerline.ttf)
1. Change your font to **Meslo (14pt)** in iTerm > Preferences > Profiles > Text 
1. Change your color preset to **Tango Dark** in iTerm > Preference > Profiles > Colors > Color Presets


PyCharm setting file is [here](https://drive.google.com/drive/folders/1-3hWI5r6sizRvmB3BePEQJfc9EyuOhZW?usp=sharing)  

### Update Brewfile
```sh
cd ~
rm Brewfile
brew bundle dump
zsh ${DOT_DIRECTORY}/merge_brewfile.sh
```
