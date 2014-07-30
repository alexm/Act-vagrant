class vagrant::apt(
  $release,
  $extra      = ['updates','security'],
  $proxy_host = '172.28.128.1',
  $proxy_port = '3142'
) {

  include stdlib

  class { '::apt':
    proxy_host           => $proxy_host,
    proxy_port           => $proxy_port,
    purge_sources_list   => true,
    purge_sources_list_d => true,
  }

  $extra_releases = flatten([$release, prefix($extra, "$release-")])
  vagrant::apt_source { $extra_releases: }
}
