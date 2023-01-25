#for some reason jvogel cannot create databases
#so we need to use root msql command line to create a database
#and then grant privilages to jvogel

sudo mysql -u root -p
CREATE DATABASE goatDb;
GRANT ALL PRIVILEGES ON goatDb.* TO 'jvogel'@'localhost';
SHOW GRANTS FOR 'jvogel'@'localhost';
