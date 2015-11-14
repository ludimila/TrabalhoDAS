
# This will create a simple pet
FactoryGirl.define do

  factory :pet, class: Animal do
    name "Bacon"
    animalType "India"
    breed "Porco"
    age 2
  end

  factory :dog, class: Animal do
    name "Batatinha"
    animalType "Vira Lata"
    breed "Cachorro"
    age 5
  end
end
