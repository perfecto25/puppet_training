class mongodb::install {

exec { 'apt-key':
  path    => '/usr/bin',
  command => 'sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv EA312927',
  before  => File['sources'],
}

$content = "deb http://repo.mongodb.org/apt/ubuntu trusty/mongodb-org/3.2 multiverse"

file { 'sources': 
  ensure  => present,
  name    => '/etc/apt/sources.list.d/mongodb-org-3.2.list',
  content => "${content}",
  before => Exec['update'],
}

exec { 'update':
  command => 'sudo apt-get update',
  path    => '/usr/bin',
  onlyif  => "test -f /etc/apt/sources.list.d/mongodb-org-3.2.list",
  before  => Package['mongodb-org'],
}

package { 'mongodb-org':
  ensure  => '3.2.1',
  require => Exec['update'],
}

file { '/etc/mongod.conf':
  ensure  => present,
  require => Package['mongodb-org'],
}







}
