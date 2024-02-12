# XDG
set -gx XDG_CONFIG_HOME $HOME/.config
set -gx XDG_DATA_HOME $HOME/.local/share
set -gx XDG_CACHE_HOME $HOME/.cache

# Deno
set -gx DENO_INSTALL $XDG_DATA_HOME/deno
set -gx PATH $DENO_INSTALL/bin $PATH # deno-env

# Docker
set -gx DOCKER_CONFIG $XDG_CONFIG_HOME/docker

# SageMath
set -gx DOT_SAGE $XDG_CONFIG_HOME/sage

 # Go
set -gx GOPATH $XDG_DATA_HOME/go
set -gx GOBIN $GOPATH/bin
set -gx PATH $GOBIN $PATH # go-env

#R
set -gx R_USER $XDG_DATA_HOME/R

# GHCup is a tool for installing and managing Haskell compilers
set -gx GHCUP_INSTALL_BASE_PREFIX $XDG_DATA_HOME
set -gx PATH $GHCUP_INSTALL_BASE_PREFIX/cabal/bin $PATH # cabal-env
set -gx PATH $GHCUP_INSTALL_BASE_PREFIX/ghcup/bin $PATH # ghcup-env

# Conda
# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
if test -f $XDG_DATA_HOME/anaconda3/bin/conda
    eval $XDG_DATA_HOME/anaconda3/bin/conda "shell.fish" "hook" $argv | source
end
# <<< conda initialize <<<