# [eeacms/openvas-pg](https://hub.docker.com/r/eeacms/openvas-pg/)

Docker image for OpenVAS - slightly modified from [mattias-ohlsson/openvas](https://hub.docker.com/r/mattiasohlsson/openvas/)


## Run

- Username: admin
- Password: admin

> http://127.0.0.1:443/

### Create a new OpenVAS container

    docker create --network=host --name=openvas eeacms/openvas-pg

### Start your container

    docker start openvas

### Update feed

    docker exec openvas update

#### View logs

    docker logs --follow openvas
