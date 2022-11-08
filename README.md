
# POC Flyway 
POC to independently secure migrations


## Environment variables

To run this project you need to create a .env configuration file by adding/filling in the variables below

```bash
FLYWAY_DRIVE
FLYWAY_URL
FLYWAY_BASELINEONMIGRATE
FLYWAY_USER
FLYWAY_PASS
DB_USE_SSL
DB_KEYSTORE_PATH
DB_KEYSTORE_PASSWORD
DB_TRUSTSTORE_PATH
DB_TRUSTSTORE_PASSWORD
```



## Running locally

Using variables directly in docker

```bash
  ./docker.sh
```

Using a configuration file for docker

```bash
  ./run.sh
```

Creating an image with command line

```bash
  docker compose up
```

