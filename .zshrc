export ZSHPATH='/home/padaf3t/.config/zsh'

# The following lines were added by compinstall
zstyle ':completion:*' completer _complete _ignored
zstyle ':completion:*' menu select=long
zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s
zstyle ':completion:*' use-compctl true
zstyle ':completion:*' verbose true
zstyle :compinstall filename '/home/padaf3t/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=2000
SAVEHIST=2000
# End of lines configured by zsh-newuser-install

eval "$(starship init zsh)"

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

############--------L-S_COLORS---------#############

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

if [[ -d "$ZSHPATH/aliases" ]]; then
  for file in "$ZSHPATH/aliases/"*.zsh; do
    [[ -r "$file" ]] && source "$file"
  done
fi

alias grep='grep --color=auto'
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
