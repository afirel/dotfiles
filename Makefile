# tasks
.PHONY : uninstall

install:
	ln -fs ${PWD}/gitconfig ~/.gitconfig
	ln -fs ${PWD}/tmux.conf ~/.tmux.conf
	ln -fs ${PWD}/zshrc ~/.zshrc
	mkdir -p ~/.ssh
	ln -fs ${PWD}/ssh/rc ~/.ssh/rc

uninstall:
	@echo "Cleaning up dotfiles"
	rm -f ~/.gitconfig
	rm -f ~/.tmux.conf
	rm -f ~/.zshrc
	rm -f ~/.ssh/rc

