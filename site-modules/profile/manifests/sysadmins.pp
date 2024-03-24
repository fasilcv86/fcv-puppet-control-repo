# cat site-modules/profile/manifests/sysadmins.pp
class profile::sysadmins {


  group { 'sysadmins':
    ensure => present,
  }


  user { 'fasil.test':
    ensure => present,
    uid    => '9999',
    groups => 'sysadmins',
  }
}
