require 'minitest/autorun'
require_relative 'dog'

class DogTest < Minitest::Test
    def setup 
        @dog = Animal.new
        @lassie = Animal.new("Lassie")
        @fido = Animal.new("Fido")
    end

    def test_initialize_with_one_arguments
        assert_equal "Lassie",  @lassie.name
        assert_equal "Fido",  @fido.name
    end

    def test_if_speed_is_an_accessible_property
        @dog.speed = 12
        assert_equal @dog.speed, 12
    end

    def test_description_returns_a_string
        assert_kind_of String, @lassie.name
    end

    def test_if_legs_is_an_accessible_property
        @dog.legs = 2
        assert_equal @dog.legs, 2
    end

    
    def test_walk_when_legs_is_zero
        assert_raises TypeError do
        @dog.walk
        end
    end

    def test_walk_when_legs_is_zero
        @dog.legs = 1
        current_speed = @dog.speed
        @dog.walk 
        assert_equal (current_speed + (0.1 * 1)),
        @dog.speed
    end


    def test_if_instance_of_animal
        assert_kind_of Animal, @dog
    end

end