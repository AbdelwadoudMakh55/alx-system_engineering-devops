# Fixing ULIMIT for nginx
exec { 'ULIMIT':
  command  => 'sed -i "s/ULIMIT=\"-n 15\"//g" /etc/default/nginx',
  provider => 'shell',
}
exec { 'Restart_nginx':
  command  => 'sudo service nginx restart',
  provider => 'shell',
}
