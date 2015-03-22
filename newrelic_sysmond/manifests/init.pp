class newrelic_sysmond ($licence_key) {

  # declare all parameterized classes
  class { 'newrelic_sysmond::params': }
  class { 'newrelic_sysmond::repo': }
  class { 'newrelic_sysmond::install': }
  class { 'newrelic_sysmond::config': }

  # declare relationships
  Class['newrelic_sysmond::params'] ->
  Class['newrelic_sysmond::repo'] ->
  Class['newrelic_sysmond::install'] ->
  Class['newrelic_sysmond::config']
}