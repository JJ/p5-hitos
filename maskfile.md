# Tareas para este proyecto

## podman-images

> Crea imágenes de Docker a partir del Dockerfile usando Podman

~~~sh
podman build -f config/Dockerfile -t jjmerelo/p5hitos/data
podman build -f Dockerfile -t jjmerelo/p5hitos/app
~~~

## docker-images

> Crea imágenes de Docker a partir del Dockerfile

~~~sh
docker build config/ -f Dockerfile -t jjmerelo/p5hitos/data
docker build . -t jjmerelo/p5hitos/app
~~~

## start

> Arranca la aplicación

~~~sh
plackup hitos.pl
~~~
