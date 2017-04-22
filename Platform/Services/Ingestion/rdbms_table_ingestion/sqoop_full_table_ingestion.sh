echo -n "Enter kerberos username > "
read kerberos_username

kinit $kerberos_username

echo -n "Enter the database hostname > "
read database_hostname

echo -n "Enter the HDFS directory where to ingest the data > "
read hdfs_ingest_path

hadoop dfs -mkdir /user/mtazi/samples_hdfs_dataset
sqoop import --connect jdbc:postgresql://$database_hostname/samples_database --username admin -P --table samples_dataset --target-dir $hdfs_ingest_path/samples_dataset --direct


echo -n "Enter hive host name > "
read hive_hostname

beeline -u jdbc:hive2://$hive_hostname:10000 -f create-external-hive-table.hql --hivevar hdfs_path=$hdfs_ingest_path/samples_dataset
beeline -u jdbc:hive2://$hive_hostname:10000 -f create-external-hive-parquet-table.hql --hivevar hdfs_path=$hdfs_ingest_path/samples_dataset