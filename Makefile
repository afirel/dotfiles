# tasks
.PHONY : uninstall

install:
	ln -fs ${PWD}/gitconfig ~/.gitconfig
	ln -fs ${PWD}/gitattributes ~/.gitattributes
	ln -fs ${PWD}/tmux.conf ~/.tmux.conf
	ln -fs ${PWD}/zshrc ~/.zshrc
	ln -fs ${PWD}/vimrc.after ~/.vimrc.after
	mkdir -p ~/.ssh
	ln -fs ${PWD}/ssh/rc ~/.ssh/rc
	mkdir -p ~/.config/i3
	ln -fs ${PWD}/i3 ~/.config/i3/config

uninstall:
	@echo "Cleaning up dotfiles"
	rm -f ~/.gitconfig
	rm -f ~/.tmux.conf
	rm -f ~/.zshrc
	rm -f ~/.ssh/rc
	rm -f ~/.config/i3/config

