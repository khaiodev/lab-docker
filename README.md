# lab-docker

### Login Docker Hub
```
docker login -u {user}
```

### Docker Build
```
docker build -t {nameimage}:{tag} .
```

### Docker Tag
```
docker tag {imagelocal}:{tag} {userdockerhub}/{repodockerhub}:{tagvalue}
```

### Docker Push
```
docker push {userdockerhub}/{repodockerhub}:{tagvalue}
```

### Docker Run
```
docker run -dp 80:80 -v /root:/var/www/imagesexemplos {image}:{tag}
```

### Acessar bash Container
```
docker exec -it {idcontainer} /bin/bash
```

### Logs do Container
```
docker container logs {idcontainer}
```
### Exemplo de aplicação de monitoramento
```
docker run -d --name=grafana -p 3000:3000 grafana/grafana
```

### Docker Compose
```
docker compose up -d
```
### Coletar Dockerfile de container
```
alias dive="docker run -ti --rm  -v /var/run/docker.sock:/var/run/docker.sock wagoodman/dive"
dive {imagecontainer:tag}
```