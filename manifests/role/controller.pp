class grizzly::role::controller inherits grizzly::role {
  class { 'grizzly::firewall::pre': } ->
  class { 'grizzly::profile::mysql': } ->
  class { 'grizzly::profile::rabbitmq': } ->
  class { 'grizzly::profile::keystone': } ->
  class { 'grizzly::profile::glance::api': } ->
  class { 'grizzly::profile::cinder::api': } ->
  class { 'grizzly::profile::nova::api': } ->
  class { 'grizzly::profile::quantum::server': } ->
  class { 'grizzly::profile::horizon': } ->
  class { 'grizzly::firewall::post': }
}