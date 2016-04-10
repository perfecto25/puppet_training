# Fact: certname
#
Facter.add('certname') do
  setcode do
    %x[/usr/local/bin/puppet config print certname].chomp
  end
end

