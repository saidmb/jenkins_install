class jenkins (
  $url = 'https://pkg.jenkins.io/redhat-stable/jenkins.repo'
  $install_dir = '/var/lib/jenkins'
){

  file { $install_dir:
    ensure => directory,
  }
  
  file { '/etc/yum.repos.d/jenkins.repo':
    ensure => file,
    source => 'https://pkg.jenkins.io/redhat-stable/jenkins.repo',
  }

#rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io.key

  package {'java':
    ensure => present,
  }

  file {'/etc/sysconfig/jenkins':
    ensure => file,
    source => 'puppet:///modules/jenkins/jenkins',
  }
  
  service { 'jenkins':
    ensure => running,
    enable => true,
  }
}
