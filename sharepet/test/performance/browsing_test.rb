require 'test_helper'
require 'rails/performance_test_help'

class BrowsingTest < ActionDispatch::PerformanceTest
  # Refer to the documentation for all available options
  self.profile_options = { :runs => 10, :metrics => [:wall_time, :memory],
                           :formats => [:flat] }

  def test_homepage
    get '/'
  end

  def test_animals
    get '/animals'
  end

  def test_animals
    get '/animals?by_breed=oink'
  end

  def test_animals
    get '/animals?by_breed=cachorro'
  end

end
