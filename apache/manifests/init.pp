class apache (
  
  $package_name = $apache::params::package_name,
  $service_name = $apache::params::service_name,
  $vhost_dir = $apache::params::vhost_dir,
  $conf_dir_parent = $apache::params::conf_dir_parent,
  $conf_dir = $apache::params::conf_dir,
  $conf_file = $apache::params::conf_file,
  $conf_template = $apache::params::conf_template,
  $log_dir = $apache::params::log_dir,
  $document_root = $apache::params::document_root

) inherits apache::params {

include apache::package
include  apache::service



file { $document_root:
        ensure  => directory,
        recurse => true,
}

file { $log_dir:
        ensure  => directory,
        recurse => true,
}



file { $conf_dir_parent:
        ensure  => directory,
        recurse => true,
}


## Create Config Dir
#exec { "mkdir ${conf_dir}":
#  path    => "/usr/sbin",
#  creates => $conf_dir,
#  require => Package['apache'],
#  onlyif  => ["test -f ${conf_dir}"],
#}

#file { $conf_dir:
#  ensure  => directory,
#  recurse => true,
#  notify  => Class['apache::service'],
#  require => Package['apache'],
#}


file { "${conf_dir}/${conf_file}":
  ensure  => file,
  content => template('apache/httpd.conf.erb'),
  notify  => Class['apache::service'],
  require => Package['apache'],
}



file { $vhost_dir:
        ensure  => directory,
        recurse => true,
}

apache::vhost { "default":
  port          => 80,
  document_root => $document_root,
  servername    => $servername,
  vhost_dir     =>  $vhost_dir

}





}
