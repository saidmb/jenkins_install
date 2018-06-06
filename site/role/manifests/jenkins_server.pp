#####################################
#
#  role::jenkins_server.pp
#
#####################################


class role::jenkins_server {
  include profile::base
  include profile::jenkins_profile
}
