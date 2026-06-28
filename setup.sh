#!/bin/bash
#
git config --global user.email "adberenf@gmail.com"
git config --global user.name "Adrian Berges"
# Helix editor
dpkg add helix
# Iosevka ss04
dnf copr enable peterwu/iosevka
dnf install iosevka-ss04-fonts
# ghostty
dnf copr enable agriffis/ghostty-nightly
dnf install ghostty
