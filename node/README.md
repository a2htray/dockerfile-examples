Node
============

Dockerfile with node installation，it will install gulp using npm(node program manager) default when you build this dockerfile, By modifying the environment variable `PACKAGES`，install that packages you want

# Step

## build image

```bash
build -t node:{TAG} .
```

it takes few minutes, fancy a drink?

## run container

```bash
docker run -it node:{TAG}
```

it prints:

```bash
Hello World
```

## command line mode

```bash
docker run -it node:{TAG}
```


# example

```bash
docker run -it -p 4000:4000 -v /your/path:/workspace node:{TAG} /bin/bash
```