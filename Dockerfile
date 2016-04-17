FROM java:8

WORKDIR /tmp

RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y vim curl unzip
RUN rm -rf /var/lib/apt/lists/*

# spark install
RUN wget http://ftp.meisei-u.ac.jp/mirror/apache/dist/spark/spark-1.6.1/spark-1.6.1-bin-hadoop2.6.tgz && \
    tar zxfv spark-1.6.1-bin-hadoop2.6.tgz -C /usr/local/
ENV SPARK_HOME /usr/local/spark-1.6.1-bin-hadoop2.6
ENV PATH $PATH:$SPARK_HOME/bin

# sdkman
RUN curl -s get.sdkman.io | bash && \
    /bin/bash -c "source /root/.sdkman/bin/sdkman-init.sh && \
    sdk install gradle 2.12"


CMD ["/bin/bash"]

