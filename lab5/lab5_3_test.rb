# frozen_string_literal: true

require 'minitest/autorun'
require './lab5_3'
# Testfoo
class TestFoo < Minitest::Test
  def generate_code
    charset = Array('l'..'n')
    "#{Array.new(5) { charset.sample }.join} "
  end

  def generate_str
    str = ''
    (1..rand(3..7)).each do
      str += generate_code
    end
    str
  end
  
  def generate_rand
    charset = Array('a'..'c')
    "#{Array.new(5) { charset.sample }.join} "
  end

  def test_str
    random = generate_rand.chomp
    str = generate_str.chomp.split(' ')
    value = foo(str, random).chomp.split(' ')
    puts "input = #{str}"
    puts "random = #{random}"
    assert_equal foo_temp(value), foo_v(value)
    puts "result = #{foo_temp(value)}"
  end
end
