# Killing a process
exec { 'kilmenow':
  command => 'pkill -f killmenow',
}
