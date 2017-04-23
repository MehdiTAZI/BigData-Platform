#!/usr/bin/env bash

echo -n "Enter kerberos username > "
read kerberos_username

kinit $kerberos_username

echo -n "Enter the database hostname > "
read database_hostname

echo -n "Enter the HDFS directory where to ingest the data > "
read hdfs_ingest_path

hadoop dfs -mkdir /user/mtazi/samples_result_less2digit_hdfs_dataset
sqoop import --connect jdbc:postgresql://$database_hostname/samples_database --username admin -P --table samples_dataset --target-dir $hdfs_ingest_path/samples_result_less2digit_hdfs_dataset --direct --where "result <100"