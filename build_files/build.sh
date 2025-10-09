#!/bin/bash

set -ouex pipefail

dnf5 install -y gnome-shell gnome-initial-setup gnome-terminal gnome-text-editor gnome-calculator nautilus rsync whois net-tools pwgen terminator firefox chromium torbrowser-launcher @virtualization

dnf5 remove -y gnome-tour malcontent-control

