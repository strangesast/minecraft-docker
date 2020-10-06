from openjdk

volume /data
workdir /data

run yum install -y wget
run wget https://launcher.mojang.com/v1/objects/bb2b6b1aefcd70dfd1892149ac3a215f6c636b07/server.jar -O /server.jar

cmd ["java", "-Xmx2G", "-Xms1G", "-jar", "/server.jar", "nogui"]
