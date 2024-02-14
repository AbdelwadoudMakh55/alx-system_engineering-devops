# Fixing the .php extension
exec { '.phpp':
  command  => "sed -i 's/phpp/php/g' /var/www/html/wp-settings.php",
  provider => 'shell',
}
exec { 'restart':
  commmand => 'sudo service apache2 restart',
  provider => 'shell',
}
