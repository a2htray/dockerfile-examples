Python2.7 with virtaulenv
===============

# Step

## build image

```bash
docker build -t python2.7-env:{TAG} .
```

## run image

if you run the image without any argument, like below:

```bash
docker run -it python2.7-env:{TAG}
```

it will enter into python interpreter program. also you can enter command line mode,

```bash
docker run -it python2.7-env:{TAG} /bin/bash
```
## virtualenv

```bash
source /root/venv/bin/activate
```

install whatever you want in virtual python environment

