# https://helix-editor.com/
export EDITOR='hx'

# Export PATH
export PATH="$HOME/.local/bin:$PATH"

# Auto start a zellij... Disabled for now
# https://zellij.dev/documentation/introduction.html
# eval "$(zellij setup --generate-auto-start zsh)"

# Activate Starship, installed via brew.
# Configured with pure prompt preset.
# https://starship.rs/guide/
eval "$(starship init zsh)"

# Activate zsh, makes it available to helix.
# https://mise.jdx.dev/demo.html
eval "$(mise activate zsh)"

# Enable zsh-autosuggestions, installed via brew
source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh


# ZELLIJ alias'
alias zhx="zellij -l hack"
