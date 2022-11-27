# [Generate new SSH key](https://docs.github.com/en/authentication/connecting-to-github-with-ssh)

```sh
ssh-keygen -t ed25519 -C "your_email@example.com"
ssh-add ~/.ssh/id_ed25519
```

# Install dotfiles
```sh
sudo apt update && sudo apt
cd ~
git clone git:github.com:ryanwhite04/dotfiles
cd dotfiles
cat installs/* | sh # install required packages
stow */ # stow all configuration files
```

