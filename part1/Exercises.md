
# Exercise 1.1

```bash
(base)$ docker ps -a
CONTAINER ID        IMAGE               COMMAND                  CREATED              STATUS                          PORTS               NAMES
286686bd4f09        mongo               "docker-entrypoint.s…"   About a minute ago   Exited (0) 9 seconds ago                            competent_galois
839a7e9320e1        mongo               "docker-entrypoint.s…"   2 minutes ago        Exited (0) About a minute ago                       hopeful_gagarin
b7995d810319        nginx               "/docker-entrypoint.…"   3 minutes ago        Exited (0) 17 seconds ago                           serene_austin
bfe1da111c09        nginx               "/docker-entrypoint.…"   3 minutes ago        Up 3 minutes                    80/tcp              zen_golick
8eedb1eb883e        nginx               "/docker-entrypoint.…"   4 minutes ago        Exited (0) 3 minutes ago                            focused_hodgkin
46778f625800        node                "docker-entrypoint.s…"   4 minutes ago        Exited (0) 4 minutes ago                            modest_poitras
5a3d82ad7267        nginx               "/docker-entrypoint.…"   6 minutes ago        Up 6 minutes                    80/tcp              inspiring_goldstine
d6bdf7a2958f        nginx               "/docker-entrypoint.…"   15 minutes ago       Exited (0) 14 minutes ago                           quirky_wescoff
```

# Exercise 1.2

```bash
(base)$ docker ps -a
CONTAINER ID        IMAGE               COMMAND             CREATED             STATUS              PORTS               NAMES
(base)$ docker images
REPOSITORY          TAG                 IMAGE ID            CREATED             SIZE
(base)$ 
```

# Exercise 1.3

```bash
(base)$ docker run -it devopsdockeruh/pull_exercise
Give me the password: basics
You found the correct password. Secret message is:
"This is the secret message"
```

# Exercise 1.4

```bash
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

# Exercise 1.5

```bash
(base) $ docker run -d -it --name ubu1.5 ubuntu:16.04 
5d0148106190cd5ddd4a7e3f1866d70f1ffd1f6a70e13263c4c5cc95a9a648ac
(base) $ docker exec -it ubu1.5 apt-get update
Get:1 http://archive.ubuntu.com/ubuntu xenial InRelease [247 kB]
...
(base) $ docker exec -it ubu1.5 apt-get install curl
Reading package lists... Done
Building dependency tree       
Reading state information... Done
The following additional packages will be installed:
...
(base) $ docker exec -it ubu1.5  sh -c 'echo "Input website:"; read website; echo "Searching.."; sleep 1; curl http://$website;'
Input website:
helsinki.fi
Searching..
<!DOCTYPE HTML PUBLIC "-//IETF//DTD HTML 2.0//EN">
<html><head>
<title>301 Moved Permanently</title>
</head><body>
<h1>Moved Permanently</h1>
<p>The document has moved <a href="http://www.helsinki.fi/">here</a>.</p>
</body></html>
(base) $ 
```

# Exercise 1.6

Dockerfile: ./exec-1.6/Dockerfile

```bash
(base) Keisarinna:exec-1.6 annaluhtakanta$ docker build -t docker-clock .
Sending build context to Docker daemon  2.048kB
Step 1/2 : FROM devopsdockeruh/overwrite_cmd_exercise
 ---> 3d2b622b1849
Step 2/2 : CMD ["-c"]
 ---> Running in 9df2c4170437
Removing intermediate container 9df2c4170437
 ---> 18096575d4a1
Successfully built 18096575d4a1
Successfully tagged docker-clock:latest
(base) Keisarinna:exec-1.6 annaluhtakanta$ docker run docker-clock
1
2
3
4
5...
```

" Exercise 1.7.