Following commands will download the docker file for ontobrowser, buid it, and run it.


```bash
$ curl -Lo "docker.tar.xz" "https://raw.githubusercontent.com/nikhitajatain/ontobrowser/master/docker/docker.tar.xz"
$ tar xf docker.tar.xz
$ cd docker
$ docker build -t ontobrowser .
$ docker run --name ontobrowser ontobrowser:latest
```


