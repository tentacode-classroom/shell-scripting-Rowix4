#!/bin/bash

# Variables couleurs
BLACK="\[\033[0;30m\]"      # black
RED="\[\033[0;31m\]"        # red
GREEN="\[\033[0;32m\]"      # green
YELLOW="\[\033[0;33m\]"     # yellow
BLUE="\[\033[0;34m\]"       # blue
MAGENTA="\[\033[0;35m\]"    # magenta
CYAN="\[\033[0;36m\]"       # cyan
LIGHT_GREY="\[\033[0;37m\]" # light grey
DARK_GREY="\[\033[1;30m\]"  # dark grey
WHITE="\[\033[1;37m\]"      # white
COLOR_OFF="\[\033[0m\]"     # off

# Ne pas stocker dans l'historique les commandes en double
HISTCONTROL=ignoredups 

# Plus d'entrée dans history
HISTSIZE=1000

# Prompt personnalisé
PS1='\[\033[0;31m\] \u \[\033[0m\] @ \[\033[0;34m\] \W | [\t] \[\033[0m\] > '

# Symfony alias
alias start_server='php bin/console server:run'
alias create_controller='php bin/console make:controller'
alias create_database='php bin/console doctrine:database:create'
alias create_entity='php bin/console make:entity'
alias make_migration='php bin/console make:migration'
alias make_migrate='php bin/console doctrine:migrations:migrate'
