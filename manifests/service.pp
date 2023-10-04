# @summary tang::service class used by tang main class only.
# @api private
class tang::service {
  assert_private()

  service { $tang::service_name:
    ensure => running,
    enable => true,
  }
}
