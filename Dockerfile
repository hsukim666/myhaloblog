FROM halohub/halo:2.6

EXPOSE 8090

ENTRYPOINT ["sh", "-c", "java ${JVM_OPTS} \
    org.springframework.boot.loader.JarLauncher ${0} ${@} \
    --spring.r2dbc.url=${DB_URL} \
    --spring.r2dbc.username=${DB_USRENAME} \
    --spring.r2dbc.password=${DB_PASSWORD} \
    --spring.sql.init.platform=${DB_TYPE} \
    --halo.external-url=${URL} \
    --halo.security.initializer.superadminusername=${ADMIN} \
    --halo.security.initializer.superadminpassword=${PASS}"]
