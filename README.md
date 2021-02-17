# dotfiles
My private configuration 

## Before installation
### Make sure your licenses are deactivated
- iLok licenses
- Siblius
- Microsoft Office
- 
## Set up a new machine

Install [Homebrew](https://brew.sh)

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

Set up **iTerm** 
1. https://github.com/powerline/fonts
1. Change your font to **Meslo (14pt)** in iTerm > Preferences > Profiles > Text 


PyCharm setting file is [here](https://drive.google.com/drive/folders/1-3hWI5r6sizRvmB3BePEQJfc9EyuOhZW?usp=sharing)  
## Set up fish
- `brew install fish`
- `sudo vi /etc/shells` (`/usr/local/bin/fish` を追加)
- `chsh -s /usr/local/bin/fish`
- fisherのインストール
- `fisher install <plugin name>`
```
jorgebucaran/fisher
oh-my-fish/theme-bobthefish
PatrickF1/fzf.fish
b4b4r07/enhancd
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
## Update Brewfile
```sh
cd ~
rm Brewfile
brew bundle dump
zsh ${DOT_DIRECTORY}/merge_brewfile.sh
```
