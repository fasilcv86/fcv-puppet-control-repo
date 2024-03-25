# cat site-modules/profile/manifests/sysadmins.pp
class profile::sysadmins {


  group { 'sysadmins':
    ensure => present,
  }


  user { 'fasil.test':
    ensure => absent,
    uid    => '9999',
    groups => 'sysadmins',

  user { 'fasil.admin':
    ensure => present,
    uid    => '9992',
    groups => 'sysadmins',
   }
  }
}
