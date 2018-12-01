FROM jupyter/all-spark-notebook

USER root

RUN mkdir /work && chmod 777 /work

RUN mkdir -p /opt/spark-events && chmod 777 /opt/spark-events

USER $NB_UID

VOLUME [ "/work" ]
