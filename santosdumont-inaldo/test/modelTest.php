<?php


class modelTest extends PHPUnit_Framework_TestCase
{
    public function testOne()
    {
        $this->assertTrue(true);
    }




    public function testPushAndPop()
    {
        $stack = [];
        $this->assertSame(0, count($stack));

        array_push($stack, 'foo');
        $this->assertSame('foo', $stack[count($stack)-1]);
        $this->assertSame(1, count($stack));

        $this->assertSame('foo', array_pop($stack));
        $this->assertSame(0, count($stack));
    }

    
	public function testProducerFirst()
    {
        $this->assertTrue(true);
        return 'first';
    }

    public function testProducerSecond()
    {
        $this->assertTrue(true);
        return 'second';
    }

    /**
     * @depends testProducerFirst
     * @depends testProducerSecond
     */
    public function testConsumer($a, $b)
    {
        $this->assertSame('first', $a);
        $this->assertSame('second', $b);
    }

public function testEquality()
    {
        $this->assertEquals(
            [1, 2, 3, 4, 5, 6],
            ['1', 2, 3, 4, 5, 6]
        );
    }

public function testTwo()
    {
        $this->assertTrue(true);
    }

    public function testThree()
    {
        $this->assertTrue(true);
    }






	public function TestServiceConection()
    {

    $classname = 'Service';

      // Get mock, without the constructor being called
        $stub = $this->createMock(Service::class);
        $stub->method('openDb')->willReturn(Testes_Services::getConnection);
        $this->assertEquals(Testes_Services::getConnection, $stub->openDb());
       
    }




    public function TestServiceDisconnect()
    {

    $classname = 'Service';

      // Get mock, without the constructor being called
        $stub = $this->createMock(Service::class);
        $stub->method('closeDb')->willReturn(null);
        $this->assertEquals(null, $stub->openDb());
       
    }









	

}



?>