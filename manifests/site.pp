#####################################
#
#  site.pp
#
#####################################


### defining node, assigning role, setting up jenkins
node 'master2.puppet.vm' {
  include role::master_server
  include jenkins_setup
}

/***************
node default {
  file { '/root/README':
    ensure => file,
    content => 'This is a readme: 123',
    owner   => 'root',
  }
}

node 'jenkinstest.puppet.vm' {
  include role::jenkins_server
  include jenkins_setup
}
*******************/
