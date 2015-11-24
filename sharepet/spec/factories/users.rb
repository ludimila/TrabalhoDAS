
# This will create a simple user
FactoryGirl.define do

  factory :user, class: User do
    name "Doador"
    password "safepass"
    email "mail@mail.mail"
    address "Gama"
  end

end
