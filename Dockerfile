FROM ubuntu:latest
MAINTAINER fnndsc "dev@babymri.org"

ENV DEBIAN_FRONTEND=noninteractive

ARG pype_config_git_url="https://github.com/pypeclub/pype_config.git"
ARG pype_config_git_branch="master"

# install basic dependent packages
RUN apt-get update \
  && apt-get install -y iputils-ping wget apt-utils git gnupg

# install python dependent packages
RUN apt-get update \
  && apt-get install -y python3-pip python3-dev python3-venv \
  && cd /usr/local/bin \
  && ln -s /usr/bin/python3 python \
  && pip3 install --upgrade pip

# set python3 as default
RUN update-alternatives --install /usr/bin/python python /usr/bin/python3 10

# go to opt directory
WORKDIR /opt
RUN chmod -R 0777 /opt

# git clone pype-setup to /opt/pype-setup
RUN git clone -b master https://github.com/pypeclub/pype-setup.git pype-setup
RUN ls -l /opt
# give execution premissions
RUN chmod -R o+x /opt/pype-setup
WORKDIR /opt/pype-setup

# pype deploy and install virtualenv
RUN ./pype deploy

# Add startup script
COPY ./run_event_server.sh /opt/run_event_server.sh
RUN chmod +x /opt/run_event_server.sh

# Run the startup script
CMD ["/opt/run_event_server.sh"]
