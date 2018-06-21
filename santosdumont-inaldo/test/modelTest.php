<?php


class modelTest extends PHPUnit_Framework_TestCase
{
    public static function setUpBeforeClass()
    {
        Service::setTesting();
        Service::setUpDefaultTestDB();
    }



    public function testLoginAdminSucess()
    {
        $_POST = array(
            'username' => 'admin',
            'password' => 'root');

        require_once 'models/admin_model.php';

        $model = new Admin_Model();

        $login = $model->login();

        $this->assertTrue($login);

        $_POST = array();
    }

    public function testLoginAdminFailedUsername()
    {
        $_POST = array(
            'username' => 'daniel',
            'password' => 'root');

        require_once 'models/admin_model.php';

        $model = new Admin_Model();

        $login = $model->login();

        $this->assertFalse($login);

        $_POST = array();
    }

    public function testLoginAdminFailedPassword()
    {
        $_POST = array(
            'username' => 'admin',
            'password' => 'daniel');

        require_once 'models/admin_model.php';

        $model = new Admin_Model();

        $login = $model->login();

        $this->assertFalse($login);

        $_POST = array();
    }

    public function testLoginAdminFailedUsernameAndPassword()
    {
        $_POST = array(
            'username' => 'daniel',
            'password' => '123456');

        require_once 'models/admin_model.php';

        $model = new Admin_Model();

        $login = $model->login();

        $this->assertFalse($login);

        $_POST = array();
    }


    public function testLoginAssistenteSucess()
    {
        $_POST = array(
            'username' => 'assistente',
            'password' => '123456');

        require_once 'models/assistente_model.php';

        $model = new Assistente_Model();

        $login = $model->login();

        $this->assertTrue($login);

        $_POST = array();
    }

    public function testLoginAssistenteFailedUsername()
    {
        $_POST = array(
            'username' => 'daniel',
            'password' => '123456');

        require_once 'models/assistente_model.php';

        $model = new Assistente_Model();

        $login = $model->login();

        $this->assertFalse($login);

        $_POST = array();
    }

    public function testLoginAssistenteFailedPassword()
    {
        $_POST = array(
            'username' => 'assistente',
            'password' => 'daniel');

        require_once 'models/assistente_model.php';

        $model = new Assistente_Model();

        $login = $model->login();

        $this->assertFalse($login);

        $_POST = array();
    }

    public function testLoginAssistenteFailedUsernameAndPassword()
    {
        $_POST = array(
            'username' => 'daniel',
            'password' => 'daniel');

        require_once 'models/assistente_model.php';

        $model = new Assistente_Model();

        $login = $model->login();

        $this->assertFalse($login);

        $_POST = array();
    }


    public function testLoginEntrevistaSucess()
    {
        $_POST = array(
            'cpf' => '06256573650',
            'nascimento' => '17/04/1997');

        require_once 'models/entrevista_model.php';

        $model = new Entrevista_Model();

        $login = $model->login(1);

        $this->assertTrue($login);

        $_POST = array();
    }

    public function testLoginEntrevistaFailedCPF()
    {
        $_POST = array(
            'cpf' => '12345678910',
            'nascimento' => '17/04/1997');

        require_once 'models/entrevista_model.php';

        $model = new Entrevista_Model();

        $login = $model->login(1);

        $this->assertFalse($login);

        $_POST = array();
    }

    public function testLoginEntrevistaFailedNascimento()
    {
        $_POST = array(
            'cpf' => '06256573650',
            'nascimento' => '16/05/1997');

        require_once 'models/entrevista_model.php';

        $model = new Entrevista_Model();

        $login = $model->login(1);

        $this->assertFalse($login);

        $_POST = array();
    }

    public function testLoginEntrevistaFailedID1()
    {
        $_POST = array(
            'cpf' => '06256573650',
            'nascimento' => '17/04/1997');

        require_once 'models/entrevista_model.php';

        $model = new Entrevista_Model();

        $login = $model->login(2);

        $this->assertFalse($login);

        $_POST = array();
    }

    public function testLoginEntrevistaFailedID2()
    {
        $_POST = array(
            'cpf' => '06256573650',
            'nascimento' => '17/04/1997');

        require_once 'models/entrevista_model.php';

        $model = new Entrevista_Model();

        $login = $model->login(3);

        $this->assertFalse($login);

        $_POST = array();
    }

    public function testLoginEntrevistaFailedNotaVestibulinho()
    {
        $_POST = array(
            'cpf' => '12345678910',
            'nascimento' => '17/04/1997');

        require_once 'models/entrevista_model.php';

        $model = new Entrevista_Model();

        $login = $model->login(2);

        $this->assertFalse($login);

        $_POST = array();
    }

     public function testLoginEntrevistaFailedNotaVestibulinhoAndCPF()
    {
        $_POST = array(
            'cpf' => '0000000001',
            'nascimento' => '17/04/1997');

        require_once 'models/entrevista_model.php';

        $model = new Entrevista_Model();

        $login = $model->login(2);

        $this->assertFalse($login);

        $_POST = array();
    }


     public function testLoginEntrevistaFailedNotaVestibulinhoAndNascimento()
    {
        $_POST = array(
            'cpf' => '12345678910',
            'nascimento' => '16/05/1997');

        require_once 'models/entrevista_model.php';

        $model = new Entrevista_Model();

        $login = $model->login(2);

        $this->assertFalse($login);

        $_POST = array();
    }


    public function testAdminUploadResultadoVestibulinho()
    {
        $csvResult = array(
            array('id' => 17041998,
                'nota' => 1)
            );

        require_once 'models/admin_model.php';

        $model = new Admin_Model();

        $sucessful = $model->uploadCSVtoDBCasd($csvResult);

        $this->assertTrue($sucessful);
    }


	
    public static function tearDownAfterClass()
    {
        Service::doneTesting();
    }

}



?>