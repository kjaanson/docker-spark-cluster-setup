import org.apache.spark.sql.cassandra._

/** Computes an approximation to pi */
object SparkCassandraTest {
  def main(args: Array[String]) {
    val spark = SparkSession
      .builder
      .appName("Spark Cassandra Test")
      .getOrCreate()
    
    val df = spark.read.cassandraFormat("kv", "test").load()

    df.agg(sum("value") as "sum").show()

    spark.stop()

  }
}