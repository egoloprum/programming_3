# frozen_string_literal: true

require 'minitest/autorun'
require './lab7_1'
# TestFoo
class TestFoo < Minitest::Test
  def test_f_file
    create_f_file
    refute_nil('F.txt')
    puts 'F.txt file created successfully'
  end

  def test_g_file
    create_g_file
    refute_nil('G.txt')
    puts 'G.txt file created successfully'
  end

  def test_transfer
    create_f_file
    transfer_data
    file = File.open('G.txt', 'r')
    line = file.read.split(' ')
    refute_equal(generate_str, line)
    puts 'F.txt and G.txt dont have same values'
  end
end
