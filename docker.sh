docker run --name=migrations --rm \
    -e FLYWAY_BASELINEONMIGRATE=$FLYWAY_BASELINEONMIGRATE \
    -e FLYWAY_DRIVE=$FLYWAY_DRIVE \
    -e FLYWAY_URL="${JDBC_URL}?disableSslHostnameVerification=${DB_USE_SSL:=false}&verifyServerCertificate=${DB_USE_SSL:=false}&useSSL=${DB_USE_SSL:=false}&requireSSL=${DB_USE_SSL:=false}&clientCertificateKeyStoreUrl=file:${DB_KEYSTORE_PATH:=''}&clientCertificateKeyStorePassword=${DB_KEYSTORE_PASSWORD:=''}&trustCertificateKeyStoreUrl=file:${DB_TRUSTSTORE_PATH:=''}&trustCertificateKeyStorePassword=${DB_TRUSTSTORE_PASSWORD:=''}" \
    -e FLYWAY_USER=$FLYWAY_USER \
    -e FLYWAY_PASS=$FLYWAY_PASS \
    -v $PWD/sql/migrations:/flyway/sql \
    -v $PWD/conf:/flyway/conf \
    -v $PWD/certs:/flyway/certs \
    flyway/flyway -q migrate