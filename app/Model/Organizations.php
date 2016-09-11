<?php

class Organizations extends AppModel {
	
	var $useTable = 'organizations';
	
	function authenticateUser( $email ) {
	
		$SQL = "SELECT
			        *
	       		FROM
	                organizations c
	       		WHERE
	       			lower(email) LIKE '" . strtolower( $email ) . "'";
		
		return Hash::combine($this->query($SQL), '{n}.{s}.id', '{n}.{s}');
	
	}
	
}

?>