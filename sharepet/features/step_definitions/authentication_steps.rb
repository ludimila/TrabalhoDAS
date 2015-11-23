#encoding utf-8

Dado(/^que eu estou na homepage$/) do
	visit root_path
end

Quando(/^eu clico no link "(.*?)"$/) do |arg1|
 	find(arg1).click_button
end

Entao(/^vejo o texto "(.*?)"$/) do |arg1|
	assert page.has_text?(arg1)
end

Entao(/^eu preencho em "(.*?)" com "(.*?)"$/) do |arg1, arg2|
    fill_in arg1, with: arg2
end

Entao(/^vejo a mensagem "(.*?)"$/) do |arg1|
   page.has_link?(arg1)
end

#cadastro animal

Dado(/^que eu estou na pagina do formulario de cadastro$/) do
	visit "animals/new"
end

Dado(/^clico no botao "(.*?)"$/) do |arg1|
	click_button arg1
end

Entao(/^sou redirecionado para a pagina "(.*?)"$/) do |arg1|
	visit "animals/1"
end


Dado(/^preencho os campos de cadastro$/) do
	assert page.has_text?("name")
	assert page.has_text?("Specie")
	assert page.has_text?("address")
	assert page.has_text?("breed")
end

Dado(/^clico no link "(.*?)"$/) do |arg1|
  pending # express the regexp above with the code you wish you had
end

Entao(/^vejo o formulario de cadastro$/) do
  pending # express the regexp above with the code you wish you had
end

Dado(/^preencho os campos de cadastro$/) do
  pending # express the regexp above with the code you wish you had
end

Entao(/^vejo o perfil do animal$/) do
  pending # express the regexp above with the code you wish you had
end

Dado( /^que eu sou (.*)/ ) do |role|
  if role.eql?( "doador" )
    @user = FactoryGirl.create( :user )
  end
end

E( /^eu estou logado/ ) do
  login_as( @user, scope: :user )
end

E(/^eu clico no botao "(.*?)"$/) do |arg1|
  click_button(arg1)
end