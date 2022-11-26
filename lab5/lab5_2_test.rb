# frozen_string_literal: true

require 'minitest/autorun'
require './lab5_2'
require 'date'
# TestFoo
class TestFoo < Minitest::Test
  def test_str
    x = rand(0..2022)
    y = rand(1..12)
    z = rand(1..31)
    str = "#{x}-#{y}-#{z}"
    p str
    str = str.split('-').map(&:to_i)
    p foo(str)
    assert_equal Date.new(*str.map.to_a(&:to_i)).strftime('%d %B %Y'), foo(str)
  end
end
