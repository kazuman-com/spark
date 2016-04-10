FROM java:8

WORKDIR /tmp

RUN wget http://ftp.meisei-u.ac.jp/mirror/apache/dist/spark/spark-1.6.1/spark-1.6.1-bin-hadoop2.6.tgz && \
    tar zxfv spark-1.6.1-bin-hadoop2.6.tgz -C /usr/local/

ENV SPARK_HOME /usr/local/spark-1.6.1-bin-hadoop2.6
ENV PATH $PATH:$SPARK_HOME/bin

CMD ["/bin/bash"]

