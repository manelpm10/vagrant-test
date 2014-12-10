class php
{
	package { 'php5':
		ensure => installed,
	}

	package { 'php5-curl':
		ensure => installed,
		require => Package['php5']
	}

	package { 'php5-memcached':
		ensure => installed,
		require => [ Package['php5'], Package['memcached'] ]
	}
}
