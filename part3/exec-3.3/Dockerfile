FROM ubuntu:16.04 

WORKDIR /dir

COPY script.sh . 

ENV DOCKER_PASSWORD=<PASSWORD>
ENV DOCKER_USERNAME=auuaa
ENV GIT_URL=https://github.com/Auua/FullStack-Backend.git
ENV REPO=fs-puhelinluettelo

RUN apt-get update && apt-get install -y \
    curl \
    git && \
    curl -fsSL "https://download.docker.com/linux/static/stable/x86_64/docker-19.03.8.tgz" \
  | tar -xzC /usr/local/bin --strip=1 docker/docker && \
  chmod +x ./script.sh 

ENTRYPOINT ["./script.sh"]

CMD ["sh -c"]