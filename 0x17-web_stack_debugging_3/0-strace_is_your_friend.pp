# Creating the index.html file
file { '/var/www/html/index.html':
  ensure  => file,
  path    => '/var/www/html/index.html',
  mode    => '0744',
  owner   => 'www-data',
  group   => 'www-data',
  content => 'Hello World!',
}
