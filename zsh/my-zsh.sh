# Initializes My Zsh

# Load all stock functions
autoload -U compaudit compinit

# Load only from secure directories
compinit -i -d $ZSH_COMPDUMP

# ls colors
autoload -U colors && colors

# Load all of the config files
for config_file ($ZSH/lib/*.zsh); do
  source $config_file
done

# Load all of your custom files
for custom_file ($ZSH/custom/*.zsh); do
  source $custom_file
done

# Load all of the plugins that were defined in ~/.zshrc
for plugin ($plugins); do
  source $ZSH/plugins/$plugin/$plugin.plugin.zsh
done

# Load the theme
if [ "$ZSH_THEME" != ""  ]; then
  source "$ZSH_CUSTOM/$ZSH_THEME.zsh-theme"
fi
