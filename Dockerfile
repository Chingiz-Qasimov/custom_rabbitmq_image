FROM rabbitmq:3.8-management
RUN apt-get update -y
RUN apt-get upgrade -y
RUN apt-get install wget -y
RUN rabbitmq-plugins enable --offline rabbitmq_mqtt rabbitmq_federation_management rabbitmq_stomp
RUN wget https://github.com/prometheus/node_exporter/releases/download/v1.5.0/node_exporter-1.5.0.linux-amd64.tar.gz
RUN tar xvfz node_exporter*
CMD ./node_exporter-1.5.0.linux-amd64/node_exporter
