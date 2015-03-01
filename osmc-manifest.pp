include owncloud
#include 'tor'

exec { "set locale":
    command => "/usr/sbin/locale-gen en_US.UTF-8"
}

package { ['vim', 'htop', 'build-essential', 'git', 'iftop', 'nload']:
	ensure => "installed"
}

class {'tor':
}