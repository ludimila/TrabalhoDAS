#language: pt

Funcionalidade: Chat
	Para poder conversar com demais doadores
	Como usuario
	Quero poder ter um canal de comunicação entre os demais membros

	Cenário: Abrir página inicial
	Ver botão de chat

	Dado que eu sou doador
	E eu estou logado
	E que eu estou na homepage
	Entao vejo a mensagem "Chat"


	Cenário: Abrir página inicial
	Ver botão de chat e ao clicar ser redirecionado para página externa

	Dado que eu sou doador
	E eu estou logado
	E que eu estou na homepage
	Entao vejo a mensagem "Chat"
	Entao sou redirecionado para o endereco do chat