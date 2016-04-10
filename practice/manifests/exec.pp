class practice::exec {

exec {'/etc/hosts':
  command => "echo FLUFFY >> /etc/hosts",
  path    => "/usr/bin:/usr/sbin:/bin:",
  unless  => "grep FLUFFY /etc/hosts 2>/dev/null",


}




}
