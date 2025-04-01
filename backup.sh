#!/bin/bash
DATE=$(date +%Y-%m-%d_%H-%M-%S)
docker-compose exec -T psql pg_dump -U postgres -Fc lets_goto_it > ./backups/dump_$DATE.dump
echo "Backup created: backups/dump_$DATE.dump"