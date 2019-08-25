# @summary
#  Provides the required parameters 
class apache::params {
  $install_state = 'present'

  case $facts['os']['family'] {
    'RedHat': {
      $package_name = 'httpd'
    }
    'Debian': {
      $package_name = 'apache2'
    }
    default: {
      notify {"$facts['os']['family'] not supported": }
    }
  }
}
