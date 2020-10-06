# ftrack-event-server-docker

Pype's Ftrack Event Server Ubuntu Linux Docker Container

In this directory run following commands

docker build -t pypeFtrackEventServer .
docker run --restart=always -d -v <PATH TO PIPELINE>:/mnt/pipeline -e FTRACK_API_USER="<service-user>" -e FTRACK_API_KEY="<service-user-api>" pypeFtrackEventServer
