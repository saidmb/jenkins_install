class profile::base {
  notify{'@@@@@@@@@@@@@ TOP OF base.pp': }
  user {'admin':
    ensure => present
  }
}
