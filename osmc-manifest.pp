include apt
include owncloud
#include tor
#include newrelic_sysmond

exec { "set locale":
    command => "/usr/sbin/locale-gen en_US.UTF-8"
}

package { ['vim', 'htop', 'build-essential', 'git', 'iftop', 'nload']:
	ensure => "installed"
}

# class {'tor':
# }

# Newrelic doesn't exist for Raspberry yet
# class { 'newrelic_sysmond':
#   licence_key => 'it works!'
# }
