Class['puppet::repo::puppetlabs']->Package <| |>
class {
  'puppetdb':
    listen_address   => '0.0.0.0',
    node_ttl         => '180m',
    puppetdb_version => latest
}
class { 'puppet::master': storeconfigs => true, version => latest }
class { 'puppet::agent': }
