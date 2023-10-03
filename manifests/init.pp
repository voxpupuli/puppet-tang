# @summary Tang is a server for binding data to network presence
#
# This module installs the tang server which will be used by clevis.
#
# @param package_name The name of the tang package
# @param service_name Name of the tang service
#
# @example
#   include tang
class tang (
  Array[String[1]] $package_name,
  String[1]        $service_name,
) {
  include tang::install
  include tang::dropin
  include tang::service

  Class['tang::install']
  -> Class['tang::dropin']
  -> Class['tang::service']

  Class['tang::install']
  -> Class['tang::service']

}
