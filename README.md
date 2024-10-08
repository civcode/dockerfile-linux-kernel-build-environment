# Dockerfile for linux kernel build environment

Includes all the dependencies required for building the Linux kernel.

## Branches
- master: build kernel without ZFS support
- zfs-build: build kernel with ZFS support (contains additional packages) 

## Docker instructions

### Build image
```
$ docker build <folder-with-dockerfile> -t <image-name>
```

### Run image
```
$ docker run -d -v ~/workspace:/var/workspace -it kernel-build
```

### Run bash in container
```
$ docker exec -it <container-id> /bin/bash
```


### Stop container
```
$ docker container list
$ docker stop <container-id>
```

## Delete container
```
$ docker ps -a
$ docker rm <container-id>
```

### Delete image
```
$ docker image list
$ docker rmi <image-id>
```
