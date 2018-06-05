ass jenkins (
  $url = 'https://s3.amazonaws.com/Minecraft.Download/versions/1.12.1/minecraft_server.1.12.1.jar',
  $install_dir = '/opt/minecraft'
){

  file { $install_dir:
    ensure => directory,
  }
  
  file { "${install_dir}/jenkins_server.jar":
    ensure => file,
    source => $url,
  }

  package {'java':
    ensure => present,
  }

  file {'/etc/systemd/system/jenkins.service':
    ensure => file,
    source => 'puppet:///modules/jenkins/jenkins.service',
  }
  
  service { 'jenkins':
    ensure => running,
    enable => true,
  }
}
