class owncloud::config () {
  
	exec { 'name':
		command      => '/home/osmc/puppet/set-permissions.sh',
		# onlyif			 => TODO: Check Permissions
	}
}