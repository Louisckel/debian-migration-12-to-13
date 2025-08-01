#!/bin/bash
# Sauvegarde complète d'une carte SD ou disque
# Usage : sudo ./backup.sh /dev/mmcblk0 /mnt/disque_sauvegarde/backup.img

if [ "$#" -ne 2 ]; then
    echo "Usage: $0 <source_device> <output_image>"
    exit 1
fi

SOURCE=$1
DEST=$2

echo "Création de l'image..."
sudo dd if=$SOURCE of=$DEST bs=4M status=progress
sync
echo "Sauvegarde terminée : $DEST"
