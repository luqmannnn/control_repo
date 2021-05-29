node default {
}

node 'maser_puppet.vm' {
  include role::master_server
}
