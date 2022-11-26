# frozen_string_literal: true

require './lab5_3'

print 'input string = '
str = gets
puts ''
puts "original = #{str}"
str = str.chomp.split(' ')
puts 'input random string'
random = gets.chomp
value = foo(str, random).chomp.split(' ')
puts ''
print "transformed = #{foo_temp(value)}"
