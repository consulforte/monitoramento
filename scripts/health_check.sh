#!/bin/bash
# Verificar status dos serviços

docker-compose ps
docker-compose logs --tail=50
