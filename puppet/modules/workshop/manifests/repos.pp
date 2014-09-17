# Class: workshop::repos
#
#
class workshop::repos {
	class { 'apt':
        always_apt_update    => true,
        purge_sources_list   => true,
        purge_sources_list_d => true,
        purge_preferences_d  => true,
    }
	
	apt::source {
        'debian_wheezy':
            location            => 'http://debian.mirrors.ovh.net/debian/',
            release             => 'wheezy',
            repos               => 'main contrib non-free',
            include_src         => true,
    }

    apt::source {
        'debian_security':
            location            => 'http://security.debian.org/',
            release             => 'wheezy/updates',
            repos               => 'main contrib non-free',
            include_src         => true,
    }


    apt::source {
        'debian_volatile':
            location            => 'http://ftp.de.debian.org/debian/',
            release             => 'wheezy-updates',
            repos               => 'main contrib non-free',
            include_src         => true,
    }

    apt::source {
        '10gen':
            location    => 'http://downloads-distro.mongodb.org/repo/debian-sysvinit',
            release     => 'dist',
            repos       => '10gen',
            key         => '7F0CEB10',
            key_server  => 'keyserver.ubuntu.com',
            include_src => false,
    }
}