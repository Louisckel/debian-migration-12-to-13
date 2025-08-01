# Restauration après échec de migration

Si la migration vers Debian 13 pose problème, voici comment restaurer votre sauvegarde :

1. Branchez la carte SD (ou le disque) à restaurer.
2. Lancez la commande suivante :
   ```bash
   sudo dd if=/mnt/disque_sauvegarde/backup_debian12.img of=/dev/mmcblk0 bs=4M status=progress
   sync
   ```
3. Redémarrez le système. Vous retrouverez votre Debian 12 comme avant la migration.
