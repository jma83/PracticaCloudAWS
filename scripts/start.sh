#!/bin/sh
        export JDBC_DATABASE_DRIVER=com.mysql.cj.jdbc.Driver
        export JDBC_DATABASE_URL=
        export JDBC_DATABASE_USERNAME=
        export JDBC_DATABASE_PASSWORD=


        ./bin/play-practica-final \
        -Dhttp.port=80 \
        -Dplay.http.secret.key='^mmvuVYIXRMLJ]<5Iw7QrSwkCXyika`HC7ejgwAQplH>q?Bi;Qv0`8eosUca2D?^' \
        -Dplay.evolutions.db.default.enabled=true \
        -Dplay.evolutions.db.default.autoApply=true \
        -Dplay.evolutions.db.default.autoApplyDowns=true \
        -Dplay.filters.hosts.allowed.0='.' \
        -Ddb.default.driver=${JDBC_DATABASE_DRIVER} \
        -Ddb.default.url=${JDBC_DATABASE_URL} \
        -Ddb.default.username=${JDBC_DATABASE_USERNAME} \
        -Ddb.default.password=${JDBC_DATABASE_PASSWORD} \
        -J-Xms128M \
        -J-Xms256m \
        -J-server \

