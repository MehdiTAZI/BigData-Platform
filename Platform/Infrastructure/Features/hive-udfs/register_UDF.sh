#!/usr/bin/env bash

echo -n "Enter the hive udf path jar > "
read hive_udf_path

echo -n "Enter the udf name > "
read udf_name

sudo $hive_udf_path /user/hue/udf_name