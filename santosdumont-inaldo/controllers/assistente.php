<?php

class Assistente extends Controller
{
	
	function __construct()
	{
		parent::__construct();
		$this->view->controller = 'assistente';	
	}


	function index()
	{
		Session::init();
		if(!Session::get('logged_assistente'))
		{
			Session::destroy();
			Controller::redirect(ASSISTENTE_LOGIN_LINK);
		}

		if($_SERVER['REQUEST_METHOD'] == 'POST')
		{
			if(isset($_POST['form-add-entrevista-submitted']))
			{
				$this->model->addColunaTabela($_POST['campo'], $_POST['tipo']);
			}
			if(isset($_POST['form-delete-entrevista-submitted']))
			{
				$this->model->deleteColunaTabela($_POST['submit']);
			}
		}


		$this->view->tableInfo = $this->model->getColunasTabela();
		
		$this->view->controller = 'assistente';

		$this->view->render('assistente/index', false, true);
	}


	function login()
	{
		Session::init();

		if (Session::get('logged_assistente'))
		{
			Controller::redirect(ASSISTENTE_INDEX_LINK);
		}

		if (!Session::get('token-assistente-login'))
		{    
			Session::set('token-assistente-login', md5(uniqid(rand(), TRUE)));
		}

		if($_SERVER['REQUEST_METHOD'] == 'POST')
		{
			if($_POST['token-assistente-login'] == Session::get('token-assistente-login'))
			{
				$login = $this->model->login();

				if($login)
				{
					Session::change_id();
					Session::set('logged_assistente', true);

					Controller::redirect(ASSISTENTE_INDEX_LINK);
				}
			}
		}

		$this->view->controller = 'assistente-login';
		$this->view->render('assistente/login', true);
	}

	function info()
	{
		Session::init();
		if(!Session::get('logged_assistente'))
		{
			Session::destroy();
			Controller::redirect(ASSISTENTE_LOGIN_LINK);
		}

		$this->view->tableHeader = $this->model->getColunasTabela();
		$this->view->tableBody = $this->model->getAllEntrevistas();

		$this->view->controller = 'assistente';

		$this->view->render('assistente/info', false, true);
	}

	function candidato()
	{
		Session::init();
		if(!Session::get('logged_assistente'))
		{
			Session::destroy();
			Controller::redirect(ASSISTENTE_LOGIN_LINK);
		}

		$this->view->colunas = $this->model->getColunasTabela();
		$this->view->entrevistas = $this->model->getAllEntrevistas();

		if(isset($_POST['get_candidato']))
		{
			$this->view->candidato = $_POST['get_candidato'];
		}

		$this->view->controller = 'assistente';
		$this->view->render('assistente/candidato', false, true);
	}


	function logout()
	{
		Session::init();
		Session::destroy();
		Controller::redirect(INDEX_LINK);
		exit();
	}


}
?>