#echo "Loading .bash_aliases"

#=================================================================
set bell-style none
export TERM='xterm-256color'

#echo ">>>>>>>>>>>>>>>>>> export <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<"
#export TERM='xterm-256color'
export EDITOR=vim

#echo ">>>>>>>>>>>>>>>>>> Load .bashrc <<<<<<<<<<<<<<<<<<<<<<<<<<<"
alias sc='source'
alias check_command='( cat ~/.bash_aliases ; echo ; cat ~/.bash_local ) | grep '
alias mydu='du -h --max-depth=1 '
alias mymake='make VERBOSE=1 -j20'
alias mycmake='cmake -DCMAKE_INSTALL_PREFIX=$HOME/.myroot '
alias myconfig='./configure --prefix=$HOME/.myroot'
alias python='python -W ignore'

alias random_choice='python -c "import random, sys; print random.choice(open(sys.argv[1]).readlines()),"'
alias random_lines='python -c "import random, sys; lines = open(sys.argv[1]).readlines(); random.shuffle(lines); print \"\".join(lines),"'
alias reverse="perl -e 'print reverse <>'"

alias rscp="rsync -P --rsh=ssh"
alias sc='source '

#echo ">>>>>>>>>>>>>>>>>> Load Local bash_local <<<<<<<<<<<<<<<<<<<<<<<<<"
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$HOME/.myroot/lib


#echo ">>>>>>>>>>>>>>>>>> Load Local bash_local <<<<<<<<<<<<<<<<<<<<<<<<<"
if [ -f ~/.bash_local ]; then
    . ~/.bash_local
fi
