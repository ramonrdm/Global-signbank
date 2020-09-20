SIGNBANK BRASIL

Como rodar:

Criar uma cópia do .env.template e nomea-lo .env
Adicionar o host que está no FRONTEND_HOST do arquivo .env no seu arquivo .hosts
Certificar-se que não existe uma instância de mysql rodando (que ocupe a porta 3306 - sudo service mysql stop para parar no linux)
Executar o comando make run

Para criar um superusuario make admin

