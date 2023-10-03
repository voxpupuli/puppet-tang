class tang::install {
  assert_private()

  package { $package_name:
    ensure => present,
  }
}
