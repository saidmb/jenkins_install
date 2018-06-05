node default {
  file { '/root/README':
    ensure => file,
    content => 'This is a readme',
    owner   => 'root',
  }
}

node 'master.puppet.vm' {
  include role::master_server
  file {'/root/R_master':
    ensure => file,
    #content => “Welcome to ${fqdn}”,
    owner => 'root',
  }
}

node 'jenkinstest.puppet.vm' {
  #include role::jenkins_server
    file {'/root/R_jenkinstest':
    ensure => file,
    #content => “Welcome to ${fqdn}”,
    owner => 'root',
  }
}
