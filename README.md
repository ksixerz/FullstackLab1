# FullstackLab1



#docker login -u ksixerz

# P1.1
```
docker build -f Dockerfile_scratchP1 -t local/from_scratchp1:v1 . 
docker run -t -d --name "p1alpine" -p 1313:80/tcp local/from_scratchp1:v1

docker build -f Dockerfile_scratchP1ubuntu -t local/from_scratchp1ubuntu:v1 . 
docker run -t -d --name "p1ubuntu" -p 13131:80/tcp local/from_scratchp1ubuntu:v1

docker images
```

# P1.2
## wieloetapowa 

```
docker build -t local/1.2multimulti . -f Dockerfile_1.2.build

docker container create --name extract local/1.2multimulti  
docker container cp extract:/var/node/content-weather-app ./app  
docker container rm -f extract

docker build -f Dockerfile_1.2 --no-cache -t local/1.2multimulti:latest .
rm ./app

docker run -t -d --name "p12Wieloetapowa" -p 12121:3000/tcp local/1.2multimulti:latest
```



## jednoetapowa 
```
docker build -f Dockerfile_1.2Multi -t local/1.2multi .
docker run -t -d --name "p12jednoetapowa" -p 1212:3000/tcp local/1.2multi
```

#docker image inspect 

#docker history


# Zadanie P1.3
```
time DOCKER_BUILDKIT=0 docker build -q --no-cache -f Dockerfile_scratchP1 -t local/p1.3:v1 . 
time DOCKER_BUILDKIT=1 docker build -q --no-cache -f Dockerfile_scratchP1 -t local/p1.3:v1 . 
```


# Zadanie P1.5
```
docker buildx build -t ksixerz/lab:bx --platform linux/arm64,linux/amd64,linux/ppc64le,linux/arm/v7 --push .
```
