#language: pt

<<<<<<< HEAD
Funcionalidade: Login
	Para poder ter acesso a aplicacao 
	Como usuario
	Quero estar logado

Cenario: Visualizar pagina de login

	Dado que eu estou na pagina inicial
	Quando clico no botao "Login"
	Entao vou para a pagina de login
=======
Funcionalidade: Fazer login
	Para poder acessar o sistema
	Como usuario
	Quero poder fazer login

	Background: user in database

	Given the following user exists:
	| username | name | email | password | 
 	| user | System User | user@gmail.com | user123 |

	Cenário: Realizar login
	Ver página de usuário logado

	Dado que eu estou na homepage
    	Quando eu clico no link "Login"
    	Entao vejo o texto "Log in" 
    	E eu preencho em "Username" with "user"
		E eu preencho em "Password" with "user123"
		E clico no botao "Log in"
		Entao vejo a mensagem "Welcome, System user"
>>>>>>> b6638b529d5ccafe01ce209d406eb3ab87eddc26
