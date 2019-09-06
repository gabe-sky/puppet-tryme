# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include tryme
class tryme {

  file { 'C:/Windows/Is/Great':
    ensure => directory,
  }
  notify { $facts['fqdn']: }

}
