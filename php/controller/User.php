<?php

/**
 * Description of user
 *
 * @author Bill Rocha <prbr@ymail.com at http://billrocha.tk>
 */
class User {

	function __construct(){
        if(o::db(o::db('default'))['password'] == '') go('Admin');
    }
    
    
    function index($id = 0){
        $id = 0 + $id;
        $user = 'Usuário Não existe!';
        if($id > 0) $user = (new Model\User\User())->getUserById ($id);
        else $user = (new Model\User\User())->getAllUsers();
        
        return (new View('user/user'))
                ->assign('content', $user)
                ->render(false);
    }
}
