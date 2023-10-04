# @summary class tang::install used by tang main class only.
# @api private
class tang::install {
  assert_private()

  package { $tang::package_name:
    ensure => present,
  }
}
