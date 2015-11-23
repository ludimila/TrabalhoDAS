#language: pt

Funcionalidade: Ver pets doados
	Para poder ver um pet que esta sendo doado
	Como usuario
	Quero poder acessar lista de pets

	Cenário: Abrir lista de pets 
	Ver lista de pets

	Dado que eu sou doador
	E eu estou logado
	E que eu estou na homepage
	E eu clico no link "Find a pet!"
	Entao vejo o texto "Pets Available" 
