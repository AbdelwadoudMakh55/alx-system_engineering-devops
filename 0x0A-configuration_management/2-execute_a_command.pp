# Killing a process
exec { 'kilmenow':
  command => 'pkill "killmenow"',
}
