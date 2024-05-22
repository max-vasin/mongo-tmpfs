# mongo-tmpfs

The `TMPFS_SIZE` environment variable can be used to configure the size (in MB) of the tmpfs volume.

Build image

```
docker build -t mongo-ram:5 .
``` 

Run container

```
docker run  --name mongo-ram \
            --privileged \
            -p 27017:27017 \
            mongo-ram:5
```

Run cluster

```
docker exec -it mongo-ram mongo
```
Inside container type

```
rs.initiate()
```