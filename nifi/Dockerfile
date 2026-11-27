# syntax=docker/dockerfile:1-labs
ARG NIFI_VERSION=2.12.0
FROM apache/nifi:${NIFI_VERSION}
ARG NIFI_VERSION

VOLUME --unset /opt/nifi/nifi-current/logs
VOLUME --unset /opt/nifi/nifi-current/conf
VOLUME --unset /opt/nifi/nifi-current/database_repository
VOLUME --unset /opt/nifi/nifi-current/flowfile_repository
VOLUME --unset /opt/nifi/nifi-current/content_repository
VOLUME --unset /opt/nifi/nifi-current/provenance_repository
VOLUME --unset /opt/nifi/nifi-current/python_extensions
VOLUME --unset /opt/nifi/nifi-current/nar_extensions
VOLUME --unset /opt/nifi/nifi-current/state

ARG MAVEN_URL=https://repo1.maven.org/maven2/org/apache/nifi

ADD --chown=nifi:nifi --chmod=644 \
    ${MAVEN_URL}/nifi-hadoop-libraries-nar/${NIFI_VERSION}/nifi-hadoop-libraries-nar-${NIFI_VERSION}.nar \
    /opt/nifi/nifi-current/nar_extensions/

ADD --chown=nifi:nifi --chmod=644 \
    ${MAVEN_URL}/nifi-hadoop-nar/${NIFI_VERSION}/nifi-hadoop-nar-${NIFI_VERSION}.nar \
    /opt/nifi/nifi-current/nar_extensions/
    
ADD --chown=nifi:nifi --chmod=644 \
    ${MAVEN_URL}/nifi-parquet-nar/${NIFI_VERSION}/nifi-parquet-nar-${NIFI_VERSION}.nar \
    /opt/nifi/nifi-current/nar_extensions/

COPY core-site.xml hdfs-site.xml /etc/hadoop/conf/