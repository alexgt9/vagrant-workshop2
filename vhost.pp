define workshop::apache::vhost (
    $document_root = '/var/www',
    $server_name = 'localhost',
    $access_log = '/var/log/apache2/access_log.log',
    $error_log = '/var/log/apache2/error.log',
    $server_admin = 'webmaster@localhost'
)
{
    $vhost_dir = '/etc/apache2/sites-available/'
    $vhost_links = '/etc/apache2/sites-enabled/'

    $vhost_file = "$vhost_dir$name"
    $vhost_link = "$vhost_links$name"

    file {
        [$vhost_dir, $vhost_links]:
            ensure  => present,
            purge   => true,
            recurse => true,
            require => Package['apache2'],
    }

    ## Add your code here in order to ensure vhost_file is present, and the content of the file
    ## is the one in the template. And to ensure the vhost_link points to vhost_file.
    ## Remember to notify service apache2, and the link should be created after the vhost_file
}