if $facts['os']['selinux']['enabled'] {
  notice('SELinux is enabled')
} else {
  notice('SELinux is disabled')
}
