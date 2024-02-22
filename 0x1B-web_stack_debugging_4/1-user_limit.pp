# Fixing limit for holberton user
exec { 'hard_limit':
  command  => 'sed -i "s/holberton hard nofile 5/holberton hard nofile 1000/g" /etc/security/limits.conf',
  provider => 'shell',
}
exec { 'soft_limit':
  command  => 'sed -i "s/holberton soft nofile 4/holberton soft nofile 1000/g" /etc/security/limits.conf',
  provider => 'shell',
}
