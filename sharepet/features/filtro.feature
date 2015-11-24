#language: pt

Funcionalidade: Filtrar pets por raca
	Para poder ver um pet por raca
	Como usuario
	Quero poder filtrar por raca

	Cenário: buscar pets por raca 
	Ver lista de pets

	Dado que eu sou usuario
	E eu estou logado
	E que eu estou na pagina de animais
	E preencho o campo "by_breed" com "vira lata"
	Entao sou redirecionado para pagina com o filtro
