class practice {


  host { 'webserver01':
        name         => 'centos7node.myserver.com',
        ip           => '192.168.233.233',
        host_aliases => ['web01','webmonkey01'],
        comment      => 'this is webmonkey!!!',
  }


}
