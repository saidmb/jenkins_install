class role::jenkins_server {

  notify{'@@@@@@@@@@@@@ TOP OF jenkins_server.pp': }
  include profile::base
  include profile::jenkins_profile
  
  notify{'@@@@@@@@@@@@@ BOTTOM OF jenkins_server.pp': }
}
