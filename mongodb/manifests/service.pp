class mongodb::service {


service { 'mongod':
  ensure    => running,
  subscribe => File['/etc/mongod.conf'],
  }






}
