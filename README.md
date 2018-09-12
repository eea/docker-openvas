# [eeacms/openvas-pg](https://hub.docker.com/r/eeacms/openvas-pg/)

Docker image for OpenVAS - slightly modified from [mattias-ohlsson/openvas](https://hub.docker.com/r/mattiasohlsson/openvas/): set to run openvas with HTTPS and enforced cipher order


## Run

- Username: admin
- Password: admin

> https://hostname/

List of variables used as parameters by gsad in the startd script and their values:

undefined: GSAD_LISTEN="--listen=127.0.0.1"

undefined: GSAD_HTTP_ONLY="-http-only"

undefined: GSAD_PORT="--port=9392"

GSAD_MLISTEN="--mlisten=127.0.0.1"

GSAD_MPORT="--mport=9390"

GSAD_KEY="--ssl-private-key=/etc/pki/openvas/private/CA/serverkey.pem"

GSAD_CERT="--ssl-certificate=/etc/pki/openvas/CA/servercert.pem"

TLS_PRIORITIES="--gnutls-priorities=SECURE128:-AES-128-CBC:-CAMELLIA-128-CBC:-VERS-SSL3.0:-VERS-TLS1.0"

### Create a new OpenVAS container

    docker create --network=host --name=openvas eeacms/openvas-pg

### Start your container

    docker start openvas

### Update feed

    docker exec openvas update

#### View logs

    docker logs --follow openvas
