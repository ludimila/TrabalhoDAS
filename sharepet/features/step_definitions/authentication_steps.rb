#encoding utf-8

Dado(/^que eu estou na homepage$/) do
	visit root_path
end

Quando(/^eu clico no link "(.*?)"$/) do |arg1|
	click_link arg1
end

Entao(/^vejo o texto "(.*?)"$/) do |arg1|
	assert page.has_text?("Pets Available")
end
