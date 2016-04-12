class puppet_tests::scope1 inherits puppet_tests::scope2
{

$color = red  
#$color = "red"
#notify { "this is from scope1, color is ${color}": }

#Package {
#  noop => true,
#}

include puppet_tests::scope2

Package <| |> {
   noop => true,
}


#realize Package['htop']
#package { 'htop':
#  ensure => installed,
#}


}
