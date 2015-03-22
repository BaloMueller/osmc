class newrelic_sysmond::params () {

	$licence_key = $::newrelic_sysmond::licence_key

  case $::operatingsystem {
    /(Ubuntu|Debian)/: {
      $package_name   = 'newrelic-sysmond'
    }
    default: {
      fail("Module ${module_name} is not supported on ${::operatingsystem}")
    }
  }
}