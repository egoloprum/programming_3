# frozen_string_literal: true

require 'minitest/autorun'
require './lab5_1'

# test foo function
class TestFoo < Minitest::Test
  def test_maths
    assert_in_delta 2.2, foo(3), 0.1
    assert_in_delta 3.1, foo(5), 0.1
    assert_in_delta 10.4, foo(21), 0.1
  end
end
