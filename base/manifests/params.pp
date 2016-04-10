class base::params {

  case $::osfamily {
    'Debian': {
      if ($::operatingsystem == 'Ubuntu' and $::operatingsystemmajrelease in ['12.04','14.04']) {
        $ntp_pkg_name   = 'ntp'
        $ntp_svc_name   = 'ntp'
        }
        }
    
    'RedHat': {
      if ($::operatingsystem == 'CentOS' and $::operatingsystemmajrelease in ['5','6','7']) {
        $ntp_pkg_name   = 'ntp'
        $service_name   = 'ntpd'
        }
        }
    
    default: {
      fail("Module ${module_name} is not supported on ${::operatingsystem}")
      }
    }

# EOF
}
