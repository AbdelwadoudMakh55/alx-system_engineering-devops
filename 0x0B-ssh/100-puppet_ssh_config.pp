# Configuring ssh client file through puppet
file_line { 'password':
  path	  => "~/.ssh/config",
  line    => "PasswordAuthentication no",
  match   => "^PasswordAuthentication yes$",
}
file_line { 'private_key':
  path    => "~/.ssh/config",
  line    => "IdentityFile ~/.ssh/school",
  match   => "^IdentityFile ~/.ssh/id_rsa$",
}
