# Configuring ssh client file through puppet
exec { 'sed':
  command  => "sudo sed -i 's/PasswordAuthentication yes/PasswordAuthentication no/g' ~/.ssh/config",
  provider => 'shell',
}
exec { 'sed':
  command  => "sudo sed -i 's#IdentityFile ~/.ssh/id_rsa#IdentityFile ~/.ssh/school#' ~/.ssh/config",
  provider => 'shell',
}
