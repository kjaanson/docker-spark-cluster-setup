FROM jupyter/all-spark-notebook

USER root

RUN mkdir /work && chmod 777 /work

USER $NB_UID

VOLUME [ "/work" ]
