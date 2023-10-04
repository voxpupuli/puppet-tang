# tang::service class
# used by tang main class only.
class tang::service {
  assert_private()

  service { $tang::service_name:
    ensure => running,
    enable => true,
  }
}
