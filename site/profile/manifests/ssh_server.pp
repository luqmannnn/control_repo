class profile::ssh_server {
  package {'openssh-server':
    ensure => present,
  }
  service {'sshd':
    ensure => running,
    enable => true,
  }
  ssh_authorized_key {'root@master.puppet.vm':
    ensure => present,
    user => 'root',
    type => 'ssh-rsa',
    key => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDRwLDkV5NqnPnu+YflPO+jcghU3gs8kCaq1lHcWQEI33BLWY6eMoDTVLquQ+DBXukT+VVII5gKeYxSJtc1JF38IJCtAqw2QEp2DM/RA85S6k+oOxWCR/Is/EeNUA5TAi5UN78vzRhjl6+efmYTDLI1EG4EqD7YELRe6zjUvelcek7VyaQHTgE2jUj5JU4sTVPqq5VQCaEPuSJFXyIXSdcQ1dA8aH5tYWwkcKfYXRn8QbV5w9CrJCbIAvLsUriR4ypHE6Z921rh5iUrHFUdVIlFNMAkaHBPKt/7WVO8s6xLqr+nVnjGa2huk0vPgoPHIDMgWkDMvXB/iG5eMZeP7tWr',
  }
}
