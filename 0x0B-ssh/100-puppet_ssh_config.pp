# 100-puppet_ssh_config.pp
file_line { 'Turning off password auth':
  path   => '/etc/ssh/sshd_config',
  line   => 'PasswordAuthentication no',
  match  => '^#?PasswordAuthentication',
}
file_line { 'private key':
  path   => '~/.ssh/config',
  line   => 'IdentityFile ~/.ssh/school',
  match  => '^#?IdentityFile ~/.ssh/id_rsa',
}
