class profile::ssh_server {
  package {'openssh-server':
    ensure => present,
  }
  service { 'sshd':
    ensure => 'running',
    enable => 'true',
  }
  ssh_authorized_key { 'root@master.puppet.vm':
    ensure => present,
    user   => 'root',
    type   => 'ssh-rsa',
    key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQD1OJ3bej6wU06EZxScTMBKhK9fvfEHAEVZN9LTl9UWbdua5bm8pQSZMbNq+SwjYBuWVqkGBYcKQbaVrnKvK9se9xhNc8jxnfIOF0D5ArbxsYJ/t3tWodvIhR+oxeANFDVhkoGQXFF07mE4uuuoe3P+qVQfmFt/cZ4IDbLmreZuDe/5uDf7PwbaRrIBrrJ3fylCyKVN4nxhTtHcvcMo3pUa4CR6exDgxB2OeUzDZH3Zioq0PwoSKkBfLhBgfMnbUTX/exG+X+G9wIOOGYxOuHxNPK8C4TPHGVpC4XbFrfTuXo4U+ITv3fQLEDqOfM+BPJsUhpMje73YMM9lp2MJpJ6p',
  }  
}
