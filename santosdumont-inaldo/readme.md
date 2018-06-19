#Source Code

Pastas: 

/contollers - Cont�m os controllers do projeto. 
/css -  Cont�m os arquivos de estilo .css do projeto. 
/files - Cont�m os arquivos que ser�o usados para download e upload do projeto. 
/font-awesome
/fonts
/images
/js - Cont�m os arquivos de estilo .js do projeto. 
/libs - Cont�m os plugins utilizados no projeto (swiftMailer e Bcrypt), al�m das classes pai Controller, Model etc. 
/logs - Cont�m os logs php e pdo do projeto. 
/models - Cont�m os models do projeto. 
/test - Cont�m os arquivos de teste phpunit do projeto. 
/views - Cont�m os arquivos de renderiza��o .html do projeto. 


/vendor - cont�m as depend�ncias do projeto (como o phpunit), pasta criada pelo composer

/config - Cont�m arquivos com vari�veis de depend�ncia global do projeto, como: PATHS, DATABASES e CONSTANTS. Tamb�m cont�m arquivo .xml respons�vel pela cria��o autom�tica de DB ao instalar o projeto.
	Altere somente aqui para mudar configura��o, como nome da pasta do arquivo, nome de DB, e etc.

Arquivos globais:

.htaccess e web.config - N�O MEXER. Arquivos usado pelo Apache para sua configura��o
index.php - Arquivo que recebe a requisi��o e a redireciona, seguindo os padr�es de um projeto MVP.
	Alterar a vari�vel ENVOIRIMENT caso se mude de localhost para production server
composer.json - Arquivo usado pelo composer para gerenciar depend�ncias do projeto. S� mexer caso queira se adicionar/remover depend�ncias
phpunit.mxl - Arquivo respons�vel por dizer onde os testes est�o (No projeto, est�o na pasta /test).


