#!/usr/bin/env bash

echo -n "Enter your kerberos username > "
read username

echo -n "Enter your kerberos password > "
read password

echo $password | kinit $username

echo -n "Enter the hive udf path jar > "
read hive_udf_path

echo -n "Enter the udf name > "
read udf_name

echo -n "Enter the udf class name > "
read udf_class_name

echo -n "Enter hive server hostname > "
read hive_hostname


hadoop hdfs -mkdir hdfs:///user/hue/udf
hadoop dfs -put $hive_udf_path hdfs:///user/hue/udf/$udf_name

beeline -u jdbc:hive2://$hive_hostname:10000 -f registrer_udf.hql --hivevar udf_name=$udf_name udf_class_name=$udf_class_name

