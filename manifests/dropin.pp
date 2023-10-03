class tang::dropin {
  assert_private()

  systemd::dropin_file { 'override.conf':
    unit    => 'tangd.socket',
    content => "[Socket]\nListenStream=7500\n",
  }
}
