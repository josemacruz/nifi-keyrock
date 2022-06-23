ARG NIFI_VERSION=1.16.3

FROM apache/nifi:${NIFI_VERSION}

ARG NIFI_VERSION

ARG SECRET_DIR="./secrets"
ARG CONF_DIR="./conf"

COPY --chown=nifi:nifi ${SECRET_DIR} /opt/secrets
COPY --chown=nifi:nifi ${CONF_DIR}/* /opt/nifi/nifi-${NIFI_VERSION}/conf/

RUN chmod +r /opt/secrets/* && \
    chmod +wr /opt/nifi/nifi-${NIFI_VERSION}/conf/*