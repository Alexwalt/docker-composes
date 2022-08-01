# Readme

# run in primary node
```sql
CREATE USER 'repl'@'%' IDENTIFIED BY 'Repl@123321!';
GRANT REPLICATION SLAVE ON *.* TO 'repl'@'%';

SHOW MASTER STATUS;
```

# run in secondby node

```sql
CHANGE MASTER TO MASTER_HOST='mysql-source-0.mysql-source',MASTER_USER='repl',MASTER_PASSWORD='Repl@123321!',MASTER_LOG_FILE='mysql-bin.000000',MASTER_LOG_POS=0;

START SLAVE;

show master status \G
show slave status \G
```



