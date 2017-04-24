#!/usr/bin/env bash

# todo :
# se
echo -n "Enter kerberos username > "
read kerberos_username

kinit $kerberos_username

echo -n "Enter the database hostname > "
read database_hostname

echo -n "Enter the HDFS directory where to ingest the data > "
read hdfs_ingest_path

hadoop dfs -mkdir /user/mtazi/samples_hdfs_dataset
sqoop import --connect jdbc:postgresql://$database_hostname/samples_database --username admin -P --table samples_dataset --target-dir $hdfs_ingest_path/samples_dataset --direct /
--incremental append \
--check-column id \
-last value $last_value