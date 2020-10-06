# ftrack-event-server-docker

Pype's Ftrack Event Server Ubuntu Linux Docker Container

In this directory run following commands

    docker build -t pype-ftrack-event-server .
    docker run --restart=always -v <PATH TO PIPELINE DIR>:/mnt/pipeline -e FTRACK_API_USER="<service-user>" -e FTRACK_API_KEY="<service-user-api>" pype-ftrack-event-server
