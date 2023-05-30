#!/bin/bash
echo -e 'Borrando contenedores--------------------------------'
# Eliminar todos los contenedores que empiecen por ben331/
docker rm -f $(docker ps -a | grep "ben331/" | awk '{print $1}')
docker rm -f $(docker ps -a | grep "consul" | awk '{print $1}')
docker rm -f $(docker ps -a | grep "kafka" | awk '{print $1}')
docker rm -f $(docker ps -a | grep "mongodb" | awk '{print $1}')
docker rm -f $(docker ps -a | grep "redis" | awk '{print $1}')
docker rm -f $(docker ps -a | grep "gateway" | awk '{print $1}')


# echo -e '\n\nBorrando Imagenes--------------------------------'
# Eliminar todas las imágenes que empiecen por ben331/
# docker rmi -f $(docker images | grep "ben331/" | awk '{print $3}')

# Mostrar estado actualizado
echo -e '\n\nDOCKER PS----------------------------------------'
docker ps -a | awk '{print $2}'
echo -e '\n\nDOCKER IMAGES------------------------------------'
docker images -a | awk '{print $1}'