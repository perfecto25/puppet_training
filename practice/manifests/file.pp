class practice::file {

package { 'motd2':
  name => 'httpd',


}

file { 'motd2':
  path    => '/etc/motd',
  content => 'boston suuux',
}


}
