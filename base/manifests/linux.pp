class base::linux (
  $ntp_pkg_name = $::base::params::ntp_pkg_name,
  $ntp_svc_name = $::base::params::ntp_svc_name
  
) inherits ::base::params {

  
#----[ Packages ]

  package {'ntp':
    name      => $ntp_pkg_name,
    ensure    => present,
  }

#----[  Service ]
  service { 'ntp':
    name    => $ntp_svc_name,
    ensure  => running,
    require => Package["${ntp_pkg_name}"]
  }

}
