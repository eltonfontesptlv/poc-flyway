docker run --name migrations --rm \
    --env-file "./${APP_ENV:=dev}.env" \
    -v $PWD/sql/migrations:/flyway/sql \
    -v $PWD/conf:/flyway/conf \
    flyway/flyway -q migrate