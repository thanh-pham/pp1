class mysql::config {
	file {"/etc/mysql/my.cnf" :
		ensure => present,
		source => "puppet:///modules/mysql/my.cnf",
		owner => "mysql",
		group => "mysql",
		require => Class["mysql::install"],
		notify => Class["mysql::service"],
	}

	file { "/etc/mysql/var":
		group => "mysql",
		owner => "mysql",
		recurse => true,
		require => File["/etc/mysql/my.cnf"], 
	}	
}
