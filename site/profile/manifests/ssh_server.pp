class profile::ssh_server {
	package {'openssh-server':
		ensure	=> present,
	}
	service { 'sshd':
		ensure	=> 'running',
		enable	=> 'true',
	}
	ssh_authorized_key { 'root@master.puppet.vm':
		ensure	=> present,
		user	=> 'root',
		type	=> 'ssh-rsa',
		key	=> 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDTj6SfAfef4oZSF73JokLKyn7r0L6Z0lZFGqsPcZuNe+CoG6bb+U1fRlaC1u9njvMEr8/orhves8ri7YG7VYKOI6SxruvI0feXqR5dY71HTXhMQqpqS56BUlNx2DWxDB1RB7QcQESYnwVxq+bQp7rAIc7sUZJftQzKR7VyLr44Ybw2eF7W70e/cEBOWDArKVTyjnULN1fE0TG3g6SDeSdZKtQUWHbs/2D6XzbTZXZM9neK0ZVcNvmFdeht16tBUpNPvkQ9OItEB9DZ1xRWP9L5kXwNn0E7AEtcprP0P1xv9DDmnmcnrTFdJUEKrYMaFF4eFO5CO36iSFl4ebKmyHEf',
	}
}
