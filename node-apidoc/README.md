node-apidoc
==============

A tool for building api documents base on node

[http://apidocjs.com/](http://apidocjs.com/)

# Step

## build node image

first you should build node image by using folder `node`, run

```bash
docker build -t node:latest .
```

this image `node-apidoc` is just a tool image base on `node:latest`

## build node-apidoc

enter folder `node-apidoc`

```bash
docker build -t node-apidoc:latest .
```

## run container

```bash
docker run -it -v /your/path:/workspace node-apidoc:latest /bin/bash
```

## test

In the container, for test, type `apidoc -h`, will print the usage into stdout
