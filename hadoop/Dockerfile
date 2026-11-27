FROM apache/hadoop:3.5.0
USER root
RUN mkdir -p /hadoop/dfs && chown -R hadoop:hadoop /hadoop/dfs

COPY init-hdfs.sh /opt/hadoop/init-hdfs.sh
RUN chmod +x /opt/hadoop/init-hdfs.sh

USER hadoop