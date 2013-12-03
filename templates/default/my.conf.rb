[mysqld]
datadir=<%= @datadir_path %>
socket=<%= @socket_file_path %>

# Disabling symbolic-links is recommended to prevent assorted security risks
symbolic-links=0

# Settings user and group are ignored when systemd is used (fedora >= 15).
# If you need to run mysqld under a different user or group,
# customize your systemd unit file for mysqld according to the
# instructions in http://fedoraproject.org/wiki/Systemd
user=mysql

# Semisynchronous Replication
# http://dev.mysql.com/doc/refman/5.5/en/replication-semisync.html
# uncomment next line on MASTER
;plugin-load=rpl_semi_sync_master=semisync_master.so
# uncomment next line on SLAVE
;plugin-load=rpl_semi_sync_slave=semisync_slave.so

# Others options for Semisynchronous Replication
;rpl_semi_sync_master_enabled=1
;rpl_semi_sync_master_timeout=10
;rpl_semi_sync_slave_enabled=1

# http://dev.mysql.com/doc/refman/5.5/en/performance-schema.html
;performance_schema


character-set-server=<%= @server_charset %>
log-error=<%= @log_file_path %>
#general_log=<%= @general_log %>
#general_log_file=<%= @general_log_file_path %>
#slow_query_log=<%= @slow_query_log %>
#slow_query_log_file=<%= @slow_query_log_file_path %>
expire_logs_days=<%= @expire_logs_days %>
innodb_data_file_path=<%= @innodb_data_file_path %>
innodb_file_per_table

[mysqld_safe]
log-error=<%= @mysqld_safe_log_file_path %>
pid-file=<%= @pid_file_path %>
character-set-server=<%= @server_charset %>

[mysqldump]
default-character-set=<%= @server_charset %>

[mysql]
default-character-set=<%= @server_charset %>
socket=<%= @socket_file_path =>

