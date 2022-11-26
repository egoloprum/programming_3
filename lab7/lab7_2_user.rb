# frozen_string_literal: true

require './lab7_2'

year = 2001
mileage = 200_100
car_obj = Car.new(year, mileage)
puts 'data of first car:'
car_obj.print

puts ''

number = '1234CALI'
brand = 'toyota'
year = 2002
mileage = 100_000
family = 'Anton'
car2_obj = Car2.new(number, brand, year, mileage, family)
puts 'data of second car:'
car2_obj.print2
car2_obj.print
