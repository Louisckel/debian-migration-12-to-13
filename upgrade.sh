#!/bin/bash
# Migration Debian 12 (Bookworm) → Debian 13 (Trixie)

echo "Mise à jour des paquets actuels..."
sudo apt update && sudo apt upgrade -y && sudo apt full-upgrade -y && sudo apt autoremove --purge -y

echo "Modification des dépôts vers Trixie..."
sudo sed -i 's/bookworm/trixie/g' /etc/apt/sources.list

echo "Mise à jour des dépôts..."
sudo apt update

echo "Migration complète vers Debian 13 (Trixie)..."
sudo apt full-upgrade -y

echo "Migration terminée. Redémarrage conseillé."
