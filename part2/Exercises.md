
# Exercise 2.1

Docker-compose: [docker-compose 2.1](./exec-2.1/docker-compose.yaml)

```bash
(base) $ docker-compose up
Creating network "app_default" with the default driver
Creating first-volume ... done
Attaching to first-volume
first-volume    | Wrote to file /usr/app/logs.txt
first-volume    | Wrote to file /usr/app/logs.txt
first-volume    | Wrote to file /usr/app/logs.txt
^CGracefully stopping... (press Ctrl+C again to force)
Stopping first-volume ... done

```


# Exercise 2.2

Docker-compose: [docker-compose 2.2](./exec-2.2/docker-compose.yaml)

```bash
(base) $ docker-compose up
Creating ports_exercise ... done
Attaching to ports_exercise
ports_exercise    | 
ports_exercise    | > ports_exercise@1.0.0 start /usr/app
ports_exercise    | > node index.js
ports_exercise    | 
ports_exercise    | Listening on port 80, this means inside of the container. Use -p to map the port to a port of your local machine.
```

Ports configured correctly!!

# Exercise 2.3

Docker-compose: [docker-compose 2.3](./exec-2.3/docker-compose.yaml)

```bash
(base) $ docker-compose up
Building backend
Step 1/6 : FROM node
 ---> 37ad18cd8bd1
...
Building frontend
Step 1/7 : FROM node
 ---> 37ad18cd8bd1
....
Creating testing_frontend_1 ... done
Creating testing_backend_1  ... done
Attaching to testing_frontend_1, testing_backend_1
backend_1   | 
backend_1   | > backend-example-docker@1.0.0 start /
backend_1   | > cross-env NODE_ENV=production node index.js
backend_1   | 
frontend_1  | 
frontend_1  | > frontend-example-docker@1.0.0 start /
frontend_1  | > webpack --mode production && serve -s -l 5000 dist
...
backend_1   | Started on port 8000
...
frontend_1  | INFO: Accepting connections at http://localhost:5000
```


