FROM ubuntu:latest

# # initial setup of system
# RUN apt-get update
# RUN apt-get install wget apt-utils -y


# Add startup script
COPY ./run_event_server.sh /opt/run_event_server.sh
RUN chmod +x /opt/run_event_server.sh

# Run the startup script
CMD ["/opt/run_event_server.sh"]
