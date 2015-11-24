#language: pt


Funcionalidade: Doar pet
    Para poder doar um animal 
    Como usuario
    Quero poder cadastra-lo antes

    Cenário: Cadastrar novo animal
    Ao preencher informações do novo animal e salvá-las, um     novo animal é cadastrado.

    Dado que eu estou na pagina do formulario de cadastro
    E clico no botao "Submit"
    Entao sou redirecionado para a pagina "/animals/1"