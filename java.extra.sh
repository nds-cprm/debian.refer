
# especific

export CATALINA_HOME=/usr/share/tomcat9

export CATALINA_BASE=/opt/tomcat

export JAVA_OPTS="-server -Djava.awt.headless=true -server \
    -XX:PerfDataSamplingInterval=500 -XX:SoftRefLRUPolicyMSPerMB=36000 -XX:NewRatio=2 \
        -XX:+UseG1GC -XX:MaxGCPauseMillis=200 -XX:ParallelGCThreads=20 -XX:ConcGCThreads=5 \
    -XX:InitiatingHeapOccupancyPercent=70 -XX:+CMSClassUnloadingEnabled"

export GEOSERVER_OPTS=\
                "-Dorg.geotools.referencing.forceXY=true \
         -Dorg.geotools.shapefile.datetime=true -Dgeoserver.login.autocomplete=off \
         -DGEOSERVER_CONSOLE_DISABLED=${GEOSERVER_WEB_UI_DISABLED:-FALSE}"

export JAVA_OPTS="${JAVA_OPTS} ${GEOSERVER_OPTS}"

# especific

exec $CATALINA_HOME/bin/catalina.sh run


