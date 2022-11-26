# frozen_string_literal: true

require 'date'

def foo(arr)
  Date.new(*arr.map.to_a(&:to_i)).strftime('%d %B %Y')
end
