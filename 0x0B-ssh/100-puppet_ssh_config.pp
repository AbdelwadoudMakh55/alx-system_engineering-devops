# Puppet ssh config
exec { 'disable_password_authentication':
  command  => "sudo sed -i 's/PasswordAuthentication yes/PasswordAuthentication no/' /etc/ssh/sshd_config",
  provider => 'shell',
}
exec { 'set_identity_file':
  command  => "sudo sed -i 's#IdentityFile ~/.ssh/id_rsa#IdentityFile ~/.ssh/school#' /etc/ssh/sshd_config",
  provider => 'shell',
}
