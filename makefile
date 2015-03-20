all:: git ranger tmux vim zsh

clean::
	rm -f ${HOME}/.gitconfig ${HOME}/.gitignore
	rm -f ${HOME}/.config/ranger/rc.conf
	rm -f ${HOME}/.tmux.conf ${HOME}/.ntmux.conf ${HOME}/.rtmux.conf
	rm -rf ${HOME}/.vimrc ${HOME}/.vim
	rm -rf ${HOME}/.zshrc ${HOME}/.zsh

git::
	ln -sf ${PWD}/git/gitconfig ${HOME}/.gitconfig
	ln -sf ${PWD}/git/gitignore ${HOME}/.gitignore

ranger::
	mkdir -p ${HOME}/.config/ranger/colorschemes
	touch ${HOME}/.config/ranger/colorschemes/__init__.py
	ln -sf ${PWD}/ranger/atlas.py ${HOME}/.config/ranger/colorschemes/atlas.py
	ln -sf ${PWD}/ranger/scope.sh ${HOME}/.config/ranger/scope.sh
	ln -sf ${PWD}/ranger/rc.conf ${HOME}/.config/ranger/rc.conf

tmux::
	ln -sf ${PWD}/tmux/tmux.conf ${HOME}/.tmux.conf
	ln -sf ${PWD}/tmux/ntmux.conf ${HOME}/.ntmux.conf
	ln -sf ${PWD}/tmux/rtmux.conf ${HOME}/.rtmux.conf

vim::
	ln -sf ${PWD}/vim ${HOME}/.vim
	ln -sf ${PWD}/vim/vimrc ${HOME}/.vimrc

zsh::
	ln -sf ${PWD}/zsh ${HOME}/.zsh
	ln -sf ${PWD}/zsh/zshrc ${HOME}/.zshrc
