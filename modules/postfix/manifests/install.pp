class postfix::install {
	package {
		["postfix","mailutils"]:
		ensure => present,
	}
}
