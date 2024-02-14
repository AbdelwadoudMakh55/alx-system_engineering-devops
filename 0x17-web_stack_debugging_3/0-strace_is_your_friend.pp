# Fixing the .php extension
exec { '.phpp':
  command  => 'sed -s/phpp/php/g /var/www/html/wp-setting.php',
  provider => 'shell',
}
