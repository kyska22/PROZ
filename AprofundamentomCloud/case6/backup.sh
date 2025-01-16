#!/bin/bash

# Nome do backup
BACKUP_NAME="backup-$(date +%F)"

# Realizar backup com Velero
velero backup create $BACKUP_NAME --include-namespaces default

echo "Backup iniciado: $BACKUP_NAME"
