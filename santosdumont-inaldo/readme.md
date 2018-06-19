# Source Code

-----------------------------------------------------------------------

# Pastas: 

	/contollers - Contém os controllers do projeto. 

	/css -  Contém os arquivos de estilo .css do projeto. 

	/files - Contém os arquivos que serão usados para download e upload do projeto. 

	/font-awesome

	/fonts

	/images

	/js - Contém os arquivos de estilo .js do projeto. 

	/libs - Contém os plugins utilizados no projeto (swiftMailer e Bcrypt), além das classes pai Controller, Model etc. 

	/logs - Contém os logs php e pdo do projeto.

	/models - Contém os models do projeto. 

	/test - Contém os arquivos de teste phpunit do projeto. 

	/views - Contém os arquivos de renderização .html do projeto. 



	/vendor - contém as dependências do projeto (como o phpunit), pasta criada pelo composer


	/config - Contém arquivos com variáveis de dependência global do projeto, como: PATHS, DATABASES e CONSTANTS. Também contém arquivo .xml responsável pela criação automática de DB ao instalar o projeto.
		Altere somente aqui para mudar configuração, como nome da pasta do arquivo, nome de DB, e etc.



# Arquivos globais:


	.htaccess e web.config - NÃO MEXER. Arquivos usado pelo Apache para sua configuração
	
	index.php - Arquivo que recebe a requisição e a redireciona, seguindo os padrões de um projeto MVP.
		Alterar a variável ENVOIRIMENT caso se mude de localhost para production server

	composer.json - Arquivo usado pelo composer para gerenciar dependências do projeto. Só mexer caso queira se adicionar/remover dependências

	phpunit.mxl - Arquivo responsável por dizer onde os testes estão (No projeto, estão na pasta /test).


