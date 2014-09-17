# Class: workshop
#
#
class workshop {
	Exec {
		path => ["/bin/", "/sbin/", "/usr/bin/", "/usr/sbin/"]
	}

	group { 'puppet':
		ensure => present,
	}
	
	class{ workshop::repos: }
}

