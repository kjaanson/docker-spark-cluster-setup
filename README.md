# Sample Spark cluster setup within Docker containers
Test to set up spark cluster using datascience docker stack spark images.
Runs docker master together with two workers.

Jupyter notebook runs on http://localhost:8888/
Spark master WebUI is accessible on http://localhost:8080/

To start cluster run: `docker-compose up`

In notebook folder files `pyspark.ipnb` and `toree.ipynb` run example notebooks on the cluster.


# Problems encountered
  * At first spark workers were not able to create worker dir within their containers. Changed worker dir location with SPARK_WORKER_DIR env variable to volume mounted directory. This should be fixed within containers by creating correct directory beforehand.
  * There were some wierd bugs due to volume mounting of `/work` dir in workers, possibly due to the write access being wrong. Fixed by creating wirs by hand first. This should also be fixes when docker image has the dir created first

# ToDo Next
  * Create Dockerfile to create Spark master/worker from all-spark-notebook datascience docker stack image
  * Create Dockerfile for lean and clean Spark master/worker

# References
  * https://jupyter-docker-stacks.readthedocs.io/en/latest/using/specifics.html
  * https://docs.hortonworks.com/HDPDocuments/HDP3/HDP-3.0.1/data-operating-system/content/examples_of_running_Spark_jobs_with_Docker_containers.html
  * https://docs.docker.com/compose/compose-file/#external_links
  * https://grzegorzgajda.gitbooks.io/spark-examples/content/basics/docker.html
  * https://github.com/gettyimages/docker-spark
  * http://alexanderwaldin.github.io/pyspark-quickstart-guide.html
  * https://stackoverflow.com/questions/39986507/spark-standalone-configuration-having-multiple-executors - configuring notebook to take less resources within cluster

