all:: git inputrc ranger tmux vim zsh

clean::
	rm -f ${HOME}/.gdbinit
	rm -f ${HOME}/.git{config,ignore}
	rm -f ${HOME}/.inputrc
	rm -f ${HOME}/.muttrc
	rm -rf ${HOME}/.config/ranger
	rm -rf ${HOME}/.terminfo
	rm -f ${HOME}/.{,n,r}tmux.conf
	rm -rf ${HOME}/.vim ${HOME}/.vimrc ${HOME}/.ideavimrc
	rm -rf ${HOME}/.zsh ${HOME}/.zshrc

gdb::
	ln -sf ${PWD}/gdb/gdbinit ${HOME}/.gdbinit

git::
	ln -sf ${PWD}/git/gitconfig ${HOME}/.gitconfig
	ln -sf ${PWD}/git/gitignore ${HOME}/.gitignore

inputrc::
	ln -sf ${PWD}/bash/inputrc ${HOME}/.inputrc

mutt::
	ln -sf ${PWD}/mutt/muttrc ${HOME}/.muttrc

ranger::
	mkdir -p ${HOME}/.config/ranger/colorschemes
	touch ${HOME}/.config/ranger/colorschemes/__init__.py
	ln -sf ${PWD}/ranger/atlas.py ${HOME}/.config/ranger/colorschemes/atlas.py
	ln -sf ${PWD}/ranger/scope.sh ${HOME}/.config/ranger/scope.sh
	ln -sf ${PWD}/ranger/rc.conf ${HOME}/.config/ranger/rc.conf

terminfo::
	tic ${PWD}/xterm-256color.terminfo
	tic -x ${PWD}/tmux-256color.terminfo

tmux::
	ln -sf ${PWD}/tmux/tmux.conf ${HOME}/.tmux.conf
	ln -sf ${PWD}/tmux/ntmux.conf ${HOME}/.ntmux.conf
	ln -sf ${PWD}/tmux/rtmux.conf ${HOME}/.rtmux.conf

vim::
	ln -sf ${PWD}/vim ${HOME}/.vim
	ln -sf ${PWD}/vim/vimrc ${HOME}/.vimrc

ideavim::
	ln -sf ${PWD}/vim/ideavimrc ${HOME}/.ideavimrc

zsh::
	ln -sf ${PWD}/zsh ${HOME}/.zsh
	ln -sf ${PWD}/zsh/zshrc ${HOME}/.zshrc
