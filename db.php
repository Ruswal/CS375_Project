<?php

	$db_host = "project-db-instance.cp5ha3dp0dsm.ca-central-1.rds.amazonaws.com";
	$db_user = "root";
	$db_pwd = "375Admin";
	$db_db = "eCom";
	$chars = "utf8mb4";
	$attr = "mysql:host=$db_host;dbname=$db_db;charset = $chars";
	$opts =[
		PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION,
		PDO::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_ASSOC,
		PDO::ATTR_EMULATE_PREPARES => false
	];

?>