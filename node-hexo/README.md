node-hexo
============

hexo blog based on Node

[https://hexo.io/](https://hexo.io)

# Step

## Build node image

first you should build node image by using folder `node`, run

```bash
docker build -t node:latest .
```

enter folder `node-hexo`

```bash
docker build -t node-hexo:latest .
```

## run container

```bash
docker run -it -v /your/path:/workspace -v /your/ssh/profile:/root/.ssh node-hexo:latest /bin/bash
```

## End

Learn how to write a post by using the official document. And the folder `/workspace` is waiting for you. :)


