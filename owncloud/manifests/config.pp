class owncloud::config () {
  
	exec { 'name':
		command      => 'set-permissions.sh',
		onlyif			 => TODO: Check Permissions
	}
}