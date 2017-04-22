FROM tomcat:8.0

#ADD /tomcat-config/create_tomcat_admin_user.sh /create_tomcat_admin_user.sh
#ADD /tomcat-config/run.sh /run.sh
RUN chmod +x /*.sh

EXPOSE 8080
CMD ["/run.sh"]