FROM jupyter/all-spark-notebook

USER root

RUN mkdir /work && chmod 777 /work

COPY jars/spark-cassandra-connector-assembly-2.3.2-15-g60b513ac.jar /spark-cassandra-connector-assembly-2.3.2-15-g60b513ac.jar

USER $NB_UID