# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include apache
class apache (
  String $package_name,
  String $install_state,
  String $config_ensure,
  String $config_path,
) {
  contain apache::install
  contain apache::config

  Class['apache::install']
  -> Class['apache::config']
}
