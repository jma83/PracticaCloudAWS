#!/bin/sh
        export JDBC_DATABASE_DRIVER=com.mysql.cj.jdbc.Driver
        export JDBC_DATABASE_URL=jdbc:mysql://mimo-play-recetas.cdxzquuisjkj.eu-central-1.rds.amazonaws.com:3306/mimo_play_recetas
        export JDBC_DATABASE_USERNAME=admin
        export JDBC_DATABASE_PASSWORD=admin123


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

