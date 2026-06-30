#!/bin/bash
#
git config --global user.email "adberenf@gmail.com"
git config --global user.name "Adrian Berges"

# symlink the config files

# nushell
echo "[gemfury-nushell]
name=Gemfury Nushell Repo
baseurl=https://yum.fury.io/nushell/
enabled=1
gpgcheck=0
gpgkey=https://yum.fury.io/nushell/gpg.key" | tee /etc/yum.repos.d/fury-nushell.repo
dnf install -y nushell

# Helix editor
dnf add helix
# Iosevka ss04
dnf copr enable peterwu/iosevka
dnf install iosevka-ss04-fonts
# ghostty
dnf copr enable agriffis/ghostty-nightly
dnf install ghostty
# rustup
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
# typst
cargo install --locked typst-cli
# julia
curl -fsSL https://install.julialang.org | sh

# LSPs
# tinymist (for typst)
cargo install --git https://github.com/Myriad-Dreamin/tinymist --locked tinymist-cli
# nufmt
cargo install --git https://github.com/nushell/nufmt
