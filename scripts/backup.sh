#!/bin/bash
BACKUP_DIR="/opt/monitoramento/backups"
DATE=$(date +"%Y%m%d_%H%M%S")

mkdir -p $BACKUP_DIR

# Backup das configurações
cp -R /opt/monitoramento/config $BACKUP_DIR/config_$DATE
docker-compose ps > $BACKUP_DIR/docker_status_$DATE.txt

echo "Backup concluído em $BACKUP_DIR/config_$DATE"
