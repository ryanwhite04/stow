cd ~
git clone https://github.com/ryanwhite04/dot-files.git .files
cd .files
ls # show things that can be installed
sudo apt install stow neovum tmux
stow --dotfiles stow # to install stow configuration
stow --dotfiles bash # for bash configuration
stow --dotfiles help # to copy stuff I want to remember
stow --dotfiles nvim # for nvim configuration
stow --dotfiles tmux # tmux configuration
stow --dotfiles stow bash help nvim tmux # all at once
