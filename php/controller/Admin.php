<?php

/**
 * Description of admin
 * TODO ALL!
 *
 * @author Bill
 */
class Admin {
    
    
    function index(){
        
        /*
         * TODO: checar se o usuário está logado (SESSION = on)
         */
        
        //check for install
        if(o::db(o::db('default'))['password'] == '') return $this->install();

        if(isset($_POST['login']) && isset($_POST['passwd'])){
            if((new Model\User\User())->login($_POST['login'], $_POST['passwd']))
                go('admin/page');
            else return (new View('admin/login'))->assign('info','Digite um Login e Senha válidos!')->render(false);
        }        
        return (new View('admin/login'))->render(false);
    }
    
    
    function page(){
        session_start();
        $_SESSION['app'] = 'lucas';
        p($_SESSION);
    }


    function install(){
        return 'TODO: Start install!!!';
    }
    
    
}
