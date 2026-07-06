all:: git ranger vim zsh

clean::
	rm -f ${HOME}/.git{config,ignore}
	rm -f ${HOME}/.ideavimrc
	rm -rf ${HOME}/.config/ranger
	rm -rf ${HOME}/.vim ${HOME}/.vimrc
	rm -f ${HOME}/.zprofile
	rm -rf ${HOME}/.zsh ${HOME}/.zshrc

git::
	ln -sf ${PWD}/git/gitconfig ${HOME}/.gitconfig
	ln -sf ${PWD}/git/gitignore ${HOME}/.gitignore

ideavim::
	ln -sf ${PWD}/vim/ideavimrc ${HOME}/.ideavimrc

ranger::
	mkdir -p ${HOME}/.config/ranger/colorschemes
	touch ${HOME}/.config/ranger/colorschemes/__init__.py
	ln -sf ${PWD}/ranger/atlas.py ${HOME}/.config/ranger/colorschemes/atlas.py
	ln -sf ${PWD}/ranger/scope.sh ${HOME}/.config/ranger/scope.sh
	ln -sf ${PWD}/ranger/rc.conf ${HOME}/.config/ranger/rc.conf

vim::
	ln -sf ${PWD}/vim ${HOME}/.vim
	ln -sf ${PWD}/vim/vimrc ${HOME}/.vimrc

zsh::
	ln -sf ${PWD}/zsh ${HOME}/.zsh
	ln -sf ${PWD}/zsh/zprofile ${HOME}/.zprofile
	ln -sf ${PWD}/zsh/zshrc ${HOME}/.zshrc
