class jenkins (
  $url = 'https://pkg.jenkins.io/redhat-stable/jenkins.repo'
  $install_dir = '/var/lib/jenkins'
){
/*****************************
  file { $install_dir:
    ensure => directory,
  }
  
  file { '/etc/yum.repos.d/jenkins.repo':
    ensure => file,
    source => 'https://pkg.jenkins.io/redhat-stable/jenkins.repo',
    before => Service['jenkins'],
  }

  package {'java':
    ensure => present,
  }
  
  exec { import_jenkins:
    command     =>  '/bin/rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io.key',
    cwd         => '/root'
    creates     =>  '/etc/sysconfig/jenkins',
    path        => ['/usr/bin', '/usr/sbin'],
    #subscribe   => File['/etc/yum.repos.d/jenkins.repo'],
    #refreshonly => true,
  }

  package {'jenkins':
    ensure => present,
  }

  file {'/etc/sysconfig/jenkins':
    ensure => file,
    source => 'puppet:///modules/jenkins/jenkins',
  }
  
  service { 'jenkins':
    ensure  => running,
    enable  => true,
    require => Package['java'], Package['jenkins'], File['/etc/yum.repos.d/jenkins.repo'], File['/etc/sysconfig/jenkins']],
  }
  *************************/
}
