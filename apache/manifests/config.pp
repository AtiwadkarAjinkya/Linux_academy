# @summary
#   This class manages the config for apache
class apache::config {
  file {'apache_config':
    ensure => $apache::config_ensure,
    path   => $apache::config_path,
    mode   => '0644',
    owner  => 'root',
    group  => 'root',
  }
}
