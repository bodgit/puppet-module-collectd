class collectd::plugin::write_log (
  $format   = 'JSON',
  $ensure   = 'present',
) {

  include ::collectd

  validate_string($format)

  collectd::plugin { 'write_log':
    ensure  => $ensure,
    content => template('collectd/plugin/write_log.conf.erb'),
  }
}
