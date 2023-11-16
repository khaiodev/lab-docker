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
docker run -dp 80:80 {image}:{tag}
```
