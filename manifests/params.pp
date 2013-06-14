# Class: tightvnc::params
#
# Params for tightvnc
#
# Parameters:
#
# Sample Usage:
#
class tightvncserver::params {
	$execlaunchpaths = ["/usr/bin", "/usr/sbin", "/bin", "/sbin", "/etc"]
	$executefrom = "/tmp/"

	case $::osfamily {
    'RedHat': {
      $initdpath = '/etc/init.d/tightvncserver'
      $triggeronstartupexec = 'update-rc.d tightvncserver defaults'
    }
    'Debian': {
      $initdpath = '/etc/init.d/tightvncserver'
      $triggeronstartupexec = 'update-rc.d tightvncserver defaults'
    }
    default: {
      $initdpath = '/etc/init.d/tightvncserver'
      $triggeronstartupexec = 'update-rc.d tightvncserver defaults'
    }
  }
}
