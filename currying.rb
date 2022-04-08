require 'byebug'

def multiply(a, b)
  a + b
end

def pair_sum(a, b)
  return a + b
end

def sum(a, *b)
  a + b.inject(0) { |a, b| a + b}
end
debugger
sum(2,4,5)

pair_sum(a, pair_sum(b, pair_sum(c, d)))

pair_sum(1,2,3,4)
sum_10_elements = method(:sum).curry(10)


debugger

X = "===================="