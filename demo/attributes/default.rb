default['apt']['compile_time_update'] = true
default[:apache][:default_modules] = [
  'php5',
 'access_compat',
 'unixd',
 'alias',
 'auth_basic',
 'authn_file',
 'setenvif',
 'rewrite',
 'authz_core',
 'log_config',
 'authn_core',
 'authz_host',
 'logio',
 'authz_user',
 'autoindex',
 'expires',
 'dir',
 'env',
 'mime',
 'negotiation',
 'status',
 'systemd',
]
default['apache']['docroot_dir'] = '/var/www/lamp-test/current'
default['apache']['mpm'] = 'prefork'
default[:lamp_test][:environment] = {
  :MYSQL_SOCK => '/var/run/mysql-demo/mysqld.sock',
}
