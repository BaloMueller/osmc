class newrelic_sysmond::install () {

    package { "newrelic-sysmond":
        ensure  => latest,
        require => Class["newrelic_sysmond::repo"];
    }
}