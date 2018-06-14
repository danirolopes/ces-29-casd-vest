<?php
use PHPUnit\Framework\TestCase;
use PHPUnit\DbUnit\TestCaseTrait;

require_once 'models/Service.php';

class Testes_Services extends PHPUnit_Framework_TestCase
{

    public function setUpBeforeClass()
    {
        Service::setTesting();
    }


	public function testServiceConection()
    {

    	$classname = 'Service';

      // Get mock, without the constructor being called
        //$stub = $this->getMockBuilder('Service')->setMethods(array('openDb', 'closeDb'))->getMock();
        //$stub->expects($this->any( ))->method('openDb')->will($this->returnCallback('openDbCallback'));
        //$stub->expects($this->any( ))->method('closeDb')->willReturn(null);

        $serviceClass = $this->getMockClass('Service', array('openDb', 'closeDb'));
        $serviceClass::staticExpects($this->any())->method('openDb')->will($this->returnCallback('openDbCallback'));
        $this->assertEquals(ServiceTest::openDB(), $serviceClass::openDb());
       
    }




    public function testServiceDisconnect()
    {

    //$classname = 'Service';

      // Get mock, without the constructor being called
      //  $stub = $this->getMockBuilder('Service')->setMethods(array('openDb', 'closeDb'))->getMock();
        //$this->assertEquals(null, $stub->openDb());
        $this->assertTrue(true);
       
    }

    public function tearDownAfterClass()
    {
        Service::doneTesting();
    }


}


?>