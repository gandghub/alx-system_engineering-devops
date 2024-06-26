# Increase file limits for user 'holberton' in limits.conf

exec { 'increase-hard-file-limit':
  command => 'sed -i "/^holberton hard/s/5/50000/" /etc/security/limits.conf',
  path    => ['/usr/local/bin', '/bin'],
}

exec { 'increase-soft-file-limit':
  command => 'sed -i "/^holberton soft/s/4/50000/" /etc/security/limits.conf',
  path    => ['/usr/local/bin', '/bin'],
}
