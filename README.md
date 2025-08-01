# Migration Debian 12 → Debian 13

Ce projet documente la procédure complète pour mettre à niveau Debian 12 (Bookworm) vers Debian 13 (Trixie) en toute sécurité.

## Étapes principales :
1. Sauvegarde complète du système (image bit-à-bit avec `dd`).
2. Préparation : mise à jour complète et nettoyage des paquets.
3. Modification des dépôts (`/etc/apt/sources.list` → Trixie).
4. Mise à niveau complète (`apt full-upgrade`).
5. Validation et tests post-migration.
6. Restauration possible en cas de problème.

## Scripts inclus :
- `backup.sh` : créer une image complète de votre système.
- `upgrade.sh` : automatiser la migration Bookworm → Trixie.
- `rollback.md` : restaurer la sauvegarde.

---
**Auteur :** Louis Vandewynckel  
*Projet personnel de montée en compétences vers le support N2 (Linux & administration système).*
