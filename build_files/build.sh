#!/bin/bash

set -ouex pipefail

dnf5 install -y gnome-shell gnome-initial-setup gnome-terminal gnome-boxes gnome-system-monitor nautilus distrobox flatpak flatseal rsync whois net-tools pwgen
dnf5 remove -y gnome-tour malcontent-control

#dnf5 install -y gnome-calculator gnome-text-editor gnome-screenshot loupe snapshot virt-manager firefox chromium torbrowser-launcher

#flatpak remote-add --if-not-exists --system fedora oci+https://registry.fedoraproject.org
#flatpak --noninteractive --system -y install fedora org.gnome.Calculator org.gnome.TextEditor org.gnome.Loupe org.gnome.Screenshot org.gnome.Snapshot org.gnome.Evince org.virt_manager.virt-manager org.mozilla.firefox org.chromium.Chromium

flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo
flatpak --noninteractive --system -y install flathub org.gnome.Calculator org.gnome.TextEditor org.gnome.Loupe org.gnome.Screenshot org.gnome.Snapshot org.gnome.Evince org.virt_manager.virt-manager org.mozilla.firefox org.chromium.Chromium
