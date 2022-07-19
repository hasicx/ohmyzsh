# Custom plugin configuration for zsh
# File: custom-plugin-conf.zsh
# Path:
#   With omz: automatically sourced from lib $ZSH/lib/custom-plugin-conf.zsh (~/.oh-my-zsh/lib/custom-plugin-conf.zsh) with the *.zsh suffix.
#   Without omz: source from zshrc (or analogous startup config file).

### Plugin: ssh-agent
# Do not load identities at startup (lazy).
# Useful with ssh option AddKeysToAgent to enter password only on first use.
zstyle :omz:plugins:ssh-agent lazy yes
