all:: git ranger tmux vim zsh

clean::
	rm ${HOME}/.gitconfig ${HOME}/.gitignore
	rm ${HOME}/.config/ranger/rc.conf
	rm ${HOME}/.tmux.conf ${HOME}/.ntmux.conf ${HOME}/.rtmux.conf
	rm -r ${HOME}/.vimrc ${HOME}/.vim
	rm -r ${HOME}/.zshrc ${HOME}/.zsh

git::
	ln -s ${PWD}/git/gitconfig ${HOME}/.gitconfig
	ln -s ${PWD}/git/gitignore ${HOME}/.gitignore

ranger::
	ln -s ${PWD}/ranger/rc.conf ${HOME}/.config/ranger/rc.conf

tmux::
	ln -fs ${PWD}/tmux/tmux.conf ${HOME}/.tmux.conf
	ln -fs ${PWD}/tmux/ntmux.conf ${HOME}/.ntmux.conf
	ln -fs ${PWD}/tmux/rtmux.conf ${HOME}/.rtmux.conf

vim::
	ln -fs ${PWD}/vim ${HOME}/.vim
	ln -fs ${PWD}/vim/vimrc ${HOME}/.vimrc

zsh::
	ln -fs ${PWD}/zsh ${HOME}/.zsh
	ln -fs ${PWD}/zsh/zshrc ${HOME}/.zshrc
