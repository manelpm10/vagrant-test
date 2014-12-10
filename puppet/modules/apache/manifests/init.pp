class apache
{
	package { 'apache2':
		ensure => installed,
	}

	service { 'apache2':
		enable => true,
		ensure => running,
		require	=> Package['apache2'],
	}

	file { '/etc/apache2/sites-available/default':
		ensure 	=> file,
		content	=> template('apache/vhost.erb'),
		require	=> Package['apache2'],
		notify	=> Service['apache2'],
	}
}