
brew:
	which brew || /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

install: 
	$(MAKE) git_setup
	$(MAKE) ghq_peco
	$(MAKE) rectangle

git_setup:
	git config --global alias.br branch
	git config --global alias.st status
	git config --global alias.co checkout

# mac用のウィンドウ操作用のアプリ
rectangle:
	brew install --cask rectangle

go:
	brew install go

# ユーザ入力が必要
gihub_cli_setup:
	brew install gh
	gh auth login

ghq_peco: go
	brew install ghq
	git config --global ghq.root '~/src'
	brew install peco

