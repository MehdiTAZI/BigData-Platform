#Log as postgres and create and configure postgres files located in /var/lib/pgsql/data (pg_hba.conf and postgresql.conf)

#create database
echo -n "Enter the database hostname > "
read database_hostname
echo -n "Enter the database username > "
read database_username

echo "creating database"
createdb -h $database_hostname samples_database -U postgres

echo "creating tables"
psql -h $database_hostname -U $database_username -d samples_database -a -f "script.sql"

echo "you can check database creation using the following command psql -h $database_hostname -U $database_username -d samples_database"
echo " you can check that the table exists using \list and \dt"
echo "you can check that the colomns are correct using : select column_name, data_type, character_maximum_length from INFORMATION_SCHEMA.COLUMNS where table_name = 'samples_dataset';"
