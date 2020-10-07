# ftrack-event-server-docker

Pype's Ftrack Event Server Ubuntu Linux Docker Container

In this directory run following commands

    docker build -t pype-ftrack-event-server --no-cache .
    docker run --restart=always \
      -e FTRACK_SERVER="<service-user-api>" \
      -e FTRACK_API_USER="<service-user>" \
      -e FTRACK_API_KEY="<service-user-api>" \
      pype-ftrack-event-server

or if you want to link to your server installation pype dirs
    docker build -t pype-ftrack-event-server --no-cache --build-arg pype_config_git_url=<https://git.url> --build-arg pype_config_git_branch=&lt;branch_name> .
    docker run --restart=always -v <PATH TO PIPELINE DIR>:/mnt/pipeline -e FTRACK_API_USER="<service-user>" -e FTRACK_API_KEY="<service-user-api>" pype-ftrack-event-server
