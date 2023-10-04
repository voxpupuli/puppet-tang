class tang::install {
  assert_private()

  package { $tang::package_name:
    ensure => present,
  }
}
