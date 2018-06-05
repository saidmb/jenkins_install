class profile::jenkins {
  class {'jenkins':
  ##### change install_dir
    install_dir => '/srv/minecraft',
  }
}
