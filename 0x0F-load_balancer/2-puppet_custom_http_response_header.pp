# Automating the installation and the set up of the nginx server
exec { 'create IP adress variable':
  command  => 'IP_Adress=$(hostname -I | awk "{print $1}")',
  provider => 'shell',
}
exec { 'create host variable':
  command  => 'host=$(hostname)',
  provider => 'shell',
}
exec { 'update apt-get':
  command  => 'sudo apt-get update',
  provider => 'shell',
}
exec { 'install nginx':
  command  => 'sudo apt-get install -y nginx',
  provider => 'shell',
}
exec { 'start nginx':
  command  => 'sudo service nginx start',
  provider => 'shell',
}
exec { 'Hello world':
  command  => 'echo "Hello World!" | sudo tee /var/www/html/index.html',
  provider => 'shell',
}
exec { 'redirection':
  command  => "echo 'server {
    listen 80 ;
    listen [::]:80;
    root /var/www/html;
    index index.html;
    server_name ${host};
    add_header X-Served-By ${hostname};
    location /redirect_me {
        return 301 /;
    }
}' | sudo tee /etc/nginx/sites-available/default",
  provider => 'shell',
}
exec { 'Restart nginx':
  command  => 'sudo service nginx restart',
  provider => 'shell',
}
