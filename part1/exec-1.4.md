# Exercise 1.4

```
(base)$ docker run -it devopsdockeruh/exec_bash_exercise
(base)$ docker ps -a
(base) $ docker exec -it confident_banach bash
root@f9a95d0b0760:/usr/app# tail -f ./logs.txt
Secret message is:
"Docker is easy"
Fri, 17 Jul 2020 16:38:38 GMT
Fri, 17 Jul 2020 16:38:41 GMT
Fri, 17 Jul 2020 16:38:44 GMT
Fri, 17 Jul 2020 16:38:47 GMT
^C
root@f9a95d0b0760:/usr/app# exit
```

Full


```
(base)$ docker run -it devopsdockeruh/exec_bash_exercise
Unable to find image 'devopsdockeruh/exec_bash_exercise:latest' locally
latest: Pulling from devopsdockeruh/exec_bash_exercise
1c6172af85ee: Pull complete 
b194b0e3c928: Pull complete 
1f5ec00f35d5: Pull complete 
93b1353672b6: Pull complete 
3d7f38db3cca: Pull complete 
21e102f9fe89: Pull complete 
d851ffed797c: Pull complete 
a45031e28c68: Pull complete 
ca3c1414856f: Pull complete 
02c74c9936fd: Pull complete 
ddb55f8ab0a8: Pull complete 
Digest: sha256:d38b6f6b0eed2880e25c9eb7f83f1cd016ffe3a56c9a3fec6e7bee480bf1ed0f
Status: Downloaded newer image for devopsdockeruh/exec_bash_exercise:latest
Wrote to file /usr/app/logs.txt
Wrote to file /usr/app/logs.txt
Wrote to file /usr/app/logs.txt
Wrote to file /usr/app/logs.txt
Wrote to file /usr/app/logs.txt
Wrote to file /usr/app/logs.txt
(base)$ docker ps -a
CONTAINER ID        IMAGE                               COMMAND                  CREATED              STATUS                      PORTS               NAMES
f9a95d0b0760        devopsdockeruh/exec_bash_exercise   "docker-entrypoint.s…"   About a minute ago   Up About a minute                               confident_banach
81a535775f9c        fav_distro:xenial                   "uptime"                 18 minutes ago       Exited (0) 18 minutes ago                       trusting_lalande
03cfdd9caf1d        devopsdockeruh/pull_exercise        "node index.js"          27 minutes ago       Exited (0) 25 minutes ago                       lucid_tereshkova
(base) $ docker exec -it confident_banach bash
root@f9a95d0b0760:/usr/app# tail -f ./logs.txt
Secret message is:
"Docker is easy"
Fri, 17 Jul 2020 16:38:38 GMT
Fri, 17 Jul 2020 16:38:41 GMT
Fri, 17 Jul 2020 16:38:44 GMT
Fri, 17 Jul 2020 16:38:47 GMT
Secret message is:
"Docker is easy"
Fri, 17 Jul 2020 16:38:53 GMT
Fri, 17 Jul 2020 16:38:56 GMT
Fri, 17 Jul 2020 16:38:59 GMT
Fri, 17 Jul 2020 16:39:02 GMT
Secret message is:
"Docker is easy"
Fri, 17 Jul 2020 16:39:08 GMT
Fri, 17 Jul 2020 16:39:11 GMT
cFri, 17 Jul 2020 16:39:14 GMT
^C
root@f9a95d0b0760:/usr/app# exit
```