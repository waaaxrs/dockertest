FROM ubuntu
MAINTAINER aaaaa

RUN apt-get -y update
RUN apt-get -y install libaio1 unzip
ADD instantclient-basic-linux.x64-11.2.0.3.0.zip /
ADD instantclient-sqlplus-linux.x64-11.2.0.3.0.zip /
ADD instantclient-sdk-linux.x64-11.2.0.3.0.zip /
ADD instantclient-jdbc-linux.x64-11.2.0.3.0.zip /
RUN unzip instantclient-basic-linux.x64-11.2.0.3.0.zip
RUN unzip instantclient-sqlplus-linux.x64-11.2.0.3.0.zip
RUN unzip instantclient-sdk-linux.x64-11.2.0.3.0.zip
RUN unzip instantclient-jdbc-linux.x64-11.2.0.3.0.zip

ENV LD_LIBRARY_PATH instantclient_11_2
ENV ORACLE_HOME=/instantclient_11_2/
ENV LD_LIBRARY_PATH="$ORACLE_HOME"
ENV PATH="$ORACLE_HOME:$PATH"

RUN export ORACLE_HOME=/instantclient_11_2/
RUN export LD_LIBRARY_PATH="$ORACLE_HOME"
RUN export PATH="$ORACLE_HOME:$PATH"
