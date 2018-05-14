FROM confluentinc/cp-kafka-connect:4.0.0

ENV CONNECT_PLUGIN_PATH="/etc/kafka-connect/plugins"

RUN mkdir -p /etc/kafka-connect/plugins
COPY kc-plugins /etc/kafka-connect/plugins
COPY kafka-elastic-sink-connector/target/kafka-elastic-sink-connector-1.0-SNAPSHOT.jar \
  kc-plugins/elastic-sink-connector/
COPY debezium/target/debezium-parent-0.8.0-SNAPSHOT-tests.jar \
  kc-plugins/debezium-connector-postgres/
