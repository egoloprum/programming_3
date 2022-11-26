# frozen_string_literal: true

# The object is a car that stores and knows how to display the year of production
# and mileage, and also knows how to determine the average mileage per year.
# The object is a car that stores its number, brand, year of production,
# mileage and last name of the owner and knows how to display these parameters and average mileage on the screen.
# Parent class
class Car
  def initialize(year, mileage)
    @year = year
    @mileage = mileage
  end

  def foo
    @year = 2022 - @year
    (@mileage.to_f / @year).round(2)
  end

  def print
    puts "producted in #{@year}"
    puts "mileage = #{@mileage} in kms"
    puts "per year = #{foo} in kms"
  end
end

# Child class
class Car2 < Car
  def initialize(number, brand, year, mileage, family)
    super(year, mileage)
    @number = number
    @brand = brand
    @family = family
  end

  def print2
    puts "number of car = #{@number}"
    puts "brand of car = #{@brand}"
    puts "family of owner = #{@family}"
  end
end
