#!/usr/bin/env bash

echo -n "Enter the oozie hostname > "
read oozie_hostname

sudo -u hdfs hdfs dfs -put src/ /Projects/RUN/data_management/Scripts/data_integration/

# to run an oozie job
oozie_return=$(oozie job -oozie http://$oozie_hostname:11000/oozie -config src/oozie/job.properties -run)
oozie_job=$(echo $oozie_return | awk '{ gsub("job: ", "") } 1')
oozie job -oozie http://$oozie_hostname:11000/oozie -info ${oozie_job}

echo "to check to state of the current job state  : oozie job -oozie http://$oozie_hostname:11000/oozie -info ${oozie_job}"

watch oozie job -oozie http://$oozie_hostname:11000/oozie -info ${oozie_job}
