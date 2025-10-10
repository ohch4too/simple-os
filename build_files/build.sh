#!/bin/bash

set -ouex pipefail

dnf5 install -y gnome-shell gnome-initial-setup gnome-terminal gnome-boxes gnome-system-monitor gnome-calculator gnome-text-editor gnome-screenshot evince loupe snapshot nautilus virt-manager flatpak flatseal distrobox rsync whois net-tools pwgen
dnf5 remove -y gnome-tour malcontent-control

flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo
flatpak --system --noninteractive -y install flathub org.mozilla.firefox org.chromium.Chromium org.torproject.torbrowser-launcher
