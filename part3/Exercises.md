# Exercise 3.1

Backend : 

Dockerfile: [./exec-3.1/Dockerfile](./exec-1.10/Dockerfile)

```bash
(base) $ docker images
REPOSITORY            TAG                 IMAGE ID            CREATED             SIZE
back_new              latest              cdf58e27e78b        8 minutes ago       324MB
back                  latest              23c3ccaf527e        27 minutes ago      980MB
```
Old 
```bash
(base)$ docker history back
IMAGE               CREATED             CREATED BY                                      SIZE                COMMENT
23c3ccaf527e        18 minutes ago      /bin/sh -c #(nop)  CMD ["npm" "start"]          0B                  
e4624cba1364        18 minutes ago      /bin/sh -c npm install                          36.4MB              
7302e2e58e24        19 minutes ago      /bin/sh -c #(nop) COPY dir:76992ae094f71c838…   362kB               
37ad18cd8bd1        3 weeks ago         /bin/sh -c #(nop)  CMD ["node"]                 0B                  
<missing>           3 weeks ago         /bin/sh -c #(nop)  ENTRYPOINT ["docker-entry…   0B                  
<missing>           3 weeks ago         /bin/sh -c #(nop) COPY file:238737301d473041…   116B                
<missing>           3 weeks ago         /bin/sh -c set -ex   && for key in     6A010…   7.77MB              
<missing>           3 weeks ago         /bin/sh -c #(nop)  ENV YARN_VERSION=1.22.4      0B                  
<missing>           3 weeks ago         /bin/sh -c ARCH= && dpkgArch="$(dpkg --print…   100MB               
<missing>           3 weeks ago         /bin/sh -c #(nop)  ENV NODE_VERSION=14.5.0      0B                  
<missing>           6 weeks ago         /bin/sh -c groupadd --gid 1000 node   && use…   333kB               
<missing>           6 weeks ago         /bin/sh -c set -ex;  apt-get update;  DEBIAN…   562MB               
<missing>           6 weeks ago         /bin/sh -c apt-get update && apt-get install…   142MB               
<missing>           6 weeks ago         /bin/sh -c set -ex;  if ! command -v gpg > /…   7.81MB              
<missing>           6 weeks ago         /bin/sh -c apt-get update && apt-get install…   23.2MB              
<missing>           6 weeks ago         /bin/sh -c #(nop)  CMD ["bash"]                 0B                  
<missing>           6 weeks ago         /bin/sh -c #(nop) ADD file:6e16bc9cf28c19a1f…   101MB   
```
New
```bash
(base) $ docker history back_new
IMAGE               CREATED              CREATED BY                                      SIZE                COMMENT
cdf58e27e78b        About a minute ago   /bin/sh -c #(nop)  CMD ["npm" "start"]          0B                  
f7de9ca292ce        About a minute ago   /bin/sh -c apt-get update && apt-get install…   197MB               
7f41fa7525e9        2 minutes ago        /bin/sh -c #(nop) COPY dir:9fb1afd69de72db3b…   362kB               
4871856c45ca        6 minutes ago        /bin/sh -c #(nop)  ENV FRONT_URL=http://loca…   0B                  
c522ac0d6194        2 weeks ago          /bin/sh -c #(nop)  CMD ["/bin/bash"]            0B                  
<missing>           2 weeks ago          /bin/sh -c mkdir -p /run/systemd && echo 'do…   7B                  
<missing>           2 weeks ago          /bin/sh -c set -xe   && echo '#!/bin/sh' > /…   745B                
<missing>           2 weeks ago          /bin/sh -c rm -rf /var/lib/apt/lists/*          0B                  
<missing>           2 weeks ago          /bin/sh -c #(nop) ADD file:47805a69cb7dd669e…   126MB   
```

Frontend : 

Dockerfile: [./exec-3.1/Dockerfile-front](./exec-1.10/Dockerfile-front)

```bash
(base) $ docker images
REPOSITORY            TAG                 IMAGE ID            CREATED             SIZE
front_new             latest              05fcd2059023        2 minutes ago       499MB
front                 latest              72473b63c262        6 minutes ago       1.16GB
```
Old 
```bash
(base) $ docker history front
IMAGE               CREATED             CREATED BY                                      SIZE                COMMENT
72473b63c262        2 minutes ago       /bin/sh -c #(nop)  CMD ["npm" "start"]          0B                  
8c5cb1d244dd        2 minutes ago       /bin/sh -c npm install                          212MB               
1733d8083504        3 minutes ago       /bin/sh -c #(nop) COPY dir:86f724ca5d3f6d4fe…   919kB               
37ad18cd8bd1        3 weeks ago         /bin/sh -c #(nop)  CMD ["node"]                 0B                  
<missing>           3 weeks ago         /bin/sh -c #(nop)  ENTRYPOINT ["docker-entry…   0B                  
<missing>           3 weeks ago         /bin/sh -c #(nop) COPY file:238737301d473041…   116B                
<missing>           3 weeks ago         /bin/sh -c set -ex   && for key in     6A010…   7.77MB              
<missing>           3 weeks ago         /bin/sh -c #(nop)  ENV YARN_VERSION=1.22.4      0B                  
<missing>           3 weeks ago         /bin/sh -c ARCH= && dpkgArch="$(dpkg --print…   100MB               
<missing>           3 weeks ago         /bin/sh -c #(nop)  ENV NODE_VERSION=14.5.0      0B                  
<missing>           6 weeks ago         /bin/sh -c groupadd --gid 1000 node   && use…   333kB               
<missing>           6 weeks ago         /bin/sh -c set -ex;  apt-get update;  DEBIAN…   562MB               
<missing>           6 weeks ago         /bin/sh -c apt-get update && apt-get install…   142MB               
<missing>           6 weeks ago         /bin/sh -c set -ex;  if ! command -v gpg > /…   7.81MB              
<missing>           6 weeks ago         /bin/sh -c apt-get update && apt-get install…   23.2MB              
<missing>           6 weeks ago         /bin/sh -c #(nop)  CMD ["bash"]                 0B                  
<missing>           6 weeks ago         /bin/sh -c #(nop) ADD file:6e16bc9cf28c19a1f…   101MB         
```
New
```bash
(base) $ docker history front_new
IMAGE               CREATED              CREATED BY                                      SIZE                COMMENT
05fcd2059023        About a minute ago   /bin/sh -c #(nop)  CMD ["npm" "start"]          0B                  
fcce07b1ec9e        About a minute ago   /bin/sh -c apt-get update && apt-get install…   372MB               
680c3c257676        3 minutes ago        /bin/sh -c #(nop) COPY dir:e0587f53e805dacf7…   919kB               
402ec04caf8e        3 minutes ago        /bin/sh -c #(nop)  ENV API_URL=http://localh…   0B                  
c522ac0d6194        2 weeks ago          /bin/sh -c #(nop)  CMD ["/bin/bash"]            0B                  
<missing>           2 weeks ago          /bin/sh -c mkdir -p /run/systemd && echo 'do…   7B                  
<missing>           2 weeks ago          /bin/sh -c set -xe   && echo '#!/bin/sh' > /…   745B                
<missing>           2 weeks ago          /bin/sh -c rm -rf /var/lib/apt/lists/*          0B                  
<missing>           2 weeks ago          /bin/sh -c #(nop) ADD file:47805a69cb7dd669e…   126MB   
```

# Exercise 3.2

https://github.com/Auua/docker-hy-circleCI/blob/master/.circleci/config.yml

CircleCI ENV:

DOCKER_LOGIN
DOCKER_PASSWORD
HEROKU_API_KEY
HEROKU_APP_NAME

# Exercise 3.3

Dockerfile: [./exec-3.3/Dockerfile](./exec-3.3/Dockerfile)
Script: [./exec-3.3/script.sh](./exec-3.3/script.sh)

```bash
docker build -t auuaa/fs-puhelinluettelo .
docker run -v /var/run/docker.sock:/var/run/docker.sock auuaa/fs-puhelinluettelo:latest
```

# Exercise 3.4.

Dockerfiles: 
backend : [./exec-3.4/Dockerfile](./exec-3.4/Dockerfile)
frontend : [./exec-3.4/Dockerfile-front](./exec-3.4/Dockerfile-front)

# Exercise 3.5

Dockerfiles: 
backend : [./exec-3.5/Dockerfile](./exec-3.5/Dockerfile)
frontend : [./exec-3.5/Dockerfile-front](./exec-3.5/Dockerfile-front)

Backend ubundu:16.4 > node:alphine
```bash 
(base) $ docker images
REPOSITORY            TAG                 IMAGE ID            CREATED             SIZE
back-ubu              latest              cdf58e27e78b        8 minutes ago       324MB
back-node             latest              b7b1e7cf38c3        46 seconds ago       154MB
```

Frontend = ubundu:16.4 > node:alphine
```bash
(base) $ docker images
REPOSITORY            TAG                 IMAGE ID            CREATED             SIZE
front-node            latest              71687d0fde65        6 minutes ago       330MB
front-ubu             latest              2a87f8b98edc        9 minutes ago       499MB
```

# Exercise 3.6

Dockerfile: [./exec-3.6/Dockerfile](./exec-3.6/Dockerfile)

# Exercise 3.7

Dockerfiles: 
new : [./exec-3.7/Dockerfile](./exec-3.7/Dockerfile)
old : [./exec-3.7/Dockerfile-old](./exec-3.7/Dockerfile-old)

```bash
REPOSITORY            TAG                 IMAGE ID            CREATED             SIZE
full-old              latest              80a3e1ea83d6        47 seconds ago      967MB
full-new              latest              c944ec5663df        27 seconds ago      165MB
```
