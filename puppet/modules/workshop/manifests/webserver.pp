# Class: workshop::webserver
#
#
class workshop::webserver {
	package { 'apache2':
		ensure => installed,
	}

	service { 'apache2':
		enable      => true,
		ensure      => running,
		require    => Package["apache2"],
	}

	include ::php
}

