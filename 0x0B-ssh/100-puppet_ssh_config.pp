# Puppet ssh config
exec { 'disable_password_authentication':
  command  => "echo 'PasswordAuthentication no' >> /etc/ssh/sshd_config",
  provider => 'shell',
}
exec { 'set_identity_file':
  command  => "echo 'IdentityFile ~/.ssh/school#' >> /etc/ssh/sshd_config",
  provider => 'shell',
}
