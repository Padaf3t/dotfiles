# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH

# Path to your Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time Oh My Zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"

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

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
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
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

source $ZSH/oh-my-zsh.sh

eval "$(starship init zsh)"

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

############---------LS_COLORS---------#############
# Base colors
base_colors=(
  "di=38;5;172"   # directories       yellow
  "fi=38;5;243"   # files             gray
  "ln=38;5;66"    # symlinks          blue
  "pi=38;5;106"   # pipes             green
  "so=38;5;72"    # sockets           aqua
  "bd=38;5;166"   # block devices     orange
  "cd=38;5;166"   # char devices      orange
  "or=38;5;166"   # orphaned symlinks orange
  "ex=38;5;124"   # executables       red
)
# Programming languages
prog_exts=(
  "*.c" "*.cpp" "*.cc" "*.cxx" "*.hpp" "*.hh" "*.hxx" "*.cs" "*.java" "*.js" "*.jsx" "*.mjs" "*.cjs" \
  "*.ts" "*.tsx" "*.py" "*.pyw" "*.rb" "*.go" "*.rs" "*.swift" "*.kt" "*.kts" "*.php" "*.phtml" \
  "*.pl" "*.pm" "*.t" "*.scala" "*.dart" "*.lua" "*.hs" "*.lhs" "*.m" "*.mm" "*.sql" "*.groovy" \
  "*.coffee" "*.elm" "*.erl" "*.hrl" "*.fs" "*.fsi" "*.fsx" "*.tcl" "*.tk"
)
# Scripting languages
script_exts=(
  "*.sh" "*.bash" "*.zsh" "*.ksh" "*.fish" "*.bat" "*.cmd" "*.ps1" "*.psm1"
)
# Config/markup files
config_exts=(
  "*.html" "*.htm" "*.css" "*.md" "*.markdown" "*.json" "*.jsonc" "*.json5" "*.yaml" "*.yml" \
  "*.xml" "Dockerfile" "Makefile" "makefile"
)
# Helper function to join extensions with their color
join_exts_with_color() {
  local arr_name=$1
  local color=$2
  local result=""
  local ext

  eval "arr=(\"\${${arr_name}[@]}\")"

  for ext in "${arr[@]}"; do
    result+="${ext}=38;5;${color}:"
  done
  echo "$result"
}
# Join base colors into a string (with trailing colon)
base_colors_str=$(printf "%s:" "${base_colors[@]}")
# Join all extensions with their respective colors
prog_colors=$(join_exts_with_color prog_exts 24)
config_colors=$(join_exts_with_color config_exts 132)
shell_colors=$(join_exts_with_color script_exts 88)
# Combine all parts and remove trailing colon
export LS_COLORS="${base_colors_str}${prog_colors}${config_colors}${shell_colors%:}"

# You may need to manually set your language environment
export LANG=ca_en.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='nvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch $(uname -m)"

# Set personal aliases, overriding those provided by Oh My Zsh libs,
# plugins, and themes. Aliases can be placed here, though Oh My Zsh
# users are encouraged to define aliases within a top-level file in
# the $ZSH_CUSTOM folder, with .zsh extension. Examples:
# - $ZSH_CUSTOM/aliases.zsh
# - $ZSH_CUSTOM/macos.zsh
# For a full list of active aliases, run `alias`.

alias ls='eza --color=always --group-directories-first --icons'
alias lf='eza --color=always --group-directories-first --icons -f'
alias ld='eza --color=always --group-directories-first --icons -D'
alias ll='eza --color=always  -l --git --icons -a'
alias lt='eza --color=always --tree --level=1 --icons'
alias lth='eza --color=always --tree --level=1 --icons -a'
alias ltt='eza --color=always --tree --level=2 --icons'
alias ltth='eza --color=always --tree --level=2 --icons -a'
alias lsh='eza --color=always -a -a --group-directories-first --icons --git'
alias lshf='eza --color=always -a --group-directories-first --icons -f --git --show-symlinks'
alias lshd='eza -a -a --group-directories-first --icons -D --git --show-symlinks'

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
