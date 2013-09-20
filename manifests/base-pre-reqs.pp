class{'puppet::repo::puppetlabs': }
Class['puppet::repo::puppetlabs'] -> Package <| |>
package {
  'librarian-puppet':
    ensure   => latest,
    provider => gem,
    require  => Package['ruby1.9.1-dev']
}
package { 'ruby1.9.1-dev': ensure => latest }
package { 'git': ensure => latest }
