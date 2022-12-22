FROM ubuntu:20.04
RUN apt-get update && \
    apt-get install -y openjdk-8-jdk && \
    apt-get install -y ant && \
    apt-get clean;
    
RUN apt-get update && \
    apt-get install ca-certificates-java && \
    apt-get clean && \
    update-ca-certificates -f;
ENV JAVA_HOME /usr/lib/jvm/java-8-openjdk-amd64/
RUN export JAVA_HOME
RUN apt-get install -y wget && \
    apt-get install -y gnupg && \
    wget -qO - https://artifacts.elastic.co/GPG-KEY-elasticsearch | gpg --dearmor -o /usr/share/keyrings/elasticsearch-keyring.gpg && \
    apt-get install -y apt-transport-https && \
    echo "deb [signed-by=/usr/share/keyrings/elasticsearch-keyring.gpg] https://artifacts.elastic.co/packages/8.x/apt stable main" | tee /etc/apt/sources.list.d/elastic-8.x.list && \
    apt-get update && \
    apt-get install -y logstash && \
    wget https://artifacts.elastic.co/downloads/beats/filebeat/filebeat-8.5.3-amd64.deb && \
    dpkg -i filebeat-8.5.3-amd64.deb && \
    filebeat setup -e && \
    service filebeat start
COPY --chown=root:filebeat filebeat.yml /etc/filebeat/filebeat.yml