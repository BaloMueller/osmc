class newrelic_sysmond::config () {
  
  exec { "newrelic-set-license":
      unless  => "egrep -q '^license_key=${licence_key}$' /etc/newrelic/nrsysmond.cfg",
      command => "nrsysmond-config --set license_key=${licence_key}",
      notify => Service['newrelic-sysmond'];
  }

  exec { "newrelic-set-ssl":
      unless  => "egrep -q ^ssl=true$ /etc/newrelic/nrsysmond.cfg",
      command => "nrsysmond-config --set ssl=true",
      notify => Service['newrelic-sysmond'];
  }

  service { "newrelic-sysmond":
      enable  => true,
      ensure  => running,
      hasstatus => true,
      hasrestart => true,
      require => Class["newrelic::package"];
  }
}