class tang::service {
  assert_private()

  service { $service_name:
    ensure => running,
    enable => true,
  }
}
