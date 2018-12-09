
import org.apache.spark.sql.cassandra._

val df = spark.read.cassandraFormat("kv", "test").load()

df.agg(sum("value") as "sum").show()
