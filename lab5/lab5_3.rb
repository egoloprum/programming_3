# frozen_string_literal: false

# lab 5

def foo(str, random)
  temp = ''
  str.each_with_index.map do |word, i|
    temp << if word[0] == 'n' && i.odd?
              "#{random} "
            else
              "#{word} "
            end
  end
  temp
end

def foo_v(value)
  temp = ''
  value.each_with_index.map do |word, i|
    if word[0] == 'l' && i.even?
      temp << "#{word} "
    elsif word[0] != 'l'
      temp << "#{word} "
    end
  end
  temp
end

def foo_temp(value)
  foo_v(value)
end
