#!/bin/sh

if type brew > /dev/null 2>&1; then
  echo 'OK! already installed brew.'
else
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
  echo 'brew のPATH 設定を確認してください'
  exit 0
fi


# Make sure using latest Homebrew
echo 'start brew update...'
brew update

# Update already-installed formula
echo 'start brew upgrade...'
brew upgrade

# Formula
brew install ag
brew install aws-sam-cli
brew install awscli
brew install git
brew install jq
brew install mas
brew install mysql
brew install nvm
brew install zplug

if type zplug > /dev/null 2>&1; then
  echo 'OK! already installed zplug.'
else
  brew install zplug
  echo 'zplug の追加設定を確認してください'
  exit 0
fi

# .dmg apps

brew install clipy
brew install deltawalker
brew install firefox
brew install google-chrome
brew install google-cloud-sdk
brew install karabiner-elements
brew install kindle
brew install slack
brew install spectacle
brew install visual-studio-code

# appstore app
mas install 539883307  # line
mas install 409183694  # Keynote
mas install 409201541  # Pages
mas install 409203825  # Numbers
mas install 425955336  # skitch


# Remove outdated versions
brew cleanup
