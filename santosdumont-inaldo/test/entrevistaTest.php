<?php
use PHPUnit\Framework\TestCase;
use PHPUnit\DbUnit\TestCaseTrait;

require_once 'models/Service.php';

class Testes_Services extends PHPUnit_Framework_TestCase
{

    public static function setUpBeforeClass()
    {
        Service::setTesting();
    }


    public function testAssert()
    {
        $this->assertTrue(true);
    }

    public static function tearDownAfterClass()
    {
        Service::doneTesting();
    }


}


?>