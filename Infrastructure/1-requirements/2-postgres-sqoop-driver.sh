echo -n "Enter the database hostname > "
read database_hostname

curl -L 'http://jdbc.postgresql.org/download/postgresql-9.1-901-1.jdbc4.jar' -o postgresql-9.1-901-1.jdbc4.jar
sudo cp postgresql-9.1-901-1.jdbc4.jar /var/lib/sqoop
sudo chmod 755 /var/lib/sqoop/sqljdbc4.jar
sqoop list-tables --connect jdbc:postgresql://$database_hostname/samples_database --username admin -P

echo "if you can see the table name that's mean that sqoop is capable to interact with postgres"