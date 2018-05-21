<?php

class Main_Controller extends Controller
{
	
	function __construct()
	{
	}

	public function handleRequest()
	{
		$this->urlDismember();

		$this->handleUrl();	
	}
	
	private function urlDismember()
	{
		if (!(isset($_GET['url'])))
		{
			$this->url[0] = 'index';
		}
		else
		{
			$this->url = $_GET['url'];
			$this->url = rtrim($this->url, '/');
			$this->url = explode('/', $this->url);

			//Padronização de nome de páginas
			if(preg_match('/[A-Z]/', $this->url[0]))
			{
				Controller::redirect(strtolower($_GET['url']));
			}
	
		
			if($this->url[0] == 'index')
			{
				Controller::redirect(URL);
			}

		}
	}



	private function handleUrl()
	{
		//Caso pag profs
		if ($this->url[0][0] == '~')
		{
			$file =  'controllers/professor_page.php';
			require_once $file;

			$professor = ltrim($this->url[0], '~');
			$controller = new Professor_Page($professor);

			//calling methods
			$this->callMethod($controller);
		
		}

		//Caso normal
		else
		{
			$file =  'controllers/'.$this->url[0].'.php';
			if (!file_exists($file))
			{
				$this->error();
			}
			else
			{
				require_once $file;
				$controller = new $this->url[0];

				// calling methods
				$this->callMethod($controller);
				
			}
		}	
	}


	private function callMethod($controller)
	{
		if (isset($this->url[2])) {
			if (method_exists($controller, $this->url[1])) {
				$controller->{$this->url[1]}($this->url[2]);
			} else {
				$this->error();
			}
		}
		else 
		{
			if (isset($this->url[1])) 
			{
				if (method_exists($controller, $this->url[1])) 
				{
					$controller->{$this->url[1]}();
				}
				else 
				{
				$this->error();
				}
			}
			else 
			{
				if (method_exists($controller, 'index'))
				{
					$controller->index();
				}
				else
				{

					$this->error();
				}
			}
		}
	}

	function error()
	{
		require_once 'controllers/error.php';
		$controller = new Error();
		$controller->index();
		return false;
	}

}

?>