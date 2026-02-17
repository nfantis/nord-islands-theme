# Nord Dark Theme (for zsh-syntax-highlighting)
#
# Paste this files contents inside your ~/.zshrc before you activate zsh-syntax-highlighting
ZSH_HIGHLIGHT_HIGHLIGHTERS=(main cursor)
typeset -gA ZSH_HIGHLIGHT_STYLES

# Main highlighter styling: https://github.com/zsh-users/zsh-syntax-highlighting/blob/master/docs/highlighters/main.md
#
## General
### Diffs
### Markup
## Classes
## Comments
ZSH_HIGHLIGHT_STYLES[comment]='fg=#616E88'
## Constants
## Entitites
## Functions/methods
ZSH_HIGHLIGHT_STYLES[alias]='fg=#EBCB8B'
ZSH_HIGHLIGHT_STYLES[suffix-alias]='fg=#EBCB8B'
ZSH_HIGHLIGHT_STYLES[global-alias]='fg=#EBCB8B'
ZSH_HIGHLIGHT_STYLES[function]='fg=#EBCB8B'
ZSH_HIGHLIGHT_STYLES[command]='fg=#EBCB8B'
ZSH_HIGHLIGHT_STYLES[precommand]='fg=#EBCB8B,italic'
ZSH_HIGHLIGHT_STYLES[autodirectory]='fg=#EBCB8B,italic'
ZSH_HIGHLIGHT_STYLES[single-hyphen-option]='fg=#EBCB8B'
ZSH_HIGHLIGHT_STYLES[double-hyphen-option]='fg=#EBCB8B'
ZSH_HIGHLIGHT_STYLES[back-quoted-argument]='fg=#B48EAD'
## Keywords
## Built ins
ZSH_HIGHLIGHT_STYLES[builtin]='fg=#EBCB8B'
ZSH_HIGHLIGHT_STYLES[reserved-word]='fg=#EBCB8B'
ZSH_HIGHLIGHT_STYLES[hashed-command]='fg=#EBCB8B'
## Punctuation
ZSH_HIGHLIGHT_STYLES[commandseparator]='fg=#BF616A'
ZSH_HIGHLIGHT_STYLES[command-substitution-delimiter]='fg=#D8DEE9'
ZSH_HIGHLIGHT_STYLES[command-substitution-delimiter-unquoted]='fg=#D8DEE9'
ZSH_HIGHLIGHT_STYLES[process-substitution-delimiter]='fg=#D8DEE9'
ZSH_HIGHLIGHT_STYLES[back-quoted-argument-delimiter]='fg=#BF616A'
ZSH_HIGHLIGHT_STYLES[back-double-quoted-argument]='fg=#BF616A'
ZSH_HIGHLIGHT_STYLES[back-dollar-quoted-argument]='fg=#BF616A'
## Serializable / Configuration Languages
## Storage
## Strings
ZSH_HIGHLIGHT_STYLES[command-substitution-quoted]='fg=#A3BE8C'
ZSH_HIGHLIGHT_STYLES[command-substitution-delimiter-quoted]='fg=#A3BE8C'
ZSH_HIGHLIGHT_STYLES[single-quoted-argument]='fg=#A3BE8C'
ZSH_HIGHLIGHT_STYLES[single-quoted-argument-unclosed]='fg=#BF616A'
ZSH_HIGHLIGHT_STYLES[double-quoted-argument]='fg=#A3BE8C'
ZSH_HIGHLIGHT_STYLES[double-quoted-argument-unclosed]='fg=#BF616A'
ZSH_HIGHLIGHT_STYLES[rc-quote]='fg=#A3BE8C'
## Variables
ZSH_HIGHLIGHT_STYLES[dollar-quoted-argument]='fg=#D8DEE9'
ZSH_HIGHLIGHT_STYLES[dollar-quoted-argument-unclosed]='fg=#BF616A'
ZSH_HIGHLIGHT_STYLES[dollar-double-quoted-argument]='fg=#D8DEE9'
ZSH_HIGHLIGHT_STYLES[assign]='fg=#D8DEE9'
ZSH_HIGHLIGHT_STYLES[named-fd]='fg=#D8DEE9'
ZSH_HIGHLIGHT_STYLES[numeric-fd]='fg=#D8DEE9'
## No category relevant in spec
ZSH_HIGHLIGHT_STYLES[unknown-token]='fg=#BF616A'
ZSH_HIGHLIGHT_STYLES[path]='fg=#D8DEE9'
ZSH_HIGHLIGHT_STYLES[path_pathseparator]='fg=#D8DEE9'
ZSH_HIGHLIGHT_STYLES[path_prefix]='fg=#D8DEE9'
ZSH_HIGHLIGHT_STYLES[path_prefix_pathseparator]='fg=#D8DEE9'
ZSH_HIGHLIGHT_STYLES[globbing]='fg=#D8DEE9'
ZSH_HIGHLIGHT_STYLES[history-expansion]='fg=#B48EAD'
#ZSH_HIGHLIGHT_STYLES[command-substitution]='fg=?'
#ZSH_HIGHLIGHT_STYLES[command-substitution-unquoted]='fg=?'
#ZSH_HIGHLIGHT_STYLES[process-substitution]='fg=?'
#ZSH_HIGHLIGHT_STYLES[arithmetic-expansion]='fg=?'
ZSH_HIGHLIGHT_STYLES[back-quoted-argument-unclosed]='fg=#BF616A'
ZSH_HIGHLIGHT_STYLES[redirection]='fg=#D8DEE9'
ZSH_HIGHLIGHT_STYLES[arg0]='fg=#D8DEE9'
ZSH_HIGHLIGHT_STYLES[default]='fg=#D8DEE9'
ZSH_HIGHLIGHT_STYLES[cursor]='fg=#D8DEE9'