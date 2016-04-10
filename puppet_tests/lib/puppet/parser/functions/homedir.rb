Puppet::Parser::Functions.newfunction(:homedir,
  :type   => :rvalue,
  :arity  => 1,
  :doc    => 'Returns linux home dir ofa  username'
                                     ) do |args|
  user = args[0]
  raise ArgumentError, "Expects a string" unless user.class == String
  
  homedir = `eval echo ~#{user}`
  ###puts "#{homedir}" 

                                     end



