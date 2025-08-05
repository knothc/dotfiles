# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH
# ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme"

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"
export EDITOR="nvim"
export VISUAL="$EDITOR"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="amuse"
#ZSH_THEME="spaceship"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# Caution: this setting can cause issues with multiline prompts (zsh 5.7.1 and newer seem to work)
# See https://github.com/ohmyzsh/ohmyzsh/issues/5765
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git
  git-extras
  macos
  sudo
  common-aliases
  history
  fzf
  zsh-autosuggestions
)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
alias c="clear"
alias vim="nvim"
alias zshconfig="nvim ~/.zshrc"
alias ohmyzsh="nvim ~/.oh-my-zsh"

# iCloud desktop
alias cdesktop="~/Library/Mobile Documents/com~apple~CloudDocs/Desktop"

# exa
export EZA_COLORS=""
# export EZA_COLORS="da=90"
alias ls="eza --icons"
alias lsl="eza -l --icons --no-user --no-permissions --time-style=long-iso --group-directories-first"
alias lslg="eza -lG --icons --no-user --no-permissions --no-filesize --time-style=long-iso --group-directories-first"
alias lsla="eza -la --icons --no-user --no-permissions --time-style=long-iso --group-directories-first"
alias lslag="eza -laG --icons --no-user --no-permissions --time-style=long-iso --group-directories-first"
alias lsd="eza -D --icons --no-user"

# -- find --
alias chfind="find . -type d | grep"
 
# -- lazygit --
alias lg='lazygit'

# -- fzf --
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export FZF_DEFAULT_OPTS="--height 65% --border sharp --prompt '∷ ' --pointer ▶ --marker ⇒ --info=inline"

gche() {
  git checkout "$(git branch -a | fzf | tr -d '[:space:]')"
}
greb() {
  git rebase "$(git branch -a | fzf | tr -d '[:space:]')"
}
gbra() {
  "$(git branch -a | fzf -1)"
}

# -- yazi --
function y() {
	local tmp="$(mktemp -t "yazi-cwd.XXXXXX")" cwd
	yazi "$@" --cwd-file="$tmp"
	if cwd="$(command cat -- "$tmp")" && [ -n "$cwd" ] && [ "$cwd" != "$PWD" ]; then
		builtin cd -- "$cwd"
	fi
	rm -f -- "$tmp"
}

#-- forgit --
[ -f ~/.forgit/forgit.plugin.zsh ] && source ~/.forgit/forgit.plugin.zsh

#-- thefuck --
eval $(thefuck --alias) 

# -- json formatting --
alias jj='pbpaste | jsonpp | pbcopy'
alias jjj='pbpaste | jsonpp'

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
# rbenv shims
eval "$(rbenv init - zsh)"

# Starship prompt
eval "$(starship init zsh)"  

# -- jump --
# eval "$(jump shell)"

# zsh-syntax-highlighting
# source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/projects/other/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# zsh-autosuggestions colors
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=243'

# dotfile repo alias
alias config='/usr/bin/git --git-dir=/Users/efrain.mejia/.cfg/ --work-tree=/Users/efrain.mejia'
# ↑ Repo configuration:
#   - git init --bare $HOME/.cfg
#   - alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
#   - config config --local status.showUntrackedFiles no 


# -- zoxide
eval "$(zoxide init --cmd j zsh)"
alias -g home='/Users/efrain.mejia'


# Command history setup
# HISTFILE=$HOME/.zhistory
# SAVEHIST=1000
# HISTSIZE=999
# setopt share_history
# setopt hist_expire_dups_first
# setopt hist_ignore_dups
# setopt hist_verify

# completion using arrow keys (based on history)
bindkey '^[[A' history-search-backward
bindkey '^[[B' history-search-forward

# Atuin history manager
. "$HOME/.atuin/bin/env"
eval "$(atuin init zsh --disable-up-arrow)"

neofetch
