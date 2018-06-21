<?php

require_once 'libs/bcrypt/bcrypt.php';

class Assistente_Model extends Model
{
	
	function __construct()
	{
		parent::__construct();
	}

	public function login()
	{
		try {
            $connection = Service::openDb();
            $stmt = $connection->prepare("SELECT id, password FROM user WHERE username = :username AND role = :role");
            
            $stmt->execute(array(
            	':username' => $this->test_input_login($_POST['username']),
                ':role' =>ASSISTENTE)
            );

            $count = $stmt->rowCount();

            if($count == 1)
            {
            	$user = $stmt->fetch();

            	if(Bcrypt::check($this->test_input_login($_POST['password']), $user['password']))
				{
					return true;
				}
            }

            return false;


        } catch (PDOException $e) {
            $this->writeLog($e->getMessage());
            return false;
        } finally{
            Service::closeDb();
        }
	}


    public function getColunasTabela()
    {
        try {
            $connection = Service::openDb();
            $stmt = $connection->prepare("SHOW columns FROM entrevista_casd_".strval(date('Y')+1));
            
            $stmt->execute();

            $arrayTable =  $stmt->fetchAll();
            $arrayResult = array();

            foreach ($arrayTable as $value) {
                if($value['Field'] == 'id' || $value['Field'] == 'id_user')
                    continue;
                $arrayResult[] = array('campo' => $value['Field'],
                'tipo' => $value['Type']);
            }

            return $arrayResult;


        } catch (PDOException $e) {
            $this->writeLog($e->getMessage());
            return false;
        } finally{
            Service::closeDb();
        }   
    }


    public function addColunaTabela($columnName, $columnType)
    {
        try {
            $connection = Service::openDb();
            $stmt = $connection->prepare("ALTER TABLE entrevista_casd_".strval(date('Y')+1)." ADD COLUMN ".$columnName." ".($columnType));
            
            $stmt->execute();

            return true;

        } catch (PDOException $e) {
            $this->writeLog($e->getMessage());
            return false;
        } finally{
            Service::closeDb();
        } 
    }

    public function deleteColunaTabela($columnName)
    {
        try {
            $connection = Service::openDb();
            $stmt = $connection->prepare("ALTER TABLE entrevista_casd_".strval(date('Y')+1)." DROP COLUMN ".$columnName);
            
            $stmt->execute();

            return true;


        } catch (PDOException $e) {
            $this->writeLog($e->getMessage());
            return false;
        } finally{
            Service::closeDb();
        } 
    }


    public function getAllEntrevistas()
    {
        try
        {
            $connection = Service::openDb();

            $stmt = $connection->prepare("SELECT * FROM entrevista_casd_".strval(date('Y')+1));
            $stmt->execute();
            $result = $stmt->fetchAll();

            foreach ($result as $index => $linha) {
                $stmt = $connection->prepare("SELECT nome, sobrenome FROM vestibulinho_casd_".strval(date('Y')+1)." WHERE id = :id");
                $stmt->execute(array(":id" => $linha['id_user']));
                $nome = $stmt->fetch();

                $result[$index]['nome'] = $nome['nome']." ".$nome['sobrenome'];
            }

            return $result;

        } catch (PDOException $e)
        {
            $this->writeLog($e->getMessage());
            return false;
        } finally{
            Service::closeDb();
        } 
    }
}

?>