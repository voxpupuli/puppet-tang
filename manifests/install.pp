# class tang::install
# used by tang main class only.
class tang::install {
  assert_private()

  package { $tang::package_name:
    ensure => present,
  }
}
