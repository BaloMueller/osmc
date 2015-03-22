class newrelic_sysmond::repo () {

  apt::source { 'newrelic':
    location          => 'http://apt.newrelic.com/debian/',
    release           => 'newrelic',
    repos             => 'non-free',
    required_packages => 'debian-archive-keyring',
    key               => '548C16BF',
    key_server        => 'subkeys.pgp.net',
    include_src       => false
  }
  
  # apt::key { 'newrelic':
  #   key        => '548C16BF',
  #   key_source => 'https://download.newrelic.com/',
  # }

  # apt::source { 'newrelic':
  #   location    => 'http://apt.newrelic.com/debian/',
  #   repos       => 'newrelic',
  #   release     => 'non-free',
  #   include_src => false,
  #   require     => Apt::Key['newrelic'],
  # }
 
  # package { $newrelic_sysmond::params::package_name:
  #   ensure       => installed,
  #   require      => Apt::Source['newrelic'],
  # }
}