# @summary
#  This class install apache server on the host
#class apache::install (
#  String $package_name = $apache::params::package_name,
#  String $install_state = $apache::params::install_state,
#) inherits apache::params {
#  package { 'apache_package':
#    name   => $package_name,
#    ensure => $install_state,
#  }
}
class apache::isntall {
  package{ 'apache_package':
    name   => $::package_name,
    ensure => $::install_state,
  }
}
