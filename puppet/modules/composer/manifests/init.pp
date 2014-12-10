class composer {

  package { "curl":
    ensure => installed,
  }

  exec { 'composer_install':
    command => 'curl -sS https://getcomposer.org/installer | php -- --install-dir=/bin --filename=composer',
    path    => '/usr/bin:/usr/sbin',
    require => Package['curl'],
    creates => '/bin/composer'
  }
}
