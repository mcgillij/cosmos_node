# Sets up and syncs Cosmos node

Prerequisites:

- docker
- docker-compose

Start docker-compose

```
docker-compose up -d
```

This will run ansible inside the container and provision the node.

```
./bin/provision
```

This is a weird one, where systemd is installed in the container and allows multiple processes to run.

This will allow using ansible without hosing your local machine doing things.

