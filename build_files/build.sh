#!/bin/bash

set -ouex pipefail

dnf5 install -y gnome-shell gnome-initial-setup gnome-terminal gnome-boxes gnome-system-monitor nautilus distrobox flatpak flatseal rsync whois net-tools pwgen
dnf5 remove -y gnome-tour malcontent-control

flatpak remote-add --if-not-exists fedora oci+https://registry.fedoraproject.org
flatpak install -y fedora org.gnome.Calculator org.gnome.TextEditor org.gnome.Loupe org.gnome.Screenshot org.gnome.Snapshot org.gnome.Evince org.virt_manager.virt-manager org.mozilla.firefox org.chromium.Chromium
