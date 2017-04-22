#!/usr/bin/env bash
echo -n "Enter kerberos username > "
read kerberos_username

kinit $kerberos_username

echo -n "Enter the database hostname > "
read database_hostname

echo -n "Enter the HDFS directory from where export the data > "
read hdfs_egress_path

echo -n "Enter the egress RMBS table (where to put data) > "
read rdbms_egress_path

hadoop dfs -mkdir /user/mtazi/samples_result_less2digit_hdfs_dataset
sqoop export --connect jdbc:postgresql://$database_hostname/samples_database --username admin -P --table $rdbms_egress_path --export-dir $hdfs_egress_path --direct --where "result <40"