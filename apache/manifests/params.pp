class apache::params {

  if ($::fqdn)
  {
    $servername = $::fqdn
  } else {
    $servername = $::hostname
  }
  
  $document_root = "/var/www/html"
  $log_dir = "/var/log/apache"

  case $::osfamily {
    'RedHat': {

      $package_name = "httpd"
      $service_name = "httpd"
      $conf_dir_parent = "/etc/httpd"
      $conf_dir = "/etc/httpd/conf"
      $vhost_dir = "/etc/httpd/conf.d"
      $conf_file = "httpd.conf"
      $conf_template = "httpd.conf.erb"

      }

    'Debian': {
      $package_name = "apache2"
      $service_name = "apache2"
      $conf_dir_parent = "/etc/apache2"
      $conf_dir = "/etc/apache2/conf"
      $vhost_dir = "/etc/apache2/conf.d"
      $conf_file = "apache2.conf"
      $conf_template = "apache2.conf.erb"
      }
    }


}
