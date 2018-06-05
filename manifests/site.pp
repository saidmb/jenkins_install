node default {
  file { '/root/README':
    ensure => file,
    content => 'This is a readme: 321',
    owner   => 'root',
  }
}

node 'master.puppet.vm' {
  include role::master_server
  file {'/root/R_master':
    ensure => file,
    content => 'Welcome to the project: 654',
    owner => 'root',
  }
}

node 'jenkinstest.puppet.vm' {
  include role::jenkins_server
    file {'/root/R_jenkinstest':
    ensure => file,
    content => 'Welcome to the project: 987',
    owner => 'root',
  }
}
