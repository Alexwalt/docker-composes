#!/bin/bash
source /home/oracle/.bash_profile
rm -rf /home/oracle/app/oracle/flash_recovery_area/helowin/control02.ctl
cp /home/oracle/app/oracle/oradata/helowin/control01.ctl /home/oracle/app/oracle/flash_recovery_area/helowin/control02.ctl
sqlplus /nolog
> conn /as sysdba
> shutdown immediate
> startup
> alter user system identified by system;
> alter user sys identified by system;
> create user mike identified by mikeops;
> c connect,resource,dba to mike;
> alter system set processes=2000 scope=spfile;
> select * from dba_users t where t.username = 'MIKE';