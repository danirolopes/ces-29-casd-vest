<?php

define('ENVIRONMENT', 0);


require_once 'libs/Controller.php';
require_once 'libs/Model.php';
require_once 'libs/View.php';
require_once 'libs/Session.php';


require_once 'config/paths.php';
require_once 'config/database.php';
require_once 'config/constants.php';


require_once 'controllers/entrevista.php';




class testController extends PHPUnit_Framework_TestCase
{

	private static $controller;

	public static function  setUpBeforeClass()
	{

    	self::$controller = new Entrevista();

	}

    public function testconstruct()
    {
    	$this->assertNotEquals(null, self::$controller);

       }




    public function testcontruct_session()
    {
    	$session=new Session();
        $this->assertNotEquals(null, $session);

    }



    public function testSetKey()
    {
    	$session=new Session();
        $session->set(1,1);
        $this->assertEquals(1,$session->get(1));

    }


     public function testview()
     {
		$this->assertEquals('entrevista',self::$controller->view->controller);
		
     }

}
?>