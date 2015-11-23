#language: pt


Funcionalidade: Doar pet
	Para poder doar um animal 
	Como usuario
	Quero poder cadastra-lo antes

	Cenário: Cadastrar novo animal
	Ao preencher informações do novo animal e salvá-las, um 	novo animal é cadastrado.

	Dado que eu estou na pagina do formulario de cadastro
	E eu preencho em "Name" com "mimosa"
	E eu preencho em "Address" com "Brasilia"
	E eu preencho em "Breed" com "Nelore"
	E eu preencho em "Age" com "12"
	E eu clico no botao "Submit"
	Entao vejo a mensagem "Pet was successfully created."
