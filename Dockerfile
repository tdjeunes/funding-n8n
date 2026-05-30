FROM docker.n8n.io/n8nio/n8n

ADD docker-resources /docker-resources

USER root
RUN sh /docker-resources/scripts/install.sh
USER node
