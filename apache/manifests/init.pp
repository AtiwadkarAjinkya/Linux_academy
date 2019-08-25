# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include apache
class apache (
  String $package_name,
  String $install_state
) {
  include apache::install
}
