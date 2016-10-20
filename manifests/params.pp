class locales::params {

  case $::osfamily {
    'Debian': {
      case $::operatingsystemrelease {
        '16.04': {
          $config_file = '/etc/locale.gen'
        }
        default: {
          $config_file = '/var/lib/locales/supported.d/local'
        }
      }
    }
    default: {
      fail("\"${module_name}\" provides no package default value
            for \"${::osfamily}\"")
    }
  }
}
