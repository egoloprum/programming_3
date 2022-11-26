# frozen_string_literal: true

require 'minitest/autorun'
require './lab7_2'
# test if class has child class
class TestChild < Minitest::Test
  def test_child
    refute_nil(Car >= Car2)
  end
end

# test if class has parent class
class TestParent < Minitest::Test
  def test_parent
    refute_nil(Car2 < Car)
  end
end
