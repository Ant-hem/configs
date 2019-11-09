# .zshrc

fpath=(
  $fpath
  "$HOME/.zsh/pure"
)

autoload -U colors && colors
autoload -U compinit compdef && compinit
autoload -U promptinit && promptinit
autoload -U select-word-style && select-word-style bash

# Prompt stuff
autoload -U promptinit && promptinit
prompt pure
zstyle ':completion:*' completer _complete _match _approximate
zstyle ':completion:*' list-colors 'di=34:ln=35:so=32:pi=33:ex=31:bd=34;46:cd=34;43:su=30;41:sg=30;46:tw=30;42:ow=30;43'
zstyle ':completion:*' menu select
zstyle ':completion:*:*:git:*' user-commands fixup:'Create a fixup commit'
zstyle ':completion:*:approximate:*' max-errors 1 numeric
zstyle ':completion:*:cd:*' ignore-parents parent pwd
zstyle ':completion:*:match:*' original only

# Env variable
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export EDITOR=vim

HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt extended_history
setopt hist_expire_dups_first
setopt hist_ignore_dups
setopt hist_ignore_space
setopt hist_verify
setopt inc_append_history
setopt share_history
setopt autocd
setopt appendhistory

# Ensure that IntellJ doesn't use his own history file...
# See the source code of the terminal plugin of IntelliJ for more details:
# https://github.com/JetBrains/intellij-community/blob/master/plugins/terminal/resources/.zshrc
unset __INTELLIJ_COMMAND_HISTFILE__

[ -f /usr/local/etc/profile.d/autojump.sh ] && . /usr/local/etc/profile.d/autojump.sh
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
