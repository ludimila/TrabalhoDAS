require 'test_helper'

class AnimalTest < ActiveSupport::TestCase
  test "has animals" do
  	animal =  Animal.all
    assert_not_empty( animal, "Has some animals here" )
  end

  test "animals shows" do
  	animal = Animal.all[0]
  	assert_equal(animal.name,"Toicinho")
  end
end
