<?php

/**
 * TODO ALL!
 *
 */

class FileManager {

	function __construct(){
        if(o::db(o::db('default'))['password'] == '') go('Admin');
    }
	

	function index(){
		echo __CLASS__;
		exit();

	}

}