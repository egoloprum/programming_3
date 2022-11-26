# frozen_string_literal: true

# Given an array of dates in ISO format of the form 2009-06-15.
# Convert to string array as June 15, 2009. Use fast algorithms for
# replacing the month number.

require './lab5_2'

puts 'input date in form "2009-06-15" '
arr = gets.split('-').map(&:to_i)
puts foo(arr)
