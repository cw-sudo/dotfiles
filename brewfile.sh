#!/bin/sh

if type brew > /dev/null 2>&1; then
  echo 'OK! already installed brew.'
else
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
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

# .dmg apps

brew install blackhole
brew install clipy
brew install deltawalker
brew install docker
brew install dropbox
brew install firefox
brew install forticlient
brew install google-backup-and-sync
brew install google-chrome
brew install google-cloud-sdk
brew install google-japanese-ime
brew install karabiner-elements
brew install kindle
brew install obs
brew install postman
brew install sourcetree
brew install spectacle
# brew install virtualbox
# brew install vagrant
brew install visual-studio-code

# appstore app
mas install 539883307  # line
mas install 409183694  # Keynote
mas install 409201541  # Pages
mas install 409203825  # Numbers
mas install 425955336  # skitch


# Remove outdated versions
brew cleanup
