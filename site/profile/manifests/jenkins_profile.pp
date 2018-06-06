class profile::jenkins_profile {
  notify{'@@@@@@@@@@@@@ TOP OF jenkins_setup.pp': }
  include jenkins_setup
}
