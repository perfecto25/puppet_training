class puppet_tests::scope2 {
  #$color = "green"
  #notify { "this is from scope2: color is ${color}": }

  @package { 'htop':
    ensure  => installed,
    tag     => "htop",
    #noop    => true,
  }
  
  }
