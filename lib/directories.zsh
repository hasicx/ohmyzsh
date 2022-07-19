# Changing/making/removing directory
setopt auto_pushd
setopt pushd_ignore_dups
setopt pushdminus

alias -g ...='../..'
alias -g ....='../../..'
alias -g .....='../../../..'
alias -g ......='../../../../..'

alias -- -='cd -'
alias 1='cd -1'
alias 2='cd -2'
alias 3='cd -3'
alias 4='cd -4'
alias 5='cd -5'
alias 6='cd -6'
alias 7='cd -7'
alias 8='cd -8'
alias 9='cd -9'

alias md='mkdir -p'
alias rd=rmdir

function d () {
  if [[ -n $1 ]]; then
    dirs "$@"
  else
    dirs -v | head -n 10
  fi
}
compdef _dirs d

# List directory contents
alias lsa='ls -lah'
alias l='ls -lah'
# alias ll='ls -lh'
# alias la='ls -lAh'

### Custom

cdpath=(
  ~
  ~/projects
)

# Custom: List directory (ls) variations
alias ll='ls -lhG -F' 		# long
alias la='ls -A -F'		# all
alias lla='ls -lhG -A -F' 	# long+all

alias lg.='ls -d -F .*'			# glob: hidden only
alias lg/='ls -d -F *(-/DN)'		# glob: (symlink to) dirs only - possible dep @ dot_glob
alias lgl.='ls -lhG -d -F .*'		# glob: long + hidden only
alias lgl/='ls -lhG -d -F *(-/DN)' 	# glob: long + (symlink to) dirs only

alias l='lla'

# Custom: shell config file path aliases
alias -g zshrc="$HOME/.zshrc"
alias -g omzdir="$HOME/.oh-my-zsh"
alias -g omzscript="$HOME/.oh-my-zsh/oh-my-zsh.sh"
alias -g omzlib="$HOME/.oh-my-zsh/lib"
alias -g i3config="$HOME/.config/i3/config"
