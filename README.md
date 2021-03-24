# jamulus-pi
Docker image used for running Jamulus Server on your Raspberry Pi!

## Usage after building the image
It is good to use *docker-compose.yml* file to start the container.
To do it, execute this command (you need to be in the directory where *docker-compose.yml* file is).

```bash
docker-compose up -d
```

You should run

```bash
docker exec -it jamulus-pi update
```

in order to install Jamulus Server.


## How to use built-in scripts
I wrote scripts to start, stop and update Jamulus Server (https://github.com/Cimlah/jamulus-setup-scripts).
To use them, you can get inside container by executing:

```bash
docker exec -it jamulus-pi bash
```

and inside executing: *start*, *stop*, *restart* and *update*.
Or from outside docker:

```bash
docker exec -it jamulus-pi start #To start Jamulus Server. You can add ' &' at the end of this command to run it in background (docker exec -it jamulus-pi start &)
docker exec -it jamulus-pi stop #To stop Jamulus Server.
docker exec -it jamulus-pi restart #To restart Jamulus Server, also can be used with ' &'.
docker exec -it jamulus-pi update #To update/install Jamulus Server.
```