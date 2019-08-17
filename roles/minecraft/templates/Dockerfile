FROM openjdk:8-jre-alpine

WORKDIR /minecraft

RUN mkdir -p world
RUN wget --no-check-certificate https://media.forgecdn.net/files/2712/63/FTBRevelationServer_3.0.1.zip
RUN unzip FTBRevelationServer_3.0.1.zip
RUN rm FTBRevelationServer_3.0.1.zip
RUN chmod u+x FTBInstall.sh ServerStart.sh
RUN echo "eula=TRUE" >> eula.txt
# RUN useradd -m -U minecraft
# RUN chown -R minecraft .

# USER minecraft

RUN /minecraft/FTBInstall.sh

# Bugfix that enables yellowrite and uranium generation
RUN sed -i -e 's/bigreactors:brore/bigreactors:oreyellorite/g' /minecraft/config/cofh/world/04_overworld_ores.json

EXPOSE 25565

VOLUME ["/minecraft/world", "/minecraft/backups", "/minecraft/server.properties", "/minecraft/whitelist.json", "/minecraft/ops.json"]

CMD ["/bin/sh", "/minecraft/ServerStart.sh"]
