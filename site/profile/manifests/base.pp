#####################################
#
#  profile::base.pp
#
#####################################

class profile::base {
  user {'admin':
    ensure => present
  }
}
