# Cloudera standalone iso-dev env
#
# mehditazi/datalake

# 1 - docker pull mehditazi/datalake:latest
# 2 - point on the Dockerfile parent Directory
# 3 - docker build -t mehditazi/datalake:stable [Dockerfile_Directory]
# 4 - docker run -d --name datalake --privileged=true -p 8080:8080 --ulimit nproc=65535 --ulimit nofile=65535 --ulimit core=65535 mehditazi/datalake:stable
# 5 - docker exec -it datalake bash
# 6 - docker stop datalake
# 7 - docker start datalake


# 1 - Pull the base image.
FROM mehditazi/datalake:latest

# 2 - MAINTAINER
MAINTAINER Mehdi TAZI <mehdi@tazimehdi.com>

# 3 - disable yum fastestmirror
RUN \
	echo "enabled=0" >> /etc/yum/pluginconf.d/fastestmirror.conf
  

# 4 - Install Ansible.
RUN \
	yum clean all && \
	yum -y update && \
	yum -y install ansible \
	yum update ansible

# 5 - Configure ansible inventory
#RUN \
	#cat /etc/ansible/hosts
	# todo : use templating #echo "[local_env] \ "localhost"" >> /etc/ansible/hosts \

# 6 - Create scripts directory
RUN \	
	mkdir -p scripts/datalake

# 7 - Copy ansible scripts
# TODO : rm/mv ansible-datalakes
COPY ../../hadoop-datalake/init-environment.yaml scripts/datalake/init-environment.yaml
COPY ../../hadoop-datalake/new-lab-poc.yaml scripts/datalake/new-lab-poc.yaml
COPY ../../hadoop-datalake/new-project.yaml scripts/datalake/new-project.yaml
COPY ../../hadoop-datalake/new-user.yaml scripts/datalake/new-user.yaml
COPY init-local-env.yaml scripts/datalake/init-local-env.yaml

# 13 - Initialize the environement
#RUN \
#	ansible-playbook /var/datalakes-scripts/ansible-datalake/init-environment.yaml

# 13 - Expose ports.
EXPOSE 8080