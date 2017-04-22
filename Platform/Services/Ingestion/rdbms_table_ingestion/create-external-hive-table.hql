CREATE EXTERNAL TABLE IF NOT EXISTS hive_samples_dataset(operation_name STRING, owner STRING, operation_type STRING,first_operand INT,second_operand INT, result INT)
    COMMENT 'Data about operations imported from postgres'
    ROW FORMAT DELIMITED
    FIELDS TERMINATED BY ","
    STORED AS TEXTFILE
    location '${hdfs_path}';