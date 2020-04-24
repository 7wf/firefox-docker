### Firefox Docker

Running Firefox inside a Docker container.

#### Running

```sh
$ git clone https://github.com/7wf/firefox-docker && cd firefox-docker
$ docker build -t firefox-docker .
```

###### Running on the host

```sh
$ docker run -it \
  --net host \
  --v /tmp/.X11-unix:/tmp/.X11-unix \
  --env DISPLAY=unix$DISPLAY \
  --device /dev/snd \
  --name firefox \
  firefox-docker
```

###### Running with Xephyr

If you want to see Firefox running inside a *fake* `DISPLAY`, you can use `Xephyr`.

```sh
$ Xephyr -br -ac -noreset -screen 1280x720 :100
```

```sh
$ docker run -it \
  --net host \
  --env DISPLAY=unix:100 \
  --device /dev/snd \
  --name firefox \
  firefox-docker
```
