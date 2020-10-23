FROM openjdk:8-jre-alpine

WORKDIR /minecraft

RUN mkdir -p world
RUN wget --no-check-certificate https://media.forgecdn.net/files/2778/975/FTBRevelationServer_3.2.0.zip
RUN unzip FTBRevelationServer_3.2.0.zip
RUN rm FTBRevelationServer_3.2.0.zip
RUN chmod u+x FTBInstall.sh ServerStart.sh
RUN echo "eula=TRUE" >> eula.txt

RUN /minecraft/FTBInstall.sh

EXPOSE 25565

VOLUME ["/minecraft/world", "/minecraft/backups", "/minecraft/server.properties", "/minecraft/whitelist.json", "/minecraft/ops.json"]

CMD ["/bin/sh", "/minecraft/ServerStart.sh"]
