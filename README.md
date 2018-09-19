# [eeacms/openvas-pg](https://hub.docker.com/r/eeacms/openvas-pg/)

Docker image for OpenVAS - slightly modified from [mattias-ohlsson/openvas](https://hub.docker.com/r/mattiasohlsson/openvas/): 

- set to run openvas with HTTPS 
- enforced cipher order
- added ssmtp RPM to send email alerts
- added tini init

## Note: Due to a bug in the openvas-manager version shipped with Fedora, the schedules currently do not work. 
In spite of the openvas-manager RPM package versions being different across Fedora versions, the actual source used behind the RPM build is the same in Fedora 27, 27 and at this time (September 2018) the developement version for Fedora 29.
The issue is not limited to Fedora (see https://bugs.debian.org/cgi-bin/bugreport.cgi?bug=868123) but other distros might feature updated packages.

## Run

- Username: admin
- Password: admin

> https://hostname/

List of variables that gsad can use as parameters in the startd script and their values:

unused: GSAD_LISTEN="--listen=127.0.0.1"

unused: GSAD_HTTP_ONLY="-http-only"

unused: GSAD_PORT="--port=9392"

GSAD_MLISTEN="--mlisten=127.0.0.1"

GSAD_MPORT="--mport=9390"

GSAD_KEY="--ssl-private-key=/etc/pki/openvas/private/CA/serverkey.pem"

GSAD_CERT="--ssl-certificate=/etc/pki/openvas/CA/servercert.pem"

TLS_PRIORITIES="--gnutls-priorities=SECURE128:-AES-128-CBC:-CAMELLIA-128-CBC:-VERS-SSL3.0:-VERS-TLS1.0"

You can also add a $SMTP_SERVER in your environment and it will be replaced in the ssmtp configuration

### Create a new OpenVAS container

    docker create --network=host --name=openvas eeacms/openvas-pg

### Start your container

    docker start openvas

### Update feed

    docker exec openvas update

#### View logs

    docker logs --follow openvas
