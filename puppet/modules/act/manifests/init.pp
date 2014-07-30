class act {
  include stdlib

  $act_build_deps = [
    'build-essential',
    'libgdbm-dev',
    'libperl-dev',
    'libgmp3-dev',
    'libfreetype6-dev',
    'libgif-dev',
    'libjpeg62-dev',
    'libpng3-dev',
    'libtiff4-dev',
    'libpq-dev',
    'libt1-dev'
  ]

  package { $act_build_deps: ensure => present }

  class { 'postgresql::globals':
    encoding => 'UTF8',
    locale => 'en_US',
  }->
  class { 'postgresql::server':
  }

}
