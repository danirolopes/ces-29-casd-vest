<?php

class Service {

    private static $connection;

    private static $testConnection;    

    private static $isTesting = false;

    /**
     * Opens connection with the database.
     *
     * @return connection       connection with the database.
     */ 
    public static function openDb() {

        $isDBInstalled = simplexml_load_file(DOCUMENT_ROOT.'config/install_variables.xml');

        if($isDBInstalled->DB_installed == "false")
        {
            try {
                self::setupDB();

                $isDBInstalled->DB_installed = "true";
                $isDBInstalled->asXML(DOCUMENT_ROOT.'config/install_variables.xml');

            } catch (Exception $e) {
                throw $e;
            }
        }


        if(Service::$isTesting === false)
        {
            Service::$connection = new PDO("mysql:host=".DB_HOST.";dbname=".DB_NAME, DB_USER, DB_PWD);
            if (!Service::$connection) throw new Exception("Connection to the database server failed!");
            Service::$connection->query("SET NAMES 'utf8mb4'");
            Service::$connection->query('SET character_set_connection=utf8mb4');
            Service::$connection->query('SET character_set_client=utf8mb4');
            Service::$connection->query('SET character_set_results=utf8mb4');
            Service::$connection->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
            return Service::$connection;
        }
        else
        {
            Service::$testConnection = new PDO("mysql:host=".DB_HOST.";dbname=".DB_NAME.'_test', DB_USER, DB_PWD);
            if (!Service::$testConnection) throw new Exception("Connection to the test database server failed!");
            Service::$testConnection->query("SET NAMES 'utf8mb4'");
            Service::$testConnection->query('SET character_set_connection=utf8mb4');
            Service::$testConnection->query('SET character_set_client=utf8mb4');
            Service::$testConnection->query('SET character_set_results=utf8mb4');
            Service::$testConnection->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

            $tables = Service::$testConnection->prepare('SHOW TABLES');
            $tables->execute();
            foreach($tables->fetchAll(\PDO::FETCH_COLUMN) as $table)
            {
                Service::$testConnection->query('TRUNCATE TABLE `' . $table . '`')->execute();
            }
            return Service::$testConnection;
        }
    }


    /**
     * Closes connection by setting it to null.
     */ 
    public static function closeDb() {
        Service::$connection = null;
    }

    public static function setTesting()
    {
        Service::$isTesting = true;
    }
    
    public static function doneTesting()
    {
        Service::$isTesting = false;
    }

    private static function setupDB()
    {
        try {
            $setUpDBConnection = new PDO("mysql:host=".DB_HOST, DB_USER, DB_PWD);
            if (!$setUpDBConnection) throw new Exception("Connection to database server failed!");

            $stmt = $setUpDBConnection->prepare("CREATE DATABASE ".DB_NAME."; CREATE DATABASE ".DB_NAME."_test;");
            $stmt->execute();

            $setUpDBConnection = null;
            $setUpDBConnection = new PDO("mysql:host=".DB_HOST.";dbname=".DB_NAME, DB_USER, DB_PWD);
            if (!$setUpDBConnection) throw new Exception("Connection to database server failed!");


            $sql = file_get_contents(DOCUMENT_ROOT.'config/santosdumont.sql');
             $stmt = $setUpDBConnection->prepare($sql);
             $stmt->execute();

            $setUpDBConnection = null;
            $setUpDBConnection = new PDO("mysql:host=".DB_HOST.";dbname=".DB_NAME.'_test', DB_USER, DB_PWD);
            if (!$setUpDBConnection) throw new Exception("Connection to database server failed!");

             $stmt = $setUpDBConnection->prepare($sql);
             $stmt->execute();
        }


        catch(PDOException $e)
        {
            throw new Exception("Creating to DB failed");
        }
        
    }
}

?>
