node default {
  file {'/root/README':
    ensure => file,
    content => 'Puppet Configuration file',
    owner => 'root',
  }
  
  file {'/root/README':
    owner => root,
  }
}
