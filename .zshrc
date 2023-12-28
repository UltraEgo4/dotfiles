neofetch 
#aliases
alias vim='nvim'
alias cat='bat'
alias dotfiles='/usr/bin/git --git-dir="$HOME/.dotfiles/" --work-tree="$HOME"'

#history setups
HISTFILE=~/.zsh_history
HISTSIZE=1000
SAVEHIST=1000



#enable color support of ls and also add handy aliases | probably not the best setup, use LS_COLORS manually
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    alias dir='dir --color=auto'
    alias vdir='vdir --color=auto'
    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

#disable ctrl-s terminal freeze
stty stop undef
#paste highilight turned off
zle_highlight=('paste:none')

#start - end binds | you have to set this up manually even tho the other bash shortcuts work
bindkey '^a' beginning-of-line
bindkey '^e' end-of-line



zstyle :compinstall filename '$HOME/.zshrc'
#autocomplete menu
#zstyle ':completion:*' menu select
#autocomplete menu for sudo DONT USE IT WITH UNTRUSTED AUTOCOMPLETION PLUGINS
#zstyle ':completion::complete:*' gain-privileges 1


autoload -Uz compinit promptinit 
compinit
promptinit


#prompt | have to be after autoload
prompt elite

#plugin sourcing | from arch offical repo
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh




