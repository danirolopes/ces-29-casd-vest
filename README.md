# ces-29-casd-vest
Projeto matéria CES-29 - Entrevista de renda CASD Vest

Para rodar:

 1- Instalar Xampp (https://www.apachefriends.org/pt_br/index.html);
 
	Obs: Cuidado com a instalação. No Windows, instale na pasta C:/xampp. Instalar na pasta C:/ProgramFiles/xampp causa erro de permissão
	
 2- Baixe esse repositório e o coloque a pasta santosdumont-inaldo dentro de C:/xampp/htdocs
 
 3- Ligue o Xampp, inicializando o Apache e o MySQL. 
 
	Obs: Outros arquivos que usam a porta 80 podem conflitar com o programa (Ex.: Skype aberto)
	
 4- Acesse em http://localhost/santosdumont-inaldo
 
	Obs: A primeira requisição pode demorar, pois ocorrerá uma instalação automática do banco de dados
	
 5- PRONTO!
 
 
 
 PARA TESTES:
 
 1- Abrir o prompt de comando na pasta C:/xampp/htdocs/santosdumont-inaldo
 
 2- Rodar com "vendor/bin/phpunit"
