# Automating the installation and the set up of the nginx server
file { '/etc/nginx/sites-available/default':
  ensure  => file,
  path    => '/etc/nginx/sites-available/default',
  content => "server {
	listen 80 ;
	listen [::]:80;
	root /var/www/html;
	index index.html;
	server_name _;
	add_header X-Served-By ${hostname};
	error_page 404 /custom_404.html;
	location = /custom_404.html {
           root /var/www/html;
           internal;
    	}
    	location /redirect_me {
           return 301 /;
    	}
}",
}
exec { 'restart nginx'
  command  => 'sudo service nginx restart',
  provider => 'shell',
}
