
/***************
node default {
  file { '/root/README':
    ensure => file,
    content => 'This is a readme: 321',
    owner   => 'root',
  }
}
*******************/

node 'jenkinstest.puppet.vm' {
  notify{'@@@@@@@@@@@@@This code is inside: site.pp - jenkinstest.puppet.vm': }
  include role::jenkins_server

/******************
  file {'/root/R_jenkinstest':
    ensure => file,
    content => 'Welcome to the project: 987\n',
    owner => 'root',
  }
******************/  
}

node 'master2.puppet.vm' {
  notify{'@@@@@@@@@@@@@This code is inside: site.pp - master2.puppet.vm': }
  include role::master_server
/*******************
  file {'/root/R_master':
    ensure => file,
    content => 'Welcome to master2.puppet.vm: 654\n',
    owner => 'root',
  }
********************/
}
