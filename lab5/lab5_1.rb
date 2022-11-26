# frozen_string_literal: true

# solve function

def foo(x_get)
  if x_get <= 2
    puts 'can not be divided by x'
    raise StandardError
  else
    Math.log((x_get**2 * Math.exp(x_get) / (x_get - 2)), 10)
  end
end
